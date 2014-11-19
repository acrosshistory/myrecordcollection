package austin.acc.mainproject.managers;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.sql.DataSource;

import austin.acc.mainproject.domain.Record;
import austin.acc.mainproject.domain.Users;

// methods to receive and send data to the data base using the users class
public class UsersManager {
	DataSource ds;

	public UsersManager(DataSource ds) {
		this.ds = ds;
	}

	// method to select the users from the data base
	public ArrayList<Users> getUsers() {
		ArrayList<Users> users = new ArrayList<>();

		try {
			Connection connection;
			connection = ds.getConnection();
			Statement statement = connection.createStatement();
			ResultSet resultSet = statement
					.executeQuery("select id, username, password from users");

			while (resultSet.next()) {
				users.add(new Users(resultSet.getInt("id"), resultSet
						.getString("username"), resultSet.getString("password")));
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return users;
	}

	// method to add the user
	public boolean addUser(Users aUser) {

		boolean added = false;
		try {
			Connection connection;
			connection = ds.getConnection();

			String uname = aUser.getUsername();
			String upass = aUser.getPassword();

			PreparedStatement prepStatement = connection
					.prepareStatement("insert into users (username, password) values (?, ?)");

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

	// method to get the user by it's id so the admin can delete a user
	public Users getUserById(String idString) {

		Connection connection;
		Users returnUser = null;
		try {
			connection = ds.getConnection();
			PreparedStatement ps = connection
					.prepareStatement("select id, username, password from users where id = ?");
			ps.setString(1, idString);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				int id = rs.getInt("id");
				String usernameString = rs.getString("username");
				String passwordString = rs.getString("password");

				returnUser = new Users(id, usernameString, passwordString);
			}

			connection.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return returnUser;
	}

	// delete user method, access is only to the admin
	public boolean deleteUser(int id) {
		boolean ok = false;
		Connection connection;

		try {

			connection = ds.getConnection();
			PreparedStatement statement = connection
					.prepareStatement("DELETE FROM Users WHERE id = ?");
			statement.setInt(1, id);

			statement.execute();
			ok = true;
			statement.close();
			connection.close();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return ok;
	}

}
