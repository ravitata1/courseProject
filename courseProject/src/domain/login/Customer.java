package domain.login;
/**
 * 
 * @author mehra
 *
 */

public class Customer {

	//instance variables
	private String username;
	private String password;
	private String name;
	public String getUsername() {
		return username;
	}
	//modifier method for username
	public void setUsername(String username) {
		this.username = username;
	}
	//accesser method for password
	public String getPassword() {
		return password;
	}
	//modifier method for password
	public void setPassword(String password) {
		this.password = password;
	}
	//accessor method for name
	public String getName() {
		return name;
	}
	//modifier method for name
	public void setName(String name) {
		this.name = name;
	}

	
}
