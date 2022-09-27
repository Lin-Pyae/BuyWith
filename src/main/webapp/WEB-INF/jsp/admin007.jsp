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
        <link rel="stylesheet" href="test.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    <spring:url value="/resources/css/test.css" var="testCss" />
		<link href="${testCss}" rel="stylesheet" />
        <title>##</title>
        <style>
        div{
        color:black;
        }
        </style>
</head>

<body>
    
 
    <div class="container">
    
      <div class="main_contents">
    <div id="sub_content">
        <form:form action="/BuyWith/P5update" modelAttribute="product" method="post">
        
        
         <h2 class="col-md-6 offset-md-2 mb-5 mt-4">Product Update</h2>
        
        	<div class="row mb-4">
                <div class="col-md-2"></div>
                <label for="name"  class="col-md-2 col-form-label" title="click here to insert photo">Photo</label>
		<img id="image" style="width: 200px;height: 200px;background-image: url(icon.png);background-size: cover;border:none;" >
               
                <div class="col-md-4"> <br> <br> <br> <br>  <br> <br>  <br> 
                    <form:input path="img1" class="form-control" id="img" />
                </div>
            </div>

           
            <div class="row mb-4">
                <div class="col-md-2"></div>
                <label for="studentID" class="col-md-2 col-form-label">Product ID</label>
                <div class="col-md-4">
                    <form:input path="product_id" class="form-control"  id="productID"  />
                </div>
            </div>
            
            <div class="row mb-4">
                <div class="col-md-2"></div>
                <label for="name" class="col-md-2 col-form-label">Category</label>
                <div class="col-md-4">
                    <form:input path="categories_category_id" class="form-control" id="category" />
                </div>
            </div>
            <div class="row mb-4">
                <div class="col-md-2"></div>
                <label for="dob" class="col-md-2 col-form-label">Name</label>
                <div class="col-md-4">
                    <form:input path="product_name" class="form-control" id="name"/>
                </div>
            </div>
            
            <div class="row mb-4">
                <div class="col-md-2"></div>
                <label for="dob" class="col-md-2 col-form-label">Quantity</label>
                <div class="col-md-4">
                    <form:input path="quantity" class="form-control" id="quantity"/>
                </div>
            </div>
            
            <div class="row mb-4">
                <div class="col-md-2"></div>
                <label for="name" class="col-md-2 col-form-label">Price</label>
                <div class="col-md-4">
                    <form:input path="price" class="form-control" id="price" />
                </div>
            </div>
            
            <div class="row mb-4">
                <div class="col-md-2"></div>
                <label for="name" class="col-md-2 col-form-label">Added Date</label>
                <div class="col-md-4">
                    <form:input path="added_date" class="form-control" id="dob" />
                </div>
            </div>
            
             <div class="row mb-4">
                <div class="col-md-2"></div>
                <label for="name" class="col-md-2 col-form-label">Cake Size</label>
                <div class="col-md-4">
                    <form:input path="size" class="form-control" id="size" />
                </div>
            </div>
            
             <div class="row mb-4">
                <div class="col-md-2"></div>
                <label for="name" class="col-md-2 col-form-label">Flavour</label>
                <div class="col-md-4">
                    <form:input path="flavour" class="form-control" id="flavour" />
                </div>
            </div>
            
             <div class="row mb-4">
                <div class="col-md-2"></div>
                <label for="name" class="col-md-2 col-form-label">Topping</label>
                <div class="col-md-4">
                    <form:input path="topping" class="form-control" id="topping" />
                </div>
            </div>
            
             <div class="row mb-4">
                <div class="col-md-2"></div>
                <label for="name" class="col-md-2 col-form-label">Cake Color</label>
                <div class="col-md-4">
                    <form:input path="color" class="form-control" id="color" />
                </div>
            </div>
            
             <div class="row mb-4">
                <div class="col-md-2"></div>
                <label for="name" class="col-md-2 col-form-label">Descirption</label>
                <div class="col-md-4">
                    <form:textarea path="descirption" class="form-control" rows="4" cols="50" id="descirption" />
                </div>
            </div>
    
  				
  				<div class="row mb-4">
                <div class="col-md-4"></div>
    
                <div class="col-md-4">
                    
                        <button type="submit" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#exampleModal">
                        Update
                    </button>
                          
                 
    
    
    
    
                    <!-- Button trigger modal -->
                    <button type="button" class="btn btn-danger"  onclick="location.href='/BuyWith/return/{product_id}'">
                       
                       <span>Cancel</span> 
                    </button>
    				
                     <!-- Modal -->
                   <!-- <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                        aria-hidden="true">
                        <div class="modal-dialog modal-dialog modal-dialog-centered">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Product Deletion</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                                        
                                </div>
                                <div class="modal-body">
                                    Are you sure you want to delete?
                                </div> -->
                               <%--  <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" onclick="location.href='/BuyWith/Pdelete/${product_id}'">Ok</button>
                                    <button type="button" class="btn btn-danger">Cancel</button>
                                </div>
                            </div>
                        </div>
                        </div> --%>
                        </div>
                        </div>
    
    
    
    
    
            </form:form>
    </div>
</div>
</div>
        <div id="testfooter">
          <!--   <span>Copyright &#169; ACE Inspiration 2022</span> -->
        </div>
        <script>
            /* Loop through all dropdown buttons to toggle between hiding and showing its dropdown content - This allows the user to have multiple dropdowns without any conflict */
            var dropdown = document.getElementsByClassName("dropdown-btn");
            var i;
            
            for (i = 0; i < dropdown.length; i++) {
              dropdown[i].addEventListener("click", function() {
              this.classList.toggle("active");
              var dropdownContent = this.nextElementSibling;
              if (dropdownContent.style.display === "block") {
              dropdownContent.style.display = "none";
              } else {
              dropdownContent.style.display = "block";
              }
              });
            }
            
            //current date
            let today = new Date();
            let date = today.getFullYear()+'-'+(today.getMonth()+1)+'-'+today.getDate();
            document.getElementById("currentdate").innerHTML = date;
            </script>
</body>

</html>

