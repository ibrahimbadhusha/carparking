<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <title>Document</title>
        <meta charset="utf-8">
       
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
        font-family:'Roboto',sans-serif;
    }
    
    .sidebar{
        position: fixed;
        left: -450px;
        width: 450px;
        height: 100%;
        background:#8b0000;
        transition: all .5 ease;
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
            height: 100%;
            width: 100%;
            line-height: 90px;
            font-size: 40px;
            color: white;
            padding-left: 40px;
            box-sizing: border-box;
            border-top: 1px solid rgba(255,255,255,.1);
            border-bottom: 1px solid white;
            transition: .4s;
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
    z-index: 1111;
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

section{
    background: url(parking_edited.jpg) no-repeat;
    background-position: center;
    background-size: cover;
    height: 100vh;
    transition: all .5s;

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
                <ul>
                    <li><a href="#"><i class="fas fa-qrcode"></i>HOME</a></li>
                    <li><a href="project.jsp"><i class="fas fa-stream"></i>ENTRY</a></li>
                    <li><a href="exit.jsp"><i class="fas fa-stream"></i>EXIT</a></li>
                </ul>
            </div>
          <section> </section>
        </body>

</html>