package bean;
import java.sql.*;
public class Receive{
	public static int receive(User u){  
		  int i=0;
		try{  
		Connection con=ConnectionProvider.getCon();  
		Statement st=con.createStatement();
		String carnumber=u.getcarnumber();
		 i=st.executeUpdate("delete from parking where slot_number="+carnumber);
		  }catch(Exception e){}  
		      
		return i;  
		}  
}
