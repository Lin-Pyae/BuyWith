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
  	
<form>
	<div class="box">
    <div class="homeBtn"><a href="index.html"><img src='<c:url value="/resources/images/home icon.png" ></c:url>' title="Go to home page"/>   </a></div>
    <div class="homeBtn"><a href="index.html"><img src='<c:url value="/resources/images/back icon.png" ></c:url>' title="Go back"/></a>
    <div class="image_label">
    
    <div class="addPhoto">
    
    <img id="image" style="width: 200px;height: 200px;background-image: url(icon.png);background-size: cover;border:none;" >
    
    <div>
     <label for="file-ip-1" title="click here to insert photo" style="margin-top:83px; margin-left:176px">add photo</label>
     <input type="file" id="file-ip-1" accept="image/*" onchange="showPreview(event);" required="required">
	</div>
		
		</div>
		<br>
	<input type="text" name="product_name" placeholder="Enter Product Name" required="required"><br>
	
	</div>

  
  <select name="category" id="category" style="width:277px;">
    <option value="birthdayCake">Birthday Cake</option>
    <option value="dessert">Dessert</option>
    <option value="cupcake">Cupcake</option>
    <option value="macrons">Macrons</option>
    <option value="topper">Topper</option>
  </select>

<!---
<div class="checkBox">
<div class="form-control">
  <input type="checkbox" name="category" id="birthday" name="birthdayCake" value="birthdayCake">
Birthday Cake </div>

<div class="form-control" >
  <input type="checkbox" name="category" id="cupcake" name="cupCake" value="cupCake">
Cupcake
  </div>

<div class="form-control">
  <input type="checkbox" name="category" id="macrons" name="macrons" value="macrons">
Macrons
  </div>

<div class="form-control">
  <input type="checkbox" name="category" id="dessert" name="dessert" value="dessert">
Desserts
  </div>

<div class="form-control">
  <input type="checkbox" name="category" id="topper" name="topper" value="topper">
Toppers
  <br>
  </div>
  </div>
  --->

    <input type="text" name="color" placeholder="Enter color" required="required"><br>

    <input type="text" name="size" placeholder="Enter size(inches)" required="required"><br>


    <input type="text" name="topping" placeholder="Enter Topping" required="required">
    <br>

    <input type="text" name="flavour" placeholder="flavour" required="required"><br>

  
    <input type="text" name="qty" placeholder="Enter QTY" required="required"><br>

    <input type="text" name="price" placeholder="Enter Price" required="required"><br>

  <textarea id="description" name="description" rows="4" cols="50" placeholder="Enter description" required="required"></textarea>
  <br>

   


     <!---<div class="submit"><div class="submitBtn">--->
      <input type="submit" name="submit" class="submitBtn" value="Add">
   <!---<a href="index.html" > Add</a></div></div>--->
  
	</div>

</form>
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