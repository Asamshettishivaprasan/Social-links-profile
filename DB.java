package p1;
import java.sql.*;

public class DB {
public static Connection con;
public static Statement st;
public static int currId;
public static Statement connect()
{
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		con= DriverManager.getConnection("jdbc:mysql://localhost:3306/profile","root","tiger");
		st=con.createStatement();
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	return st;
}
}
