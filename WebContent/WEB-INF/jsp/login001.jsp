<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="es" dir="ltr">
  <head>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0">
    <meta charset="utf-8">
    <link rel="stylesheet" href="<c:url value="/resources/css/loginform.css"/>">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700;800&display=swap" rel="stylesheet">
 	
  </head>
 
  <body>
    <div class="main">
      <div class="logo-container">      
        <label class="logo-label" style="font-family: 'Montserrat';" >Buy With</label>
              <img src='<c:url value="/resources/images/cakegirl.jpg" ></c:url>' class="logo"/>   
      </div>
      <div class="container b-container" id="b-container">
        <form:form class="form" id="b-form" method="POST" action="/BuyWith/login" modelAttribute="admin">
          <span class="form__span">use your email account</span>
          <form:input path="name" class="form__input" type="text" placeholder="Username" id="txt-check" />
          <form:input path="password" class="form__input" type="password" placeholder="Password" id="pw-check" />
          <span id = "message" style="color: red" > </span>
          <a class="form__link">Forgot your password?</a>     
          <button class="form__button button submit" type="submit" onclick="return verifyPassword()" >Log In</button>
        </form:form>
      </div>   
    </div>

    <script>
        function verifyPassword() { 

            var txt = document.getElementById("txt-check").value;
            var pw = document.getElementById("pw-check").value;
            //console.log("check");   
            if(pw == "" && txt == "") {     
                document.getElementById("message").innerHTML = "**Fill the username and password!";  
                return false;  
            }  

            if(pw == "" || txt == "") {  
                //console.log("check1");
                if(pw == "") {
                    document.getElementById("message").innerHTML = "**Fill the password!";  
                    return false;  
                }
                else if(txt == ""){
                    document.getElementById("message").innerHTML = "**Fill the email or username!";  
                    return false;
                }
                else{
                    document.getElementById("message").innerHTML = "**Fill the username and password!";  
                    return false; 
                }
                      
            }       

           if(pw.length < 8) { 
                //console.log("check2");  
               document.getElementById("message").innerHTML = "** length must be atleast 8 characters";  
               return false;  
            }     
           if(pw.length > 15) { 
                //console.log("check3");  
               document.getElementById("message").innerHTML = "** length must not exceed 15 characters";  
               return false;  
            } else {  
               // console.log("check4"); 
               //alert("Password is correct");  
               return true;
            }  
          }
    
    </script>
  
  </body>
</html>