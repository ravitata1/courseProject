package db;

import java.sql.Connection;
import java.sql.DriverManager;
/**
 * 
 * @author mehra
 * getConnection method help us to connect to the appropriate database. In this project we only have one
 * database. Data comes from MyDB interface.
 */

//defines Manager object
public class DbManager implements MyDB{

	//connects to the database
	public Connection getConnection(){
		//try-catch statement in the event that the login credentials are invalid or connection fails for whatever reason
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection myConnection = DriverManager.getConnection(CONN_URL,USER,PASS);
			return myConnection;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
}
