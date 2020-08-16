<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
    @import url('https://fonts.googleapis.com/css?family=Josefin+Sans');
    
    *{
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        outline: blue;
        font-family: Arial, Helvetica, sans-serif;
    
    }
    
    body{
        background: yellow;
    }
    .noor{
        position :absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        max-width: 400px;
        width: 250%;
        background:#fff;
        padding: 25px;
        border-radius: 5px;
        box-shadow: 4px 4px 2px rgba(254,236,164,1);
    }
    
    .noor{
        text-align: center ;
        margin-bottom: 80px;
        text-transform: uppercase;
        letter-spacing: 3px;
        color:#332902;
    }
    
    .noor .input_field{
        margin-bottom: 10px;
    }
    
    .noor .btn input[type = "submit"]{
        border: 0;
        margin-top: 15px;
        padding: 10px;
        width: 100%;
        background: #fece0c;
        color: #332902;
        text-transform: uppercase;
        letter-spacing: 5px;
        font-weight: bold;
        border-radius: 25px;
        cursor:pointer;
    }
    .noor #error_message{
        margin-bottom: 20px;
        padding:0px;
        background: blue;
        font-weight: bold;
        text-align: center;
        font-size: 14px;
        transition: all 0.5s ease;
    } 
    .noor textarea{
        width: 100%
        border: 1px solid #e0e0e0;
        padding  : 10px;
    }
    .noor textarea{
        height: 80px;
        resize: none;
    }
    
    
    
     </style>
</head>
</head>
<body>

    <div class="noor">
        <h2>Registration for food delivery</h2>
        <div id="error_message"></div>
       
        <form method="post" action="loginfood.jsp"> 

          <div class="input_field">
           
            <input type="text" placeholder="Email" id="email" pattern="[A-Za-z]+@[A-Za-z]+\.[A-Za-z]{2,4}" title="Must contain email special characters" required >
        </div>
        <div class = "input_field">
          
          <input type="password" placeholder="Password"  id="password" name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
          
        </div>
    
    </hr>
	
    <div class = "btn">
        <input type = "submit" value="sign up">
    </div>
    
    
        
    
      </form>
    </div>
			
<script>
var myInputemail = document.getElementById("email");
var myInputhomeadd = document.getElementById("password");
var letter = document.getElementById("letter");
var capital = document.getElementById("capital");
var number = document.getElementById("number");
var length = document.getElementById("length");


// When the user starts to type something inside the password field


myInputemail.onkeyup = function() {
  // Validate lowercase letters
  var lowerCaseLetters = /[a-z]/g;
  if(myInputhomeadd.value.match(lowerCaseLetters)) {  
    letter.classList.remove("invalid");
    letter.classList.add("valid");
  } else {
    letter.classList.remove("valid");
    letter.classList.add("invalid");
  }
  
  // Validate capital letters
  var upperCaseLetters = /[A-Z]/g;
  if(myInputemail.value.match(upperCaseLetters)) {  
    capital.classList.remove("invalid");
    capital.classList.add("valid");
  } else {
    capital.classList.remove("valid");
    capital.classList.add("invalid");
  }

  // Validate numbers
  var numbers = /[0-9]/g;
  if(myInputemail.value.match(numbers)) {  
    number.classList.remove("invalid");
    number.classList.add("valid");
  } else {
    number.classList.remove("valid");
    number.classList.add("invalid");
  }
  
  // Validate length
  if(myInputemail.value.length >= 8) {
    length.classList.remove("invalid");
    length.classList.add("valid");
  } else {
    length.classList.remove("valid");
    length.classList.add("invalid");
  }
  

  

myInputpassword.onkeyup = function() {
  // Validate lowercase letters
  var lowerCaseLetters = /[a-z]/g;
  if(myInputpassword.value.match(lowerCaseLetters)) {  
    letter.classList.remove("invalid");
    letter.classList.add("valid");
  } else {
    letter.classList.remove("valid");
    letter.classList.add("invalid");
  }
  
  // Validate capital letters
  var upperCaseLetters = /[A-Z]/g;
  if(myInputpassword.value.match(upperCaseLetters)) {  
    capital.classList.remove("invalid");
    capital.classList.add("valid");
  } else {
    capital.classList.remove("valid");
    capital.classList.add("invalid");
  }

  // Validate numbers
  var numbers = /[0-9]/g;
  if(myInputpassword.value.match(numbers)) {  
    number.classList.remove("invalid");
    number.classList.add("valid");
  } else {
    number.classList.remove("valid");
    number.classList.add("invalid");
  }
  
  // Validate length
  if(myInputpassword.value.length >= 8) {
    length.classList.remove("invalid");
    length.classList.add("valid");
  } else {
    length.classList.remove("valid");
    length.classList.add("invalid");
  }
}

}

</script>
</body>
</html>