<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%

String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://127.0.0.1:3306/carparking";

String userid = "root";
String password = "ibrahim";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<html>
    <head>
    <title>Car Parking System</title>
    <meta charset="utf-8">
    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    
    <style type="text/css">
     @import url('https://fonts.googleapis.com/css?family=Roboto:300,400,400i,500');
        *{
            margin: 0;
            padding: 0;
            list-style: none;
            text-decoration: none;
    
        }
    
body{
    font-family: 'Roboto',sans-serif;
    background: url(parking_edited.jpg);
     opacity : 2.0;
       background-repeat :no-repeat;
       background-size: cover ;
       height: 50vh;
       transition: all .5 ease;
       margin-top: 100px;
       margin-left: 250px;
    }
    .sidebar{
    position: fixed;
    left: -450px;
    width: 450px;
    height: 100%;
    line-height: 0px;
    background:#8b0000;
    transition: all .5s;
    top:0px;
    z-index: 999999;

}
.sidebar header{
    font-size: 42px;
    color:white;
    line-height: 110px;
    text-align: center;
    background: brown;
    user-select: none;
    }
    .sidebar ul a{
        display: block;
        height:100%;
        width: 100%;
        line-height: 90px;
        font-size: 40px;
        color: white;
        padding-left: 40px;
        box-sizing: border-box;
        border-top: 1px solid rgba(255,255,255,.1);
        border-bottom:1px white;
        transition: .5s;
    }
ul li:hover a{
padding-left: 50px;
background:brown;
}
.sidebar ul a i{
margin-right: 16px;
}
#check{
display: none;

}

label #btn,label #cancel{
position: absolute;
cursor: pointer;
background:darkred;
border-radius: 3px;
}
label #btn{
left: 40px;
top:25px;
font-size: 65px;
color:white;
padding: 20px 20px;
transition: all .5s;
}
label #cancel{
z-index: 9999999;
left: -395px;
top: 17px;
font-size: 35px;
color:white;
padding:20px 20px;
transition: all .5 ease;
}

#check:checked ~.sidebar{
left: 0;
}
#check:checked ~ label #btn{
left: 450px;
opacity: 0;
pointer-events: none;
}
#check:checked ~ label #cancel{
left: 345px;
}
#check:checked ~ section{
margin-left: 450px;
}



.register-left
    {
    text-align: center;
    color:#fff;
    padding: 30px;
    margin-bottom: 100px;
    }
.register-left p
{
padding : 10px 10px 0;
margin-bottom: 0px;
}
.register-left h3
{
padding: 30px;
margin-left: 50px;
}
.register-right
{
border: none;
background:url(m1.jpg);
background-repeat: no-repeat ;
background-size: cover;
opacity: 0.7;
border-top-left-radius: 100% 50%;
border-bottom-left-radius: 100% 50%;
border-top-right-radius:100% 50% ;
border-bottom-right-radius:100% 50% ;
border-style: dashed;
padding:70px;
margin-top: 0px;

}
.register-right h2
{
text-align: center;
margin-bottom:100px ;
color: #000;
}
.register-left .btn-primary
{
border-radius: 1.6rem;
border:none;
width: 150px;
background:linear-gradient(to left,#2DECF3,#6EF954)  ;
font-weight: 600;
color:black;
margin-top: 100px ;
margin-left: 50px;
margin-right: 0px;
padding:10px;
}
.register-left .btn-primary:hover{
background:linear-gradient(to left,#2DECF3,green)   ;

}
.register-right .btn-primary
{
float: right;
border-radius: 1.6rem;
border:none;
width: 150px;
background:linear-gradient(to left,#2DECF3,#6EF954)  ;
font-weight: 600;
color: black;
margin-top: 10px ;
padding:10px;
}
.register-right .btn-primary:hover{
background:linear-gradient(to left,#2DECF3,green)   ;
}

.register-form
{
padding:5px ;
margin-top: 0px;
margin-bottom: 0px;
margin-left: 0px;
margin-right: 0px;
}
.reg-one
{
padding: 10px;
margin-top:50 px !important ;
margin-left: 50 px !important;
} 




@media screen and (min-width: 1000px) {
.sidebar{
        left: -250px;
        width: 250px;
    }

#check:checked ~ label #btn{
    left: 250px;
    opacity: 0;
    pointer-events: none;
}
#check:checked ~ label #cancel{
    left: 195px;
}
#check:checked ~ section{
    margin-left: 250px;
}
label #btn{
    font-size: 35px;
padding: 6px 12px;
}
label #cancel{
    left: -195px;
    font-size: 30px;
    padding:4px 9px;
}
.sidebar header{
        font-size: 22px;
        line-height: 70px;
        }
        .sidebar ul a{
            line-height: 65px;
            font-size: 20px;
            padding-left: 40px;
        }

}
table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  text-align: center;
  padding: 5px;
}

tr:nth-child(even){background-color: white}
tr:nth-child(odd){background-color: white}
th {
  background-color: #4CAF50;
  color: white;
}
    
    
    </style>
     
   
    </head>
    <body style="font-family: 'Roboto',sans-serif;">
        
        <input type="checkbox" id="check">
        <label for="check">
            <i class="fas fa-bars" id="btn"></i>
            <i class="fas fa-times" id="cancel"></i>
        </label>
        <div class="sidebar">
            <header>MENU</header>
            <ul id="buttons">
                <li><a href="index.jsp"><i class="fas fa-qrcode"></i>HOME</a></li>
             </ul>
        </div>
         <div class = "container reg-one">
        <div class = "row">
        <div class = "col-md-10 offset=md-1">
        <div class = "row"> 
       <div class = "col-md-4 register-left">
      <table border="1">
<tr>
<td>slot number</td>
<td>Vacancy<td>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl, userid, password);
statement=connection.createStatement();
String sql ="select * from parking";
resultSet = statement.executeQuery(sql);
for(int j=0;j<10;j++){
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("slot_number") %></td>
<td>full</td>
</tr>

<%
}}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
        </div>
        
  
        <div class = "col-md-7 register-right">
        <form action="process.jsp">
        <h3>Enter Details Here </h3>
            <div class ="register-form">
              <div class="form-group">
                  <input type="number" name="slotno" class="form-control" placeholder="slot number" onclick="this.value=''"/>
              </div>
              <div class="form-group">
                <input type="number" name="carno"class="form-control" placeholder="car number like 7726" onclick="this.value=''"/>
              </div>
              <div class="form-group">
                        <input type="number" name="phoneno" class="form-control" placeholder="phone number" onclick="this.value=''"/>
              </div>
              <button type = "submit" class ="btn btn-primary" value="register"/>Register</button>
              </form>
            
              
            </div>
        </div>
        </div>
        </div>
        </div>
      </div>
       </body>
</html>
      
        
        
    
    
 
        

