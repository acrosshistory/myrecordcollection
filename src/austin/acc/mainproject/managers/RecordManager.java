package austin.acc.mainproject.managers;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.sql.DataSource;

import austin.acc.mainproject.domain.Record;



public class RecordManager {
	
	
		DataSource ds;
		
		public RecordManager(DataSource ds){
			this.ds = ds;
		}
		public ArrayList<Record> getRecords(){
			ArrayList<Record> record = new ArrayList<>();
			
			try {
				Connection connection;
				connection = ds.getConnection();
				Statement statement = connection.createStatement();
				ResultSet resultSet = statement.executeQuery(" select artist, album, year, genre, notes, art from record");
				
				while (resultSet.next()) {
					record.add(new Record(resultSet.getString("artist"), resultSet.getString("album"),resultSet.getString("year"), resultSet.getString("genre"), resultSet.getString("notes"),resultSet.getString("art")));
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			return record;
		}
		public boolean saveRecord(Record aRecord) {
			boolean succeeded = false;

			
			try {
				boolean theResult;
				int updateCount;
				Connection connection;
				connection = ds.getConnection();
				Statement statement = connection.createStatement();
				
				
				theResult = statement.execute("insert into record(artist, album, year, genre, notes, art) values ('" + aRecord.getArtist() + "', '" + aRecord.getAlbum() +"' ,'" + aRecord.getYear() + "' ,'" + aRecord.getGenre() + "' ,'" + aRecord.getNotes() + "' ,'" + aRecord.getArt() + "' )");
				if (theResult == false) {
					// Result count should be 1;
					updateCount = statement.getUpdateCount();
					if ( updateCount == 1) {
						succeeded = true;
					}
					
				}
				
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return succeeded;
		}
}
			

