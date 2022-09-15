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
    <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script> -->

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
                        onclick="location.href=' '">
                </div>
            </div>
        </div>

    </div>

    <div class="container">
        <div class="sidenav" style="height: 216%; width:186px">

            <button class="dropdown-btn"> Language <i class="fa fa-caret-down bg-transparent"></i></button>

            <div class="dropdown-container">
                <a title="Myanmar" href=""><span lang="es" class="bg-transparent" id="myanmar">Burmese</span></a>
                <a title="English" href=""><span lang="es" class="bg-transparent" id="english">English</span></a>

            </div>
            <a href="Help.html">General</a>

            <a href="Aboutus.html">About Us</a>

            <a href="./home_page.html">Home</a>

            <a href="./Setting_2.html">Setting</a>

        </div>
    </div>

    <div class="main_contents">
        <div id="sub_content">
            <form>

                <h2 class="col-md-6 offset-md-3 mt-2">Buy With Help Center</h2>
                <h3 class="col-md-6 offset-md-3.col-md-5 mb-3 mt-4">How can we help?</h3>
                <div class="row">
                    <div class="col-md-2"></div>
                    <h5 class="offset-md-3.col-md-5 mb-3 mt-4">General</h5>

                    <div>
                        <p class="eng">Q:How do I get started?</p>
                        <p class="mm">Q:ဘယ်လိုစတင်ရမလဲ။</p>

                    </div>
                    <p class="eng">A:Visit "Create an Account" under Register for a New Account to sign up as a
                        Preferred
                        Customer so we can begin rewarding you for your online purchases.Next, start thinking about
                        the types of items you buy on a daily, weekly or monthly basis, and special purchases you
                        make throughout the year, such as gifts for birthdays, weddings, anniversaries, graduations,
                        holidays and other special occasions.
                    </p>
                    <p class="mm">A: နှစ်သက်ရာအဖြစ် စာရင်းသွင်းရန် အကောင့်အသစ်တစ်ခုအတွက် မှတ်ပုံတင်ရန် အောက်ရှိ
                        "အကောင့်တစ်ခုဖန်တီးရန်" သို့ ဝင်ရောက်ကြည့်ရှုပါ။
                        ဝယ်ယူသူသည် သင်၏အွန်လိုင်းဝယ်ယူမှုများအတွက် သင့်အား စတင်ဆုချနိုင်မည်ဖြစ်သည်။ ထို့နောက်တွင်၊
                        သင်နေ့စဉ်၊ အပတ်စဉ် သို့မဟုတ် လစဉ်အလိုက် ဝယ်ယူသည့်ပစ္စည်းများအမျိုးအစားများနှင့် မွေးနေ့များ၊
                        မင်္ဂလာပွဲများ၊ နှစ်ပတ်လည်နေ့များအတွက် လက်ဆောင်များကဲ့သို့သော တစ်နှစ်ပတ်လုံး သင်ပြုလုပ်သော
                        အထူးဝယ်ယူမှုများအကြောင်း စဉ်းစားပါ။ ကျောင်းဆင်းပွဲများ၊ အားလပ်ရက်များနှင့်
                        အခြားအထူးအချိန်အခါများ။
                    </p>


                    <p class="eng">Q:What if I forget my Preferred Customer ID?</p>
                    <p class="mm">Q:သုံးစွဲသူ ID ကို မေ့သွားပါက ဘာလုပ်ရမည်နည်း။</p>

                    <p class="eng">A: Please contact Customer Service at customerservice@BUYWITH.COM or call +959 for
                        assistance.</p>
                    <p class="mm">A: customerservice@BUYWITH.COM တွင် ဖောက်သည်ဝန်ဆောင်မှုကို ဆက်သွယ်ပါ သို့မဟုတ်
                        အကူအညီအတွက် +959 ကိုခေါ်ဆိုပါ။</p>


                    <p class="eng">Q:How do I take a Customer Service?</p>
                    <p class="mm">Q:ဖောက်သည်ဝန်ဆောင်မှုကို ဘယ်လိုယူရမလဲ။</p>

                    <p class="eng">Q:We will provide the best customer service.</p>
                    <p class="mm">A:ကျွန်ုပ်တို့သည် ဖောက်သည်များအား အကောင်းဆုံးဝန်ဆောင်မှုပေးပါမည်။</p>


                    <div class="row">
                        <div class="col-md-2"></div>
                        <h5 class="offset-md-3.col-md-5 mb-4 mt-4">Ordering</h5>

                        <p class="eng">Q:How do I search for products?</p>
                        <p class="mm">Q:ပစ္စည်းများကို ဘယ်လိုရှာရမလဲ။</p>
                        <p class="eng">
                            A: Enter a word or phrase into the search box at the top of the screen. Use the drop-down
                            next to the search box to search within a specific category. Then click the magnifying
                            glass icon or press Enter. The site will return all matching products. You can also
                            browse all products within each category by using the category links below the search
                            box.
                        </p>
                        <p class="mm">
                            A: မျက်နှာပြင်၏ထိပ်ရှိ ရှာဖွေရေးအကွက်တွင် စကားလုံး သို့မဟုတ် စကားစုတစ်ခု ထည့်ပါ။ drop-down
                            ကိုသုံးပါ။
                            သီးခြားအမျိုးအစားတစ်ခုအတွင်း ရှာဖွေရန် search box ၏ဘေးတွင်။ ထို့နောက် မှန်ဘီလူးအိုင်ကွန်ကို
                            နှိပ်ပါ သို့မဟုတ် Enter နှိပ်ပါ။ ဆိုက်သည် ကိုက်ညီသော ထုတ်ကုန်အားလုံးကို ပြန်ပေးပါမည်။
                            ရှာဖွေရေးဘောက်စ်အောက်ရှိ အမျိုးအစားလင့်ခ်များကို အသုံးပြုခြင်းဖြင့် အမျိုးအစားတစ်ခုစီရှိ
                            ထုတ်ကုန်အားလုံးကို ရှာဖွေနိုင်သည်။
                        </p>

                        <p class="eng">Q:I cannot find the product I want on the side.Can you help?</p>
                        <p class="mm">Q:ကိုယ်လိုချင်တဲ့ ကုန်ပစ္စည်းကို ရှာမတွေ့ဘူး။ ကူညီပေးနိုင်မလား။</p>

                        <p class="eng">
                            A:If you're having trouble finding the product you're looking for using the search, try
                            browsing for the product using the “Category” filters on the left of every shopping
                            page. If you need additional assistance, please contact Customer Service at
                            customerservice@BUYWITH.COM or call +959 for assistance.
                        </p>
                        <p class="mm">
                            A:ရှာဖွေမှုသုံးပြီး သင်ရှာဖွေနေသော ကုန်ပစ္စည်းကို ရှာဖွေရာတွင် ပြဿနာရှိနေပါက၊ စျေးဝယ်စာမျက်နှာတိုင်း၏ ဘယ်ဘက်ရှိ “အမျိုးအစား” စစ်ထုတ်မှုများကို အသုံးပြုကာ ထုတ်ကုန်အတွက် ရှာဖွေကြည့်ပါ။ အပိုအကူအညီလိုအပ်ပါက ဖောက်သည်ဝန်ဆောင်မှုကို ဆက်သွယ်ပါ။
                        </p>

                        <p class="eng">Q:How do I learn more about an item I want to purchase?</p>
                        <p class="mm">Q:ဝယ်ယူလိုသော ပစ္စည်းတစ်ခုအကြောင်း နောက်ထပ်လေ့လာရန် မည်သို့လုပ်ဆောင်ရမည်နည်း။</p>

                        <p class="eng">
                            A: The item’s description will give you details about the item. For even more information,
                            click the “See Details” link for the product. If you have any questions about the item,
                            you can contact your Shop Consultant.
                        </p>
                        <p class="mm">
                            A: စ္စည်း၏ဖော်ပြချက်သည် သင့်အား ပစ္စည်းနှင့်ပတ်သက်သောအသေးစိတ်အချက်အလက်များကိုပေးလိမ့်မည်။ နောက်ထပ်အချက်အလက်များအတွက်၊ ထုတ်ကုန်အတွက် "အသေးစိတ်အချက်အလက်များကိုကြည့်ပါ" လင့်ခ်ကိုနှိပ်ပါ။ သင့်တွင် ပစ္စည်းနှင့်ပတ်သက်၍ မေးခွန်းများရှိပါက၊ သင်သည် သင်၏ Shop Consultant သို့ ဆက်သွယ်နိုင်ပါသည်။
                        </p>

                        <p class="eng">Q:How do I order product on BUYWITH.COM?</p>
                        <p class="mm">Q:BUYWITH.COM တွင် ကုန်ပစ္စည်းကို မည်သို့မှာယူနိုင်မည်နည်း</p>

                        <p class="eng">
                            A: It's easy. Simply locate the product you're looking for and add it to your shopping
                            cart or purchase directly from the store where appropriate.
                        </p>
                        <p class="mm">
                            A: လွယ်ပါတယ်။ သင်ရှာဖွေနေသောထုတ်ကုန်ကို ရိုးရှင်းစွာရှာဖွေပြီး ၎င်းကိုသင်၏စျေးဝယ်လှည်းတွင်ထည့်ပါ သို့မဟုတ် သင့်လျော်သောစတိုးဆိုင်မှတိုက်ရိုက်ဝယ်ယူပါ။
                        </p>

                        <p class="eng">Q:How do I add items to my shopping cart?</p>
                        <p class="mm">Q:ကျွန်ုပ်၏ စျေးဝယ်ခြင်းသို့ ပစ္စည်းများ မည်သို့ထည့်ရမည်နည်း။</p>

                        <p class="eng">
                            A: OneCart items: Once you've found an item you'd like to purchase, simply click the “See
                            details” magnifying glass icon on the product from any search results page and click on
                            the “Buy it Here” button to add to your OneCart.
                        </p>
                        <p class="mm">
                            A: သင်ဝယ်ယူလိုသည့်ပစ္စည်းကို တွေ့ရှိပြီးသည်နှင့်၊ ရှာဖွေမှုရလဒ်စာမျက်နှာမှ ထုတ်ကုန်ပေါ်ရှိ “အသေးစိတ်အချက်အလက်များကိုကြည့်ရှုရန်” မှန်ဘီလူးအိုင်ကွန်ကို နှိပ်ပြီး သင်၏ OneCart တွင်ထည့်ရန် “ဒီမှာဝယ်ပါ” ခလုတ်ကို နှိပ်ပါ။
                        </p>

                        <p class="eng">Q:What payment methods do you accept?</p>
                        <p class="mm">Q:ဘယ်လိုငွေပေးချေမှုနည်းလမ်းတွေကို လက်ခံပါသလဲ။</p>

                        <p class="eng">
                            A: The main methods of payment are cash on delivery. Other payment methods may also be invailable.
                        </p>
                        <p class="mm">
                            A: ငွေပေးချေမှု၏ အဓိကနည်းလမ်းများမှာ ပစ္စည်းရောက်မှ ငွေသားဖြစ်သည်။ အခြားငွေပေးချေမှုနည်းလမ်းများကို မရရှိနိုင်သေးပါ။
                        </p>

                        <p class="eng">Q:How can I check my order?</p>
                        <p class="mm">Q:ကျွန်ုပ်၏အော်ဒါကို မည်သို့စစ်ဆေးနိုင်မည်နည်း။</p>

                        <p class="eng">
                            A: If your purchase was shipped using USPS or UPS, you can track your order online. The order tracking will display the delivery date of the items you purchased.
                        </p>
                        <p class="mm">
                            A: သင့်ဝယ်ယူမှုကို USPS သို့မဟုတ် UPS အသုံးပြု၍ ပို့ဆောင်ခဲ့ပါက သင့်မှာယူမှုကို အွန်လိုင်းတွင် ခြေရာခံနိုင်ပါသည်။ အမှာစာခြေရာခံသည် သင်ဝယ်ယူထားသောပစ္စည်းများ၏ ပေးပို့သည့်ရက်စွဲကို ပြသပါမည်။
                        </p>
                    </div>
                </div>
            </form>
        </div>
    </div>
    </div>

    <div id="testfooter">
        <span></span>
    </div>
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