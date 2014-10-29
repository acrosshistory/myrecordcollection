/**
 * 
 */
package austin.acc.mainproject.domain;

/**
 * @author michaelvjensen
 *
 */
public class Record {
	private String artist;
	private String album;
	private String year;
	private String genre;
	private String notes;
	private String art;
	
	public Record(String artist, String album, String year, String genre,
			String notes, String art) {
		super();
		this.artist = artist;
		this.album = album;
		this.year = year;
		this.genre = genre;
		this.notes = notes;
		this.art = art;
	}

	public String getArtist() {
		return artist;
	}

	public void setArtist(String artist) {
		this.artist = artist;
	}

	public String getAlbum() {
		return album;
	}

	public void setAlbum(String album) {
		this.album = album;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

	public String getArt() {
		return art;
	}

	public void setArt(String art) {
		this.art = art;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Record [artist=").append(artist).append(", album=")
				.append(album).append(", year=").append(year)
				.append(", genre=").append(genre).append(", notes=")
				.append(notes).append(", art=").append(art).append("]");
		return builder.toString();
	}
	
	

}