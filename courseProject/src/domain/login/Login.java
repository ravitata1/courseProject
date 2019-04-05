package domain.login;

/**
 * 
 * @author mehra
 * This is the Customer before the validation.
 */

public class Login {
	
	//instance variables
	private String username;
	private String password;
	
	//constructor
	public Login(String username, String pass){
		this.username = username;
		this.password = pass;
	}
	
	//accessor method for username
	public String getUsername() {
		return username;
	}
	
	//modifier method for username
	public void setUsername(String username) {
		this.username = username;
	}
	
	//accessor method for password
	public String getPassword() {
		return password;
	}
	
	//modifier method for password
	public void setPassword(String password) {
		this.password = password;
	}

}
