<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style media="screen">
  @font-face {
    src: url("https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300");
    font-family: 'Open Sans Condensed', sans-serif;
  }
  body {
width: 100wh;
height: 90vh;
color: #fff;
background: linear-gradient(-45deg, #332c2c, #5e4e4e ,#988787, #d0c5c5);
background-size: 400% 400%;
-webkit-animation: Gradient 15s ease infinite;
-moz-animation: Gradient 15s ease infinite;
animation: Gradient 15s ease infinite;
}

@-webkit-keyframes Gradient {
0% {
background-position: 0% 50%
}
50% {
background-position: 100% 50%
}
100% {
background-position: 0% 50%
}
}

@-moz-keyframes Gradient {
0% {
background-position: 0% 50%
}
50% {
background-position: 100% 50%
}
100% {
background-position: 0% 50%
}
}

@keyframes Gradient {
0% {
background-position: 0% 50%
}
50% {
background-position: 100% 50%
}
100% {
background-position: 0% 50%
}
}

h1,
h6 {
font-family: 'Open Sans';
font-weight: 300;
text-align: center;
position: absolute;
top: 45%;
right: 0;
left: 0;
}
    .parallax {
      /* The image used */

      background-image: url('https://images.pexels.com/photos/1565982/pexels-photo-1565982.jpeg?cs=srgb&dl=bread-color-copyspace-1565982.jpg&fm=jpg');

      /* Full height */
      height: 50%;
      width: 105%;
      margin: -10px  -50px -50px -50px;
      text-align: center;


      /* Create the parallax scrolling effect */
      background-attachment: fixed;
      background-position: center;
      background-repeat: no-repeat;
      background-size: cover;
    }

    /* Turn off parallax scrolling for tablets and phones. Increase the pixels if needed */
    @media only screen and (max-device-width: 1366px) {
      .parallax {
        background-attachment: scroll;
      }
    }
    .navigation{
      width: 100%;
      position: fixed;
      overflow: hidden;
      margin:-10px -10px 0px -10px;
      background-color: #000;
    }
    .navigation a{
      float: right;
      color: white;
      padding: 20px 40px 20px 40px;
      font-size: 25px;
      text-decoration: none;
      font-family: "Open Sans", Helvetica, Arial, sans-serif;

    }
    .navigation a:hover{
      margin: 0px;
      background-color: #dbdbdb;
    }
    .crop{
     width: 100%;
     height: 75%;
     overflow: hidden;
      border: 3px 3px 3px 3px;
      border-radius: 10px 10px 10px 10px;
    }
    .crop img{
      width: 100%;
      height: -50%;
      margin: -10px 0px -35px 0px;
      padding: 0px 0px 0px 0px;
      border: 3px 3px 3px 3px;
      border-radius: 10px 10px 10px 10px;
    }

    .comment form{
      text-align: center;
      font-family: "Bahnschrift";
      color: white ;
    }
    .comment form input[type="text"]{
      box-sizing: border-box;
      border: 2px ;
      border-radius: 4px;
      text-align: center;
      font-family: "Bahnschrift";
      color:#991313 ;
    }
    .button p[id="demo"]{
      margin-left: 3%;
      font-family: "Bahnschrift";
      text-align: center;
      margin-bottom: 25px;

    }
    .button button{
      height: 10%;
      background-color:white;
      font-family: "Bahnschrift";
      text-align: center;
      border-radius: 4px;
      margin-left: 50%;
    }

    .comment input[type="here"] {
      width: 50%;
      height: 50%;
      padding: 05px 10px 50px 10px;
      margin-top: 10px;
      margin-left: 25%;
      margin-bottom: 20px;
      box-sizing: border-box;
      border: 2px ;
      border-radius: 4px;
      font-family: "Bahnschrift";

    }


    .column img{
      margin-top: 14px;
      margin-left: 10px;
      box-sizing: border-box;
      border: 3px ;
      border-radius: 10px;
    }
    * {
 box-sizing: border-box;
      }
.column h4{
  color: black;
  }
/* Create two equal columns that floats next to each other */
.column{
 float: left;
 width: 50%;
 padding: 10px;
 height: 500px; /* Should be removed. Only for demonstration */
}

/* Clear floats after the columns */
.row:after {
 content: "";
 height: 500;
 display: table;
 clear: both;

}
.column a {
  
  color: black;
  padding: 15px 25px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 50px;
  }
 

  </style>
  <title>Menu</title>
      <link href="https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300" rel="stylesheet">

</head>
<body>
	<br>
		<br>
		<% 
	String username = new String();
	String password = new String();
	
%>
	
	<form method="post" action="validate.jsp">
	Username : <input type="text" name="username" value="<%=username%>"><br>
	Password : <input type="password"
	name="password"value="<%=password%>"><br>
	<input type="submit" value="login">
  

	</form>
  <center>
    <h1>Session Tracking</h1>
 </center>
 
 <table border = "1" align = "center"> 
    <tr bgcolor = "#949494">
       <th>Session info</th>
       <th>Value</th>
    </tr> 
    <tr>
       <td>id</td>
       <td><% out.print( session.getId()); %></td>
    </tr> 
    <tr>
       <td>Creation Time</td>
       <td><% out.print(createTime); %></td>
    </tr> 
    <tr>
       <td>Time of Last Access</td>
       <td><% out.print(lastAccessTime); %></td>
    </tr> 
    <tr>
       <td>User ID</td>
       <td><% out.print(userID); %></td>
    </tr> 
    <tr>
       <td>Number of visits</td>
       <td><% out.print(visitCount); %></td>
    </tr> 
 </table> 


</body>
</html>

