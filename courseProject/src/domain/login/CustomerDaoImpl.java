//package and import statements
package domain.login;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import db.DbManager;



public class CustomerDaoImpl implements CustomerDao {

	//establishes database and connection
	static Connection conn;
	static PreparedStatement ps;
	DbManager db = new DbManager();
	
	//registers customer into the database
	@Override
	public int register(Customer c) {
		//0 means unregisteres
		int status = 0;
		try{
			conn = db.getConnection();
			ps =conn.prepareStatement("insert into customer values(?,?,?)");
			ps.setString(1, c.getUsername());
			ps.setString(2, c.getPassword());
			ps.setString(3, c.getName());
			status = ps.executeUpdate();
			conn.close();
		}
		//in case registration is unsuccessful
		catch(Exception e){
			System.out.println(e);
		}
		return status;
	}

	@Override
	//validates login credentials
	public Customer validateCustomer(Login login) {
		Customer c = new Customer();
		try{
			conn = db.getConnection();
			ps =conn.prepareStatement("select * from customer where userId=? and password=?");
			ps.setString(1, login.getUsername());
			ps.setString(2, login.getPassword());

			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				c.setUsername(rs.getString(1));
				c.setPassword(rs.getString(2));
				c.setName(rs.getString(3));
			}
			conn.close();
		}
		//if invalid login credentials
		catch(Exception e){
			System.out.println(e);
		}
		return c;
	}

}
