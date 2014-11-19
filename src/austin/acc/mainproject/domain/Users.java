/**
 * 
 */
package austin.acc.mainproject.domain;

/**
 * @author michaelvjensen
 *
 */

// variables for the user class
public class Users {
	int id;
	String username;
	String password;
	
	
	// added constructor with id
	public Users(int id, String username, String password) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
	}

	// Original constructor prior to get user by id method
	public Users(String username, String password) {
		this.username = username;
		this.password = password;
	}

	// getters and setters 
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	// to string
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Users [id=").append(id).append(", username=")
				.append(username).append(", password=").append(password)
				.append("]");
		return builder.toString();
	}
	
	
}
