package Model;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class BookDao implements DbService
{
	Connection con= null;
	String url="jdbc:mysql://localhost:3306/makers",
			user="root",pass="Ambadas@1999";
	PreparedStatement ps;

	@Override
	public Connection getConnection() throws ClassNotFoundException, SQLException 
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection(url,user,pass);
		return con;
	}
	
	public BookDao() throws ClassNotFoundException, SQLException
	{
		con=getConnection();
	}
	
	public boolean insertBook(BookPojo b) throws SQLException
	{
		ps=con.prepareStatement("insert into Book values(?,?,?,?)");
		ps.setInt(1,b.getBid());
		ps.setString(2, b.getBname());
		ps.setString(3, b.getAuthor());
		ps.setDouble(4, b.getPrice());
		
		int res=ps.executeUpdate();
		if(res>0)
		return true;
		else
			return false;
	}
	
	public boolean UpdateBook(BookPojo b) throws SQLException
	{
		ps=con.prepareStatement("update Book set bname=?,author=?,price=? where bid=?");
		 ps.setString(1, b.getBname());
		 ps.setString(2, b.getAuthor());
		 ps.setDouble(3, b.getPrice());
		 ps.setInt(4, b.getBid());
		
		int res=ps.executeUpdate();
		if(res>0)
		return true;
		else
			return false;
	}
	public boolean deleteBook(int id) throws SQLException
	{
		ps=con.prepareStatement("delete from Book where bid=?");
		ps.setInt(1, id);
		
		int rs=ps.executeUpdate();
		if(rs>0)
			return true;
		else
			return false;
	}
	
	public List<BookPojo> Showall() throws SQLException
	{
		ps=con.prepareStatement("select * from Book");
		ResultSet rs=ps.executeQuery();
		List<BookPojo> blist=new ArrayList<BookPojo>();
		while(rs.next())
		{
			BookPojo b=new BookPojo(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getDouble(4));
			blist.add(b);
		}
		return blist;
	}  
}
