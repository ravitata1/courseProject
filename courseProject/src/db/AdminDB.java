package db;
/**
 * 
 * @author mehra
 * MYSQL database schema :coursedatabase
 * user :root
 * pass :Chump4870
 * 
 */

//interface to contain Admin login details
public interface AdminDB {
	
	//login credentials for admin login
	String USER="root";
	String PASS="Chump4870";
	String CONN_URL="jdbc:mysql://127.0.0.1:3306/courseDatabase";

	
}
