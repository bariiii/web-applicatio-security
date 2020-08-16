package login.sumit.registration;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
public class CustomerDAOImpl implements CustomerDAO {

	static Connection con;
	static PreparedStatement ps;
	@Override
	public int insertCustomer(Customer c) {
	int status=0;
	try {
		con=MyConnectionProvider.getCon();
		ps=con.prepareStatement("insert into customer valued (?,?)");
		ps.setString(1, c.getEmail());
		ps.setString(2,c.getPassword());
		status=ps.executeUpdate();
		con.close();
	}catch(Exception e) {
		System.out.println(e);
	}
		return status;
	}

	@Override
	public Customer getCustomer(String email, String password) {
		Customer c=new Customer();
		try {
			con=MyConnectionProvider.getCon();
			ps=con.prepareStatement("select * from customer where userid=? and password=?");
			ps.setString(1, email);
			ps.setString(2, password);
			
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				c.setEmail(rs.getString(1));
				c.setPassword(rs.getString(2));
				
			}
		}catch(Exception e) {
			System.out.println(e);
		}

		try
{
    Document document = Jsoup.parse( new File( ".. /registration/customer.java" ) , "utf-8" );
    System.out.println(document.title());
} 
catch (IOException e) 
{
    e.printStackTrace();
}  
		return null;
	}

}
