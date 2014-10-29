package austin.acc.mainproject.managers;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.sql.DataSource;

import austin.acc.mainproject.domain.Users;

	
	public class UsersManager {
		DataSource ds;
		
		public UsersManager(DataSource ds) {
			this.ds = ds;
		}
		
		public ArrayList<Users> getUsers() {
			ArrayList<Users> users = new ArrayList<>();
			
			try {
				Connection connection;
				connection = ds.getConnection();
				Statement statement = connection.createStatement();
				ResultSet resultSet = statement.executeQuery("select id, username, password from users");
				
				while (resultSet.next()) {
					users.add(new Users(resultSet.getInt("id"),
										resultSet.getString("username"), 
										resultSet.getString("password")));
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			return users;
		}
		
		public boolean addUser(Users aUser)  {
		
			boolean added = false;
			try {
				Connection connection;
				connection = ds.getConnection();

				String uname = aUser.getUsername();
				String upass = aUser.getPassword();

				PreparedStatement prepStatement = connection.prepareStatement("insert into users (username, password) values (?, ?)");

				prepStatement.setString(1, uname);
				prepStatement.setString(2, upass);

				prepStatement.execute();


				prepStatement.close();
				connection.close();

				added = true;
			} catch (SQLException e) {
				e.printStackTrace();
			}

			return added;
		}


}
