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
  
   <link rel="stylesheet" href="<c:url value="/resources/css/shop_update3.css"/>">
   
  <title>Upload Item</title>
  
  </head>
  <body>
  	
<form:form method="POST" action="/BuyWith/addProduct" modelAttribute="product">

	<div class="box">
    <div class="homeBtn"><a href="index.html"><img src='<c:url value="/resources/images/home icon.png" ></c:url>' title="Go to home page"/>   </a>
    <a href="index.html"><img src='<c:url value="/resources/images/back icon.png" ></c:url>' title="Go back"/></a> </div>
    
    <div class="image_label">
    <img id="image" style="width: 200px;height: 200px;background-image: url(icon.png);background-size: cover;border:none;" ><br>
    
    
     <label for="file-ip-1" title="click here to insert photo" >add photo</label>
     <form:input path="img1" type="file" id="file-ip-1" accept="image/*" onchange="showPreview(event);" required='true'/>
	</div>
		
		
		<br>
		<form:input path="product_id" type="text"  placeholder="Enter Product ID" required='true'/>
	<form:input path="product_name" type="text" placeholder="Enter Product Name" required='true'/><br>
	
	
	

  
  <select name="category_name" id="category" style="width:277px;">
    <option value="Birthday Cakes">Birthday Cakes</option>
    <option value="cupcakes">Cupcakes</option>
    <option value="desserts">Desserts</option>   
    <option value="macrons">Macrons</option>
    <option value="toppers">Toppers</option>
  </select>



    <form:input path="color" type="text"  placeholder="Enter color" required='true'/><br>

    <form:input path="size" type="text" placeholder="Enter size(inches)" required='true'/><br>


    <form:input path="topping" type="text" name="topping" placeholder="Enter Topping" required='true'/>
    <br>

    <form:input path="flavour" type="text" name="flavour" placeholder="flavour" required='true'/><br>

  
    <form:input path="quantity" type="text" name="qty" placeholder="Enter QTY" required='true'/><br>

    <form:input path="price" type="text" name="price" placeholder="Enter Price" required='true'/><br>
    
    <form:input path="added_date" type="date" required='true'/><br>

  <textarea id="description" name="description" rows="4" cols="50" placeholder="Enter description" required="required"></textarea>
  <br>

   


     <!---<div class="submit"><div class="submitBtn">--->
      <input type="submit" name="submit" class="submitBtn" value="Add">
   <!---<a href="index.html" > Add</a></div></div>--->
  
	</div>

</form:form>
<script type="text/javascript">
  function showPreview(event){
  if(event.target.files.length > 0){
    var src = URL.createObjectURL(event.target.files[0]);
    var preview = document.getElementById("image");
    preview.src = src;
    preview.style.display = "block";
  }
}
</script>

</script>

  </body>
  </html>