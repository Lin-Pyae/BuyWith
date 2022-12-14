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
    <title>Checkout Page</title>
    <link rel="stylesheet" href="<c:url value="/resources/css/checkstyle.css"/>">
    <!-- bootstrap  -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">

    <!-- feather icon -->
    <link rel="stylesheet" href="<c:url value="/resources/css/feathericon/feather.css"/>">
</head>
<body>
    <!-- back button -->
    <div class="mt-3 container backs">
        <a href="" class="text-decoration-none" id="backicon"><i class="feather feather-arrow-left text-white fs-3 bg-dark p-1"></i></a>
        <span class="h1 checktexts">Checkout Form</span>
    </div>

    <!-- information -->
    <div class="container mt-4">
        <h6 class="text-uppercase fs-6 fw-bold">Dear customer, You've come a long way...</h6>
    </div>

    <div class="container mt-5">
        <p class="fs-5">Personal information</p>

        <form action="/BuyWith/checkout" method="post" class="mt-3 col-12 row justify-content-between">
            <!-- personal information -->
            <div class="col-6 row" >
                <div class="col-6">
                    <label for="id" class="form-label">Customer Id</label>
                    <input type="text" class="form-control" id="id" name="userId" value="${user.getUser_id()}" readonly>
                </div>
                <div class="col-6">
                    <label for="name" class="form-label">Customer Name</label>
                    <input type="text" class="form-control" id="name" value="${user.getName()}" readonly>
                </div>
                <div class="col-6 mt-2">
                    <label for="email" class="form-label">Customer Email</label>
                    <input type="text" class="form-control" id="email" value="${user.getEmail()}" readonly>
                </div>
                <div class="col-6 mt-2">
                    <label for="ph" class="form-label">Phone Number</label>
                    <input type="number" class="form-control" id="ph" value="${user.getPhone_number()}" placeholder="${user.getPhone_number()}" readonly />
                </div>
                
               <%--  <div class="col-6 mt-2">
                    <label for="ph" class="form-label">Street Name</label>
                    <input type="number" class="form-control" id="ph" value="${user.getStreetName()}" readonly />
                </div>
                
                <div class="col-6 mt-2">
                    <label for="ph" class="form-label">City</label>
                    <input type="number" class="form-control" id="ph" value="${user.getCity()}" readonly />
                </div>
                
                <div class="col-6 mt-2">
                    <label for="ph" class="form-label">Town Ship</label>
                    <input type="number" class="form-control" id="ph" value="${user.getTownship()}" readonly />
                </div>
                
               <div class="col-6 mt-2">
                    <label for="ph" class="form-label">Zip Code</label>
                    <input type="number" class="form-control" id="ph" value="${user.getPhone_number()}" readonly />
                </div> --%>
                
                
                
                <div class="col-12 mt-2">
                    <label for="address" class="form-label">Customer Address</label>
                    <input type="text" class="form-control" id="address" value="${user.getStreetName()}   ,${user.getCity()}    ,${user.getTownship()}"  readonly>
                </div> 
                <div class="col-10 mt-2">
                    <label for="cash" class="form-label">Payment</label>
                    <input type="radio" class="form-check-inline ms-3 me-2" id="cash" value="Cash" checked>Cash Only
                    <input type="radio" class="form-check-inline ms-2 me-2" value="Cash" disabled>Credit
                    <input type="radio" class="form-check-inline ms-2 me-2" value="Cash" disabled>Debit
                </div>
                <div class="col-12 mt-2">
                    
                </div>
            </div>
            
            <!-- order details -->
            <div class="col-4 orders">
                <p class="fw-bold col-12 mb-0">Your Order</p>
                <table class="mt-2 table table-borderless orderdetails">
                <thead>
                    <tr>
                        <th>Product Name</th>
                        <th>Price</th>
                        <th>Quantity</th>
                        <th>Total</th> 
                    </tr>
                   </thead>
                    <tbody id="products">
                        
                    </tbody>
                   
                    <tr class="totals">
                    <th></th>
                    <th></th>
                        <th>Total</th>
                      
                      <input type="hidden" name="allTotal" id="alltotal">
                        <td id="total"></td>
                    </tr>

					
                </table>
           
            <input type="submit" value="Confirm Order" class=" btn btn-success" id="confirm">
                <!-- order id -->
                <!-- product name -->
                <!-- product price -->
                <!-- total -->
                <!-- total price -->
            </div>
            
                        
                        
                    
        </form>
    </div>
    
   
    

    <!-- bootstrap js -->
    <script type="text/javascript" src="<c:url value="resources/js/checkout.js"/>"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>

    <!-- javascript -->
    <script>
        // back link
        let back = document.getElementById('back');
        back.addEventListener('click',(e) => {
            window.history.back(); 
        })

        // back button 
        let backicon = document.getElementById('backicon');
        backicon.addEventListener('click',(e) => {
            window.history.back();
        })

    </script>
    
</body>
</html>