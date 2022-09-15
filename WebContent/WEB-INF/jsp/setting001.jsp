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

    

    <title>About Us</title>
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
        <div class="sidenav" style="height: 148%;">

            <button class="dropdown-btn"> Language <i class="fa fa-caret-down bg-transparent"></i></button>

            <div class="dropdown-container">
                <a title="Myanmar" href="" ><span lang="es" class="bg-transparent" id="myanmar">Burmese</span></a>
                <a title="English" href=""><span lang="es" class="bg-transparent" id="english">English</span></a>


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


                <h2 class="col-md-6 offset-md-3 mb-0 mt-2">Buy With</h2>
                <h3 class="col-md-6 offset-md-3.col-md-5 mb-2 mt-4">About US</h3>
                <div class="row mb-4">
                    <div class="col-md-2"></div>
                    <h6 class="offset-md-3.col-md-5 mb-2 mt-4 eng">
                        Our mission is to create a real connection between the
                        consumers and the sellers.
                    </h6>
                    <h6 class="offset-md-3.col-md-5 mb-2 mt-4 mm">
                        ကျွန်ုပ်တို့၏ ရည်မှန်းချက်မှာ စားသုံးသူများနှင့် ရောင်းချသူများကြား အမှန်တကယ် ချိတ်ဆက်မှု ဖန်တီးရန်ဖြစ်သည်။
                    </h6>
                </div>

                
                 <img src='<c:url value="/resources/images/icons8-compass-48.png" ></c:url>' /> 
                <h6 class="offset-md-3.col-md-5 mb-0 mt-4">Discover</h6>

                <div class="offset-md-3.col-md-5 mt-4">
                    <p style="text-align: justify;">
                    <p class="eng">
                        BUYWITH.COM is a new kind of shopping comparison site that offers the most comprehensive
                        shopping experience on the web. Our shopping experts have drawn on their industry experience
                        and insider connections to bring you the best cake collection of the stores you can't live
                        without, you love - all in one place.
                    </p>
                    <p class="mm">
                        BUYWITH.COM သည် ဝဘ်ပေါ်တွင် အပြည့်စုံဆုံးစျေးဝယ်အတွေ့အကြုံကို ပေးဆောင်သည့် စျေးဝယ်နှိုင်းယှဉ်ဆိုက်အသစ်တစ်ခုဖြစ်သည်။ ကျွန်ုပ်တို့၏ စျေးဝယ်ကျွမ်းကျင်သူများသည် နှစ်သက်သော စတိုးဆိုင်များ၏ အကောင်းဆုံး ကိတ်မုန့်စုစည်းမှုကို တစ်နေရာတည်းတွင် ယူဆောင်လာစေရန် ၎င်းတို့၏ လုပ်ငန်းအတွေ့အကြုံနှင့် အတွင်းပိုင်းချိတ်ဆက်မှုများကို ရေးဆွဲထားသည်။
                    </p>
                    </p>


                    
                      <img src='<c:url value="/resources/images/icons8-compare-48.png" ></c:url>' /> 
                    <h6 class="offset-md-3.col-md-5 mb-0 mt-4">Compare</h6>

                    <div class="offset-md-3.col-md-5 mt-4">
                        <p style="text-align: justify;">
                        <p class="eng">
                            Search for the cakes you love from the best cake on the web and see them side by side.
                            Decide which price, shipping method, and delivery schedule options work best for
                            you.
                        </p>
                        <p class="mm">
                            ဝဘ်ပေါ်ရှိ အကောင်းဆုံး ကိတ်မုန့်များမှ သင်နှစ်သက်သော ကိတ်မုန့်များကို ရှာဖွေပြီး ၎င်းတို့ကို ဘေးချင်းကပ်ကြည့်ရှုပါ။ မည်သည့်စျေးနှုန်း၊ ပို့ဆောင်မှုနည်းလမ်းနှင့် ပေးပို့မှုအချိန်ဇယားရွေးချယ်မှုများသည် သင့်အတွက် အကောင်းဆုံးဖြစ်မည်ကို ဆုံးဖြတ်ပါ။
                        </p>
                        </p>

                       
                        <img src='<c:url value="/resources/images/icons8-shopping-cart-48.png" ></c:url>' /> 
                        <h6 class="offset-md-3.col-md-5 mb-0 mt-4">Shop</h6>

                        <div class="offset-md-3.col-md-5 mt-4">
                            <p style="text-align: justify;">
                            <p class="eng">
                                And when you're ready to buy, we give you options. You can use your secure
                                BUYWITH.COM account to make purchases across hundreds of OneCart® Trusted Merchant
                                Stores, all backed by BUYWITH.COM's 100% satisfaction guarantee, or you can make
                                your purchase directly from the web sites of one of hundreds of our Partner
                                Stores.
                            </p>
                            <p class="mm">
                                ဝယ်ယူရန်အဆင်သင့်ဖြစ်သောအခါ၊ ကျွန်ုပ်တို့သည် သင့်အား ရွေးချယ်ခွင့်များပေးပါသည်။ BUYWITH.COM ၏ 100% စိတ်ကျေနပ်မှုအာမခံချက်ဖြင့် ပံ့ပိုးထားသော ရာနှင့်ချီသော OneCart® Trusted Merchant Stores များတွင် သင်၏ လုံခြုံသော BUYWITH.COM အကောင့်ကို အသုံးပြု၍ ဝယ်ယူမှုများ ပြုလုပ်နိုင်သည် သို့မဟုတ် ကျွန်ုပ်တို့၏ စတိုးဆိုင်ရာပေါင်းများစွာထဲမှ တစ်ခု၏ ဝဘ်ဆိုက်များမှ သင့်ဝယ်ယူမှုကို သင် တိုက်ရိုက်ပြုလုပ်နိုင်ပါသည်။                            </p>
                            </p>


                          
                             <img src='<c:url value="/resources/images/icons8-share-48.png" ></c:url>' /> 
                            <h6 class="offset-md-3.col-md-5 mb-0 mt-3">Share</h6>

                            <div class="offset-md-3.col-md-5 mt-2">
                                <p style="text-align: justify;">
                                <p class="eng mb-3">
                                    You don't have to take our word for it. Share your opinions through tools like
                                    product reviews and our Facebook page.
                                </p>
                                <p class="mm mb-3">
                                    ထုတ်ကုန်သုံးသပ်ချက်များနှင့် ကျွန်ုပ်တို့၏ Facebook စာမျက်နှာကဲ့သို့သော ကိရိယာများမှတစ်ဆင့် သင့်ထင်မြင်ယူဆချက်များကို မျှဝေပါ။
                                </p>
                                </p>

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

        //translateion
        let myanmar = document.getElementById('myanmar');
        let english = document.getElementById('english');
        let mm = document.querySelectorAll('.mm');
        let eng = document.querySelectorAll('.eng');

        myanmar.addEventListener('click', (e) => {
            for (let m of mm) {
                m.style.display = "block";
            }
            for (let en of eng) {
                en.style.display = "none";
            }

            e.preventDefault();
        })

        english.addEventListener('click', (e) => {
            for (let m of mm) {
                m.style.display = "none";
            }
            for (let en of eng) {
                en.style.display = "block";
            }
            e.preventDefault();

        })
    </script>
</body>

</html>