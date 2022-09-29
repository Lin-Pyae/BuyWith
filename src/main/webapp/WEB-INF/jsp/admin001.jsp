<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <spring:url value="/resources/css/bootstrap-icons.css" var="Icon"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
    <link href="${Icon}" rel="stylesheet"/>    
    <link rel="stylesheet" href="bootstrap-icons.css">
    <style>
         
         
      form{
        margin: auto;
      }

      input{
        margin-bottom: 25px;
        border-radius: 10px;
      }

      input[type="text"]{
        padding: 10px;
        
      }
      input[type="email"]{
        padding: 10px;
        
      }

      input[type="password"]{
        padding: 10px;
      }

      input[type="submit"]{
        padding: 5px 14px;
      }

      fieldset{
        padding: 35px;
        border-radius: 20px;
        background-color: #f9d8d887;
        border-color: #f3d2b3;
        box-shadow: 4px 4px 5px;

      }

      legend{
        text-align: center;
      }

      body{
        background-color: #f3d2b3;
      }

      .bi-eye{
        margin-left: -25px;
        cursor: pointer;
      }

    </style>
</head>
<body>

<div style="display: flex; align-items: center;height: 80vh;">
    <form:form action="/BuyWith/A2signup" method="post" id="loginform" class="form" modelAttribute="admin">
<fieldset>
    <legend><h1>Sign Up</h1></legend>
    <div>        
    
        <form:input path="admin_id" type="text" placeholder="Admin Id" required='true'/>
     
    </div>

    <div>  
        <form:input path="name" type="text" placeholder="Admin Name" required='true'/>
    </div>

    <div>  
        <form:input path="email" type="email" placeholder="Email" required='true'/>
    </div>

    <div>
        <form:password path="password" id="pw" placeholder="Password" required='true'/>
        <i class="bi bi-eye" id="pwIcon"></i>
    </div>

    <div>
        <input id="cpw" type="password" name="confirmpassword" placeholder="Confirm Password" required>
            <i class="bi bi-eye" id="confirmpwIcon"></i>
    </div>

    <div style="text-align: center;">
        <input class="button" type="submit" value="Sign Up" id="submit">
    </div>
    
</fieldset>
        
    </form:form>
</div>
    
    
    <script>

        //confirm password
        let pw = document.getElementById("pw");
        let cpw = document.getElementById("cpw");
        let submit = document.getElementById("submit");

        function validatePassword() {
            if (pw.value != cpw.value) {
                cpw.setCustomValidity("Passwords Don't Match");
            }
            else {
                cpw.setCustomValidity('');
            }
        }

        pw.onchange = validatePassword;
        cpw.onkeyup = validatePassword;


        //password visiility

        let pwIcon = document.getElementById("pwIcon");
        let confirmpwIcon = document.getElementById("confirmpwIcon");
        pwIcon.addEventListener('click', () => {
            if (pw.type === "password") {
                pw.type = "text";
            }
            else {
                pw.type = "password";
            }
        });

        confirmpwIcon.addEventListener('click', () => {
            if (cpw.type === "password") {
                cpw.type = "text";
            }
            else {
                cpw.type = "password";
            }
        })
    </script>
</body>
</html>