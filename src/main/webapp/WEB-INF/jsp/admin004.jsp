<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<!-- bootstrap css1 & local 1-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

</head>
<style>
    :root{
    --primary: #f3d2b3;
    --secondary:#dda7b0;
    }

    body{
        background-color: var(--primary);
        padding: 0;
        margin: 0;
    }

    table.tables tr:first-child{
        border-bottom:1px solid black;
    }

    .rows2,td{
        border-bottom:1px solid rgb(138, 96, 103);
    }

    table .rows2 td{
        padding-left:20px;
    }

    .btns{
        border:1px solid #967353;
        color:#967353;
    }

    .btns:hover{
        border-color:transparent;
        background-color: #967353;
        color:white;
    }

    .modals{
        background-color: #967353;
    }

    .modaltables{
        border-bottom: none;
    }

    .close-btns{
        background-color: #dfb58f;
        margin-bottom: 10px;
        color:#b32f18;
    }
</style>
<body>

    <h2 class="text-center mt-md-4">Customers Order Infomation</h2>

    <div class="col-md-12 container mt-md-3">
        <table class="table tables">
            <tr class="">
                <th>Customer Id</th>
                <th>Order Id</th>
                <th colspan="2">Total Price</th>
            </tr>
            <c:forEach items="${list}" var="product">
            <tr class="align-middle rows2 ">
                <td>${product.userId}</td>
                <td>${product.orderId}</td>
                <td>${product.total_price}
                    <td class="text-center"><button type="submit" class="btn btns" data-bs-toggle="modal" data-bs-target="#detailmodal">Order Details</button></td>
                </td>
            </tr>
			</c:forEach>
            
        </table>
    </div>

    <!-- start model order details -->
    <div class="modal fade" id="detailmodal">
        <div class="modal-dialog modal-fullscreen-md-down modals">
            <div class="modal-header modaltables">
                <table class="table modal-title text-white modalstables">
                    <tr>
                        <th>Product Name</th>
                        <th>Categries</th>
                        <th>Qty</th>
                        <th>Price</th>
                        <th>Total</th>
                    </tr>

                    <tr class="">
                        <td>Cup Cake</td>
                        <td>Matcha</td>
                        <td>3</td>
                        <td>2000</td>
                        <td>6000</td>
                    </tr>

                    <tr class="" >
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>All Total</td>
                        <td >8000</td>
                    </tr>
                </table>
                
            </div>
            <div class="d-flex justify-content-center closes">
                <button type="submit" class="btn close-btns">Close</button>
            </div>
        </div>
    </div>
   

    <!-- end modal order details-->

     <!-- bootstrap css1 js2 -->
   <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
   integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
   crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
    integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
    crossorigin="anonymous"></script>

</body>
</html>