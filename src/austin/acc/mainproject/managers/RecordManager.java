package austin.acc.mainproject.managers;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
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
				PreparedStatement statement = connection.prepareStatement(" select artist, album, year, genre, notes, art from record");
				ResultSet resultSet = statement.executeQuery();
				
				while (resultSet.next()) {
					record.add(new Record(resultSet.getString("artist"), resultSet.getString("album"),resultSet.getString("year"), resultSet.getString("genre"), resultSet.getString("notes"),resultSet.getString("art")));
				}
				
				resultSet.close();
				statement.close();
				connection.close();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			return record;
		}
		public boolean saveRecord(Record aRecord) {
			boolean succeeded = false;

			
			try {

				Connection connection;
				connection = ds.getConnection();
				PreparedStatement statement = connection.prepareStatement("insert into record(artist, album, year, genre, notes, art) values (?,?,?,?,?,?)");
				
						statement.setString(1,aRecord.getArtist());
						statement.setString(2,aRecord.getAlbum());
						statement.setString(3,aRecord.getYear());
						statement.setString(4,aRecord.getGenre());
						statement.setString(5,aRecord.getNotes());
						statement.setString(6,aRecord.getArt());
			
				
				statement.execute();
				succeeded= true;
				
				statement.close();
				connection.close();
				
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return succeeded;
		}
		public Record getRecordById(String idString) {

			Connection connection;
			Record returnRecord = null;
			try {
				connection = ds.getConnection();
				PreparedStatement ps = connection.prepareStatement("select id, artist, album,  year, genre, notes, art from record where id = ?");
				ps.setString(1, idString);

				ResultSet rs = ps.executeQuery();

				while (rs.next()) {
					int id = rs.getInt("id");
					String artistString = rs.getString("artist");
					String albumString = rs.getString("album");
					String yearString = rs.getString("year");
					String genreString = rs.getString("genre");
					String notesString = rs.getString("notes");
					String artString = rs.getString("art");
					

					returnRecord = new Record(id, artistString, albumString, yearString, genreString, notesString, artString);
				}

				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			return returnRecord;
		}
		public boolean updateRecord(Record myUpdatedRecord) {
			Connection connection;
			boolean updateSucceeded = false;

			try {
				connection = ds.getConnection();
				PreparedStatement ps = connection.prepareStatement("update RECORD SET artist=?, album=?, year=?, genre=?, notes=?, art=? WHERE id = ?");
				ps.setString(1, myUpdatedRecord.getArtist());
				ps.setString(2,  myUpdatedRecord.getAlbum());
				ps.setString(3,  myUpdatedRecord.getYear());
				ps.setString(4,  myUpdatedRecord.getGenre());
				ps.setString(5,  myUpdatedRecord.getNotes());
				ps.setString(6,  myUpdatedRecord.getArt());
				ps.setInt(7, myUpdatedRecord.getId());

				ps.execute();

				connection.close();
				updateSucceeded = true;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return updateSucceeded;
			}


			return updateSucceeded;
		}
		
	/*	public void deleteRecord(Record myDeletedRecord) {
			
			Connection connection;
			
			try {

				
				connection = ds.getConnection();
				PreparedStatement statement = connection.prepareStatement("DELETE FROM record WHERE id = ?");
			 
	            statement.execute(myDeletedRecord);
			
				
				statement.execute();
				
				statement.close();
				connection.close();
				
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
		}*/
		
		
}