<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
       height: 100vh;
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

.register-right
{
border: none;
background:url(m1.jpg);
width: 500px;
height: 380px;
background-repeat: no-repeat ;
background-size: cover;
opacity: 0.7;
border-top-left-radius: 100% 50%;
border-bottom-left-radius: 100% 50%;
border-top-right-radius:100% 50% ;
border-bottom-right-radius:100% 50% ;
border-style: dashed;
padding: 100px;
align-items: center;
margin-right: 30%;
margin-top: 60%;
}

.register-right h3
{
text-align: center;
font-size: 40px;
color: #000;
}

.form-control{
font-size: 25px;
height: 60px;
}

.register-right .btn-primary
{
border-radius: 1.6rem;
border:none;
width: 120px;
font-size: 20px;
font-weight: 600;
color:white;
margin-top: 10px ;
padding:10px;
opacity: 1;
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

.register-right
{
width: 400px;
height: 280px;
margin-right: 25%;
margin-top: 0;
padding: 70px;
}

.register-right h3
{
font-size: 30px;
}

.form-control{
font-size: 20px;
height: 40px;
}

.register-right .btn-primary
{
font-size: 15px;
}




    
    
    </style>
     
    
    </head>
    <body>
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
        <section>
    <center>
    <div class = "register-right">
        <h3>Enter Here </h3>
        <div class ="register-form">
         
          <div class="form-group">
          <form action="retrive.jsp">
              <input type="number" name="carnumber" class="form-control" placeholder="slot number">
          </div>
          <button type ="submit" class ="btn btn-primary">submit</button>
          </form>
        </div>
    </div>
    </center>
    </section> 
 </body>

</html>