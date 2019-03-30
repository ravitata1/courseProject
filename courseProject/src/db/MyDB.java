package db;
/**
 * 
 * @author mehra
 * MYSQL database schema :coursedatabase
 * user :root
 * pass :Chump4870
 * 
 */
public interface MyDB {

	String USER="root";
	String PASS="Chump4870";
	String CONN_URL="jdbc:mysql://127.0.0.1:3306/courseDatabase";
	
	
}
/**
CREATE TABLE `customer` (
`userId` char(20) NOT NULL,
`password` char(10) DEFAULT NULL,
`name` char(20) DEFAULT NULL
)


jdbc:mysql://127.0.0.1:3306/coursedatabase?user=coursedatabase_admin

*/
