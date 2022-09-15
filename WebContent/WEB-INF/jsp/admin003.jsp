<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Profile</title>
    <link href="./node_modules/admin_profile.css" rel="stylesheet" type="text/css" />

    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">

     <!-- fontawesome v-5.15.4 -->
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    
     <!--feather icon-->
   
    <link rel="stylesheet" href="<c:url value="/resources/css/feathericon/feather.css"/>">
 
     <!-- css -->
     <link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">
     <link rel="stylesheet" href="<c:url value="/resources/css/admin_profile.css"/>">
</head>
<body>
    <div>
        <div class="row justify-content-around align-items-center adminroles">
            <div class="col-lg-4 profile-infos">
                <!-- header -->
                <div class="input-group text-center">
                    <a href="/BuyWith/A13admin" class=" btn text-dark input-group-text"><i class="feather-home"></i></a>
                    <span class="form-control bg-transparent border-0 text-black-50 fs-4 fw-bold"><i class="feather-arrow-left-circle fw-bold"></i> Admin Page</span>
                </div>

                <div class="card form-info">
                    <ul class="list-group text-center">
                        <li class="list-group-item list-group-item-danger border-start-0 text-success fw-bold text-capitalize" id="fullname">Name</li>
                        <li class="list-group-item list-group-item-danger border-start-0 text-success fw-bold text-capitalize" id="idnumber">Id Number</li>
                        <li class="list-group-item list-group-item-danger border-start-0 text-success fw-bold text-capitalize" id="email">YourEmail</li>
                        <li class="list-group-item list-group-item-danger border-start-0 text-success fw-bold text-capitalize" id="adminpassword">
                            <input type="password" class="form-control bg-transparent border-0 text-center" value="Password">
                        </li>
                        <li class="list-group-item list-group-item-danger text-center border-start-0">
                            <a href="" class="btn btn-success bg-transparent text-success fw-bolder" id="edit"><i class="feather-edit-2 fw-bold"></i> Edit Profile</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-5 profile-edits" id="profiles">
                <form:form action="/BuyWith/A8update" method="post" modelAttribute="admin"  class="form-edits" id="profileForm" autocomplete="off">
                   <div>
                        <label for="fname" class="form-label mt-2 ">Name</label>
                        <form:input path="name"  class="form-control bg-transparent"  id="fname" placeholder="Enter Your Name" required='true'/>
                    </div>
                   
                    <div>
                        <label for="idno" class="form-label mt-2">ID Number</label>
                        <form:input path="admin_id" type="text" class="form-control bg-transparent" id="idno" placeholder="EG01" value="" readonly="readonly" required='true'/>
                    </div>
                    <div>
                        <label for="cemail" class="form-label mt-2">Email</label>
                        <form:input path="email" type="email" class="form-control text-white bg-transparent" id="cemail" value="esterla@gmail.com" required='true'/>
                    </div>
                    <div>
                        <label for="pwd" class="form-label mt-2">Password</label>
                        <form:password path="password" type="password" class="form-control bg-transparent" id="pwd" placeholder="Enter change password" required='true'/>
                    </div>
                    <div class="mt-3">
                        <input type="submit" class="btn btn-success bg-transparent text-success" id="updatebtn" value="Update">
                        <input type="reset" class="btn btn-danger bg-transparent  text-danger ms-4" value="Reset">
                    </div>
                   
                </form:form>
            </div>
        </div>
    </div>
    
     <!-- bootstrap js2 & local-->
      <script type="text/javascript" src="<c:url value="resources/js/profile.js"/>"></script>
     <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
     <!-- <script src="./lib/bootstrap-5.0.2-dist/js/bootstrap.min.js"></script> -->

    
</body>
</html>