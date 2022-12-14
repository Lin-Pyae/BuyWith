<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Sign Up</title>
    
    <link rel="stylesheet" href="<c:url value="/resources/css/signup.css"/>">
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
</head>
<body>
    <div class="main" style="height:734px">
        <div class="logo-container">
            <label class="logo-label">Sign Up</label>
          
             <img src='<c:url value="/resources/images/cakegirl.jpg" ></c:url>' class="logo"/>   
        </div>

        <form:form action="/BuyWith/userSignup" method="post" id="loginform" class="form" modelAttribute="user">

            <div class="label" style="margin-left: -296px;">User Name  </div>
            <form:input path="userName" class="form_input" type="text" placeholder="Username" required='true'/>
       
            <div class="label" style="margin-left: -338px;">Email </div>
            <form:input path="email" class="form_input" type="email" required='true'/>

            <div class="label" style="margin-left: -270px;">Phone Number </div>
            <form:input path="phone_number" class="form_input" type="tel" id="phone" name="phone" placeholder="123-45-678"
                pattern="[0-9]{3}-[0-9]{2}-[0-9]{3}" required='true'/>

            <div class="label" style="margin-left: -320px;">Address </div>
            <form:input path="streetName" class="form_input" type="text" placeholder="Street Name" required='true'/>
            <div class="label" style="margin-left: -320px">Township </div>
             <form:input path="township" class="form_input" type="text" placeholder="Township" required='true' />
             <div class="label" style="margin-left: -350px">City </div>
              <form:input path="city" class="form_input" type="text"  placeholder="City" required='true' />
              <div class="label" style="margin-left: -325px">Zipcode </div>
               <form:input path="zipCode" class="form_input" type="text" placeholder="Zip Code" required='true' />

            <div class="label" style="margin-left: -313px">Password </div>
            <form:password path="password" id="pw" class="form_input"  required='true' />
            <i class="bi bi-eye" id="pwIcon"></i>

            <div class="label" style="margin-left: -255px">Confirm Password </div>
            <input id="cpw" class="form_input" type="password" name="confirmpassword" required>
            <i class="bi bi-eye" id="confirmpwIcon"></i>

            <input class="button" type="submit" value="Sign Up" id="submit"> 
        </form:form>
   </div>

    <script>

        //owner addition forms
        


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