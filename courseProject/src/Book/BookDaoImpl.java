//packages and import statements
package Book;
import java.sql.Connection;
import java.sql.PreparedStatement;


import db.DbManager;


//class implements needed interface
public class BookDaoImpl implements BookDao{
	
	//needed objects instantiated
	static Connection conn;
	static PreparedStatement ps;
	DbManager db = new DbManager();
	
	//registers a book within the database
	@Override
	public int register(Book b)
	{
	int status = 0;
	try {
		
		conn = db.getConnection();
		ps = conn.prepareStatement("insert into books values(?,?,?)");
		
		//sets the attributes of the Book object accordingly
		ps.setString(1, b.getTitle());
		ps.setString(2, b.getAuthor());
		ps.setString(3, b.getISBN());
		ps.setString(5, b.getLink());
			
		//	ps.setDouble(4, b.getPrice());
		
		status = ps.executeUpdate();
	
				// b.setPrice(rs.getDouble(4));

		 
			
			
		
		}catch(Exception e){
			System.out.println(e);
		}
		return status;
	}

}
