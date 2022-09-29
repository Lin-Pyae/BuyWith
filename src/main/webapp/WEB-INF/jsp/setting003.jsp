<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

   <link rel="stylesheet" href="<c:url value="/resources/css/test.css"/>">
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

   

    <title>Help Center</title>
</head>

<body>
    <div id="testheader">
        <div class="container">
            <div class=row>
                <div class="col-md-5 ">
                    <h3>Setting</h3>
                </div>
                <div class="col-md-6">
                    <p>Your Account: User</p>
                </div>
                <div class="col-md-1">
                    <input type="button" class="btn-basic" id="lgnout-button" value="Log Out"
                        onclick="location.href='/BuyWith/A5logout'">
                </div>
            </div>
        </div>

    </div>

    <div class="container">
        <div class="sidenav">

            <button class="dropdown-btn"> Language <i class="fa fa-caret-down"></i></button>

            <div class="dropdown-container">
                <a title="Myanmar" href="qa-html-language-declarations.es"><span lang="es">Burmese</span></a>
                <a title="English" href="qa-html-language-declarations.es"><span lang="es">English</span></a>


            </div>
            <a href="/BuyWith/A10help">Help Center</a>

            <a href="/BuyWith/A9aboutus">About Us</a>

            <a href="/BuyWith/A10shop">Home</a>

            <a href="/BuyWith/A12setting">Setting</a>

        </div>
    </div>

    <div class="main_contents">
        <div id="sub_content">
            <form>
                <h2 class="col-md-6 offset-md-3 mb-0 mt-2">Buy With Help Center</h2>
                <h3 class="col-md-6 offset-md-3.col-md-5 mb-3 mt-4">How can we help?</h3>
                <div class="row mb-4">
                    <div class="col-md-2"></div>
                    <h5 class="offset-md-3.col-md-5 mb-5 mt-4">General</h5>

                    <div>
                        <p><a>Q:How do I get started?</a></p>
                    </div>
                    <p><a>A:Visit "Create an Account" under Register for a New Account to sign up as a Preferred
                            Customer so we can begin rewarding you for your online purchases.Next, start thinking about
                            the types of items you buy on a daily, weekly or monthly basis, and special purchases you
                            make throughout the year, such as gifts for birthdays, weddings, anniversaries, graduations,
                            holidays and other special occasions.</a></p>

                    <p><a>Q:What if I forget my Preferred Customer ID?</a></p>
                    <p><a>A: Please contact Customer Service at customerservice@BUYWITH.COM or call +959 for
                            assistance.</a></p>

                    <p><a>Q:How do I take a Customer Service?</a></p>
                    <p><a>We will provide the best customer service.</a></p>

                    <div class="row mb-4">
                        <div class="col-md-2"></div>
                        <h5 class="offset-md-3.col-md-5 mb-5 mt-4">Ordering</h5>

                        <p><a>Q:How do I search for a product?</a></p>
                        <p><a>A: Enter a word or phrase into the search box at the top of the screen. Use the drop-down
                                next to the search box to search within a specific category. Then click the magnifying
                                glass icon or press Enter. The site will return all matching products. You can also
                                browse all products within each category by using the category links below the search
                                box.</a></p>

                        <p><a>Q:I cannot find the product I want on the side.Can you help?</a></p>
                        <p><a>A: If you're having trouble finding the product you're looking for using the search, try
                                browsing for the product using the “Category” filters on the left of every shopping
                                page. If you need additional assistance, please contact Customer Service at
                                customerservice@BUYWITH.COM or call +959 for assistance.</a></p>

                        <p><a>Q:How do I learn more about an item I want to purchase?</a></p>
                        <p><a>A: The item’s description will give you details about the item. For even more information,
                                click the “See Details” link for the product. If you have any questions about the item,
                                you can contact your Shop Consultant.</a></p>

                        <p><a>Q:How do I order product on BUYWITH.COM?</a></p>
                        <p><a>A: It's easy. Simply locate the product you're looking for and add it to your shopping
                                cart or purchase directly from the store where appropriate.</a></p>

                        <p><a>Q:How do I add items to my shopping cart?</a></p>
                        <p><a>A: OneCart items: Once you've found an item you'd like to purchase, simply click the “See
                                details” magnifying glass icon on the product from any search results page and click on
                                the “Buy it Here” button to add to your OneCart. </a></p>

                        <p><a>Q:What payment methods do you accept?</a></p>
                        <p><a>A: The main methods of payment are cash on delivery. Other payment methods may also be
                                available.</a></p>

                        <p><a>Q:How can I check my order?</a></p>
                        <p><a>A: If your purchase was shipped using USPS or UPS, you can track your order online. The
                                order tracking will display the delivery date of the items you purchased.</a></p>
                    </div>
                </div>
        </div>
    </div>
    </form>
    </div>
    </div>
    </div>

    <div id="testfooter">
        <span></span>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
    <script>
        /* Loop through all dropdown buttons to toggle between hiding and showing its dropdown content - This allows the user to have multiple dropdowns without any conflict */
        var dropdown = document.getElementsByClassName("dropdown-btn");
        var i;

        for (i = 0; i < dropdown.length; i++) {
            dropdown[i].addEventListener("click", function () {
                this.classList.toggle("active");
                var dropdownContent = this.nextElementSibling;
                if (dropdownContent.style.display === "block") {
                    dropdownContent.style.display = "none";
                } else {
                    dropdownContent.style.display = "block";
                }
            });
        }
    </script>
</body>

</html>