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
    <title>Admin</title>

    <!-- bootstrap css1 & local 1--> 
   
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">

    <!-- fontawesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <!--feather icon-->
   
    <link rel="stylesheet" href="<c:url value="/resources/css/feathericon/feather.css"/>">

    <!-- animated css -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>

    <!-- css -->
    <link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">
    
    

</head>
<body class="" id="top">
    <!-- start header bar -->
    <header class="container-fluid">
        <div class="sidebars styles " id="sidebar">
            <h3 class="text-center">Buy With</h3>
            <ul class="list-group mb-0">
                <li class="list-group-item"><a href="/BuyWith/P10shop" class=""><i class="feather-shopping-cart me-2"></i>Shop</a></li>
                <li class="list-group-item"><a href="/BuyWith/P1manage" class=""><i class="feather-shopping-bag "></i> Manage Product</a></li>
                <li class="list-group-item"><a href="/BuyWith/A12setting" class=""><i class="feather-settings me-2"></i>Setting</a></li>
                <li class="list-group-item"><a href="/BuyWith/A1signup" class=""><i class="feather-user me-2"></i>Add Admin</a></li>

            </ul>
        </div>
        <div class="col-lg-12 d-flex align-items-center headers">
           
            <!-- bar icon -->
            <div class="col-lg-2 bars" id="bar-icon">
                <i class="fas fa-bars fs-5 text-black-50 btns" id="btn"></i>
            </div>
            <div class="col-lg-5"> <!--logo-->
                 <img src='<c:url value="/resources/images/logo.png" ></c:url>' class="logos " alt="logo"/>   
            </div>

            <div class="col-lg-4 profiles">
                <div class="d-flex align-items-center justify-content-end profiles-details">
                    <a href="#"><i class="far fa-bell fs-5 text-dark noti-items"></i></a> <!--Qty-->
                    <a href="/BuyWith/suu"><i class="far fa-envelope-open fs-5 text-dark noti-items"></i></a> <!--sugesssion-->

                    <!-- profile -->
                    <div class="dropdown ">
                       
                         <img src='<c:url value="/resources/images/profile-img.jpg" ></c:url>' class="profile-imgs" id="profileimg" alt="profile"/>   
                        <div class="dropdown-menu profile-drops drop-items">
                            <div class="dropdown-header bg-light accounts drop-items" type="button">
                                <div class="fw-bold fs-5 drop-items">Account</div>
                            </div>
                            <a class="dropdown-item drop-items" href="#shoprequest">Edit Products</a>
                
                            <div class="dropdown-header drop-items bg-light">
                                <div class="fw-bold fs-5">Settings</div>
                            </div>

                            <a class="dropdown-item drop-items " href="/BuyWith/A6profile">Profile</a>
                            <!-- <div class="dropdown-header drop-items">
                                <div class="fw-bold fs-5">Details</div>
                            </div> -->

                            <!-- <a class="dropdown-item drop-items" href="#">About Us</a> -->
                        </div>
                    </div>
                </div>
            </div>
        <div>
    </header>

    <!-- body -->
    <div class="dividers"></div>

    <div class="container-fluid bodys drop-items">
        <div class="d-flex flex-column align-items-center bodys-details animate__animated animate__bounceIn">
            <h2 class="text-dark fs-1"><span class="text-info">Buywith</span> Online Market By Esterla</h2>
            <p class="fs-5 animate__animated animate__pulse">We help the shops to digitalize their businesses and make the best service for customers</p>
            <p class="text-black-50">Future delivery, Best Customer Services, More Shops</p>
        </div>
    </div>

    <!-- Go top -->
    <div class="btn btn-dark position-fixed tops">
        <a href="#top" class="text-white"><i class="feather-arrow-up-circle" ></a></i>
    </div>

    <!-- Shop request -->
    
   
   	
      <form class="row g-3 mt-3 ms-2" action="/BuyWith/productsearch" method="get">
      
      <div class="col-auto">
          <label for="inputPassword2" class="visually-hidden">Product ID</label>
          <input type="text" name="product_id" class="form-control" id="inputPassword2" placeholder="Product ID">
        </div>
      
        <div class="col-auto">
          <label for="inputPassword2" class="visually-hidden">Product_Name</label>
          <input type="text" name="product_name" class="form-control" id="inputPassword2" placeholder="Product Name">
        </div>
        <div class="col-auto">
            <label for="inputPassword2" class="visually-hidden">Category_Name</label>
            <input type="text" name="category_name" class="form-control" id="inputPassword2" placeholder="Category Name">
          </div>
        <div class="col-auto">
          <button type="submit" class="btn btn-success mb-3">Search</button>
        </div>
        <div class="col-auto">
          <button type="submit" class="btn btn-secondary mb-3">Reset</button>
        </div>
      </form>	
      
      <div>
      <table class="table table-striped" id="productTable">
        <thead>
          <tr>
            <th scope="col">#</th>
          <th scope="col">Product ID</th>
            <th scope="col">Product Name</th>
            <th scope="col">Category Name</th>
            <th scope="col">Details</th>
          </tr>
        </thead>
        <tbody>
        <c:forEach items="${list}" var="data">
        
        
        
          <tr>
            <th scope="row">1</th>
           <td>${data.product_id}</td>
            <td>${data.product_name}</td>
            <td>${data.category_name}</td>
            <td>
              <a href="/BuyWith/seemore/${data.product_id}"><button type="submit" class="btn btn-secondary mb-2">See More</button></a> ||
              <a href="/BuyWith/Pdelete/${data.product_id}"><button type="submit" class="btn btn-secondary mb-2">Delete</button></a> 
            </td>
          </tr>
          
          </c:forEach>
          
          
     
        </tbody>
      </table>
    </div>
    
    
    
      
     <div class="dividers mt-2"></div>

    <!-- Report -->
   
    <h2 class="text-center" id="report">Suggestion Box</h2>
    <div class="container-fluid mt-3 reports">
        <table class="w-75 mx-auto table table-hover table-sm table-bordered text-center">
            <thead>
                <tr class="">
                    <th class="w-25">Customer Name</th>
                    <th class="">Suggestions</th>
                    <!-- <th colspan="2" class="table-success border-0"></th> -->
                </tr>    
            </thead>
            <c:forEach items="${suu}" var="gg">
            <tbody class="align-middle">
                <tr>
                    <td>${gg.userId}</td>
                    <td class="text-danger">${gg.suggesstion}</td>
                    
                </tr>
            </tbody>
            </c:forEach>
        </table>
    </div>
   

        

    

    <!-- bootstrap js2 & local-->
    <script type="text/javascript" src="<c:url value="resources/js/app.js"/>"></script>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>

    <!-- js -->
      
</body>
</html>

<!--
     data-popper-placement="bottom-end"
      dropdown-menu-end 
  -->