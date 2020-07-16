package bean;  
  
import java.sql.*;  
  
public class RegisterDao {  
  
public static int register(User u){  
int status=0;  
try{  
Connection con=ConnectionProvider.getCon();  
PreparedStatement ps=con.prepareStatement("insert into parking values(?,?,?)");  
ps.setString(1,u.getslotno());  
ps.setString(2,u.getcarno());  
ps.setString(3,u.getphoneno());  
              
status=ps.executeUpdate();  
}catch(Exception e){}  
      
return status;  
}  

  
}  