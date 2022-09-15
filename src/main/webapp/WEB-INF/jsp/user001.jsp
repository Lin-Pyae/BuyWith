<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Sign Up</title>
    
    <link rel="stylesheet" href="<c:url value="/resources/css/sign up.css"/>">
</head>
<body>
    <div class="main">
        <div class="logo-container">
            <label class="logo-label">Sign Up</label>
          
             <img src='<c:url value="/resources/images/cakegirl.jpg" ></c:url>' class="logo"/>   
        </div>

        <form action="" id="loginform" class="form">

            <div class="label" style="margin-left: -296px;">User Name  </div>
            <input class="form_input" type="text" placeholder="Email or Username" name="userName" required>
       
            <div class="label" style="margin-left: -338px;">Email </div>
            <input class="form_input" type="email" name="email" required>

            <div class="label" style="margin-left: -270px;">Phone Number </div>
            <input class="form_input" type="tel" id="phone" name="phone" placeholder="123-45-678"
                pattern="[0-9]{3}-[0-9]{2}-[0-9]{3}" required>

            <div class="label" style="margin-left: -320px;">Address </div>
            <input class="form_input" type="text" name="address" required>

            <div class="label" style="margin-left: -313px">Password </div>
            <input id="pw" class="form_input" type="password" name="password" required>
            <i class="bi bi-eye" id="pwIcon"></i>

            <div class="label" style="margin-left: -255px">Confirm Password </div>
            <input id="cpw" class="form_input" type="password" name="confirmpassword" required>
            <i class="bi bi-eye" id="confirmpwIcon"></i>

            <input class="button" type="submit" value="Sign Up" id="submit">
        </form>
    </div>

    <script>

        //owner addition forms
        let owner = document.querySelector("#owner");
        let customer = document.getElementById("customer");
        let categories = document.getElementById("categories");
        let text = document.createTextNode("Shop Name: ");
        let input = document.createElement("input");
        let shopNameC = document.createElement("div");
        let categoriesC = document.createElement("div");
        let shopLabel = document.createElement("div");
        let usr_role = document.getElementById("usr_role");

        owner.addEventListener('click', () => {
            console.dir(input);
            shopLabel.append(text);
            input.setAttribute('type', 'text');
            input.setAttribute('name','shopName');
            input.setAttribute('class', 'form_input')
            input.setAttribute("required", "");
            input.classList.add("rounded-5");
            shopNameC.classList.add("my-4");
            shopNameC.append(shopLabel);
            shopNameC.appendChild(input);
            // usr_role.appendChild(shopNameC);
            categories.style.display = "block";
        })

        customer.addEventListener('click', () => {
            shopLabel.remove();
            shopNameC.remove();
            categories.style.display = "none";
        })


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