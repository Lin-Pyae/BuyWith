<!DOCTYPE html>
<html lang="en">

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
  
<head>

  <meta charset="UTF-8">

  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">

    <!-- fontawesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <!--feather icon-->
   
    <link rel="stylesheet" href="<c:url value="/resources/css/feathericon/feather.css"/>">

    <!-- animated css -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>

    <!-- css -->
    <link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">
    
    
  <title>Upload Item</title></head>
  <body>
  	
<form>
	<div class="box">
    <div class="homeBtn"><a href="index.html"><img src="home icon.png" title="Go to home page"></a>
    <a href="index.html"><img src="back icon.png" title="Go back"></a></div>
    <div class="image_label">
     
		<img id="image" style="width: 200px;height: 200px;background-image: url(icon.png);background-size: cover;border:none;" ><br>
    <label for="file-ip-1" title="click here to insert photo">add photo</label>
	<input type="text" name="product_name" placeholder="Enter Product Name" required="required"><br></div>


  
  <select name="category" id="category">
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

    <!--<label for="file-ip-1" title="click here to insert photo">add photo</label>--->
     <input type="file" id="file-ip-1" accept="image/*" onchange="showPreview(event);" required="required">


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
