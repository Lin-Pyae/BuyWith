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
    <title>User Edit</title>
    

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">

<link rel="stylesheet" href="<c:url value="/resources/css/profile.css"/>">
<style>
    .bd{
        width: 400px;
   background-color: white;
    padding: 20px;
    border-radius: 20px;
    }

    label{
        margin-right: 5px;
    }

    body{
        background-color: #f3d2b3;
    }

    .icon{
      position: absolute;
    left: 180px;
    top: 11px;
    }

    input{
      margin-top: 5px;
    }
    tr{
      padding: 50px ;
    }
</style>

</head>
<body>
    
    
        <div class=" d-flex align-items-center justify-content-center" style="height: 100vh;">
        <div class=" main  bd shadow">
          
            
          
         
          <img src='<c:url value="/resources/images/cakegirl.jpg" ></c:url>' style="margin:auto ;" class=" mb-5 p-img"/>
            
           
             <form:form action="/BuyWith/Updateuser" method="post" modelAttribute="editUser">
            <table style="margin: auto;" class=" mb-3 ">
              <tr><th><label>Name</label></th>
                <td><form:input path="userName" class="form_input" type="text" placeholder="Username" value="${user.getName()}" required='true'/> </td>
            </tr>
        
            <tr><th><label>E-mail</label></th>
              <td> <form:input path="email" class="form_input" type="email" value="${user.getEmail()}" required='true'/>  </td>
            </tr>
        
            <tr><th><label>Phone No.</label></th>
              <td>      
                <form:input path="phone_number" class="form_input" type="tel" id="phone" name="phone" placeholder="123-45-678"
                pattern="[0-9]{3}-[0-9]{2}-[0-9]{3}" value="${user.getPhone_number()}" required='true'/>
                </td>
            </tr>
        
            <tr><th><label>Street Name</label></th>
              <td> 
               <form:input path="streetName" class="form_input" type="text" placeholder="Street Name" value="${user.getStreetName()}" required='true'/>
              </td>
            </tr>

            
            <tr><th><label>Township</label></th>
                <td>  
                 <form:input path="township" class="form_input" type="text" placeholder="Township" value="${user.getTownship()}" required='true' />
                </td>
              </tr>

              
            <tr><th><label>City</label></th>
                <td> 
                 <form:input path="city" class="form_input" type="text"  placeholder="City" value="${user.getCity()}" required='true' />
                  </td>
              </tr>

              
            <tr><th><label>Zip Code</label></th>
                <td>                
                <form:input path="zipCode" class="form_input" type="text" placeholder="Zip Code" value="${user.getZipcode()}" required='true' />
                 </td>
              </tr>

              <tr><th><label>Password</label></th>
                <td style="position: relative;">                  
                   <form:password path="password" id="pw" class="form_input" value="${user.getPassword()}"  required='true' />
                  <i class="bi bi-eye icon" id="pwIcon"></i>
                </td>
              </tr>

              <tr><th><label>Confirm Password</label></th>
                <td style="position: relative;"> 
                  <input id="cpw" class="form_input" type="password" name="confirmpassword" required>
                  <i class="bi bi-eye icon" id="confirmpwIcon"></i> 
                  </td>
              </tr>
        
        
        
            </table>
        
          <form:input path="user_id" class="form_input" type="hidden" value="${user.getUser_id()}" />
          <form:input path="address_id" class="form_input" type="hidden" value="${user.getAddress_id()}" />
          <input type="submit" name="edit" value="Update" class=" btn btn-outline-danger">
        </form:form>
          
        </div>
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