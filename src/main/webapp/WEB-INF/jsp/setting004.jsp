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
    <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"> -->

    <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> -->

    <!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script> -->

    <title>Setting</title>
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

            <button class="dropdown-btn"> Language <i class="fa fa-caret-down bg-transparent"></i></button>

            <div class="dropdown-container">
                <a title="Myanmar" href="#"><span lang="es" class="bg-transparent" id="burmese">Burmese</span></a>
                <a title="English" href="#"><span lang="es" class="bg-transparent" id="english">English</span></a>
            </div>
            <a href="/BuyWith/A10help">General</a>

            <a href="AboutUs.html">About Us</a>

            <a href="/BuyWith/A10shop">Home</a>

            <a href="/BuyWith/A12setting">Setting</a>
        </div>
    </div>

    <div class="main_contents">
        <div id="sub_content">
            <form">
                <h2 class="col-md-7 offset-md-4 mb-5 mt-3">Buy With</h2>
               
                 <img src='<c:url value="/resources/images/icons8-compare-48.png" ></c:url>' /> 
                <h2 class="col-md-7 offset-md-3.col-md-5 mb-3 mt-4 aligns" id="privacy">Privacy Policy</h2>
                <div class="row mb-4">
                    <div class="col-md-2"></div>
                    <h5 class="offset-md-3.col-md-5 mb-4 mt-4 aligns">Dear Customer,</h5>

                    <p class="aligns ms-1" id="privacy1">We are pleased that you are interested in data protection.
                        We would like to give you an easily understandable overview of our data protection process.</p>

                    <div class="offset-md-3.col-md-5 mt-3">

                        <p style="text-align: justify;">
                        <p>
                        <p class="aligns ms-1" style="margin-top:-20px;" id="privacy2"> Our goal is to provide you with
                            an amazing
                            customer experience that also means that you
                            can always trust us, that we are always transparent and honest to you.
                            Your trust in our product is the reason why we can provide yu with an amazing customer
                            experience.We would like to thank you for this cooperation.</p>
                        </p>
                        </p>

                        <h5 class="offset-md-3.col-md-5 mb-3 mt-4 aligns">Who we are</h5>

                        <p class="aligns">We are Buy With(Myanmar) Co.,ltd. and we love data protection.</p>

                        <div class="offset-md-3.col-md-5 mt-4">

                            <p class="aligns" id="privacy3">While visiting our website, registering or placin orders,you agree to this privacy policy. </p>

                            <div class="offset-md-3.col-md-5 mt-4">
                                <p style="text-align: justify;">
                                <p style="margin-right: 200px">
                                <p class="aligns" id="privacy4">As data controller, we determine how we process your personal data, for what
                                    purpose and by what means. While we are required by law to provide you with all
                                    of the following information, we do so primarily out of the belief that a
                                    partnership should always be honest.</p>
                                </p>
                                </p>

                                <div class="offset-md-3.col-md-5 mt-4">
                                    <p style="text-align: justify;">
                                    <p style="margin-right: 200px">
                                    <p class="aligns" id="privacy5">As data controller we are responsible that all our processing activites are in accordance with legal requirements but also you may reasonably expect
                                        these processing of your personal data (link to "legitimate interests").</p>
                                    </p>
                                    </p>

                                    <div class="offset-md-3.col-md-5 mt-4">
                                        <p style="text-align: justify;">
                                        <p style="margin-right: 200px">
                                        <p class="aligns" id="privacy6">If you have any questions about data protection at Buywith, you can also
                                            contact our data protection officer at any time by sending an email to
                                            support@buywithgmail.com.</p>
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

            let privacy = document.getElementById('privacy');
            let privacy1 = document.getElementById('privacy1');
            let privacy2 = document.getElementById('privacy2');
            let privacy3 = document.getElementById('privacy3');
            let privacy4 = document.getElementById('privacy4');
            let privacy5 = document.getElementById('privacy5');


            // burmese translate
            let burmese = document.getElementById('burmese');
            let english = document.getElementById('english');


            burmese.addEventListener('click', () => {
                privacy.innerText = "လုံခြုံမှု မူ၀ါဒ";
                privacy1.innerText = `သင်သည် ဒေတာကာကွယ်ရေးကို စိတ်ဝင်စားသည့်အတွက် ကျွန်ုပ်တို့၀မ်းမြောက်မိပါသည်။ ကျွန်ုပ်တို့၏ဒေတာကာကွယ်မှုလုပ်ငန်းစဉ်ကို အလွယ်တကူ\nနားလည်နိုင်သော အကြံပြုသုံးသပ်ချက် ပေးလိုပါသည်။`;
                privacy2.innerHTML = "ကျွန်ုပ်တို့၏ရည်မှန်းချက်မှာ customers များအား အကောင်းဆုံးလုံခြုံမှု ပေးဆောင်ရန်ဖြစ်ပြီး ကျွန်ုပ်တို့သည် customers များအပေါ် ပွင့်လင်းပြီး စစ်မှန်မှုရှိကြောင်းအမြဲတမ်းယုံကြည်နိုင်ပါသည်။ ကျွန်ုပ်တို့၏ထုတ်ကုန်အပေါ် သင်၏ယုံကြည်မှုသည် အံ့သြဖွယ်ဖောက်သည်အတွေ့အကြုံကို ပေးစွမ်းနိုင်သည့် အကြောင်းရင်းဖြစ်ပါသည်။ ပူးပေါင်းဆောင်ရွက်မှုအတွက် ကျေးဇူးတင်ပါသည်။";
                privacy3.innerHTML = "ကျွန်ုပ်တို့၏ဝဘ်ဆိုဒ်သို့အသုံးပြု မှာကြားမှုများပြုလုပ်ရန် စာရင်းသွင်းနေစဉ်၊ သင်သည် ဤကိုယ်ရေးကိုယ်တာမူဝါဒကို သဘောတူပါသည်။";
                privacy4.innerHTML = "ဒေတာထိန်းချုပ်သူအနေဖြင့်၊ ကျွန်ုပ်တို့သည် သင့်ကိုယ်ရေးကိုယ်တာဒေတာကို မည်သို့လုပ်ဆောင်သည်၊ မည်သည့်ရည်ရွယ်ချက်အတွက်နှင့် မည်သည့်နည်းလမ်းဖြင့် လုပ်ဆောင်သည်ကို ဆုံးဖြတ်ပါသည်။ သင့်အား အောက်ပါအချက်အလက်များအားလုံးကို ပေးဆောင်ရန် ဥပဒေအရ ကျွန်ုပ်တို့တောင်းဆိုထားသော်လည်း၊ မိတ်ဖက်အဖွဲ့သည် အမြဲတမ်းရိုးသားသင့်သည်ဟု ယုံကြည်ချက်ကြောင့် ကျွန်ုပ်တို့သည် အဓိကလုပ်ဆောင်ပါသည်။";
                privacy5.innerHTML = "ဒေတာထိန်းချုပ်သူအနေဖြင့် ကျွန်ုပ်တို့၏လုပ်ဆောင်မှုလုပ်ဆောင်ချက်များအားလုံးသည် ဥပဒေသတ်မှတ်ချက်များနှင့်အညီဖြစ်ရန် တာဝန်ရှိသော်လည်း သင့်ကိုယ်ရေးကိုယ်တာအချက်အလက်များ၏ ဤလုပ်ဆောင်မှုကို ကျိုးကြောင်းဆီလျော်စွာ မျှော်လင့်နိုင်သည် ('တရားဝင်အကျိုးစီးပွားများ' သို့ လင့်ခ်)။";
                privacy6.innerHTML = "ဒေတာကာကွယ်မှုဆိုင်ရာ မေးခွန်းများရှိပါက၊ support@buywithgmail.com သို့ အီးမေးလ်ပေးပို့ခြင်းဖြင့် ကျွန်ုပ်တို့၏ဒေတာကာကွယ်ရေးအရာရှိကို အချိန်မရွေး ဆက်သွယ်နိုင်ပါသည်။";
            });

            english.addEventListener('click',(e) => {
                privacy.innerText = "Privacy Policy";
                privacy1.innerText = `We are pleased that you are interested in data protection. We would like to give you an easily understandable overview of our data protection process.`;
                privacy2.innerHTML = "Our goal is to provide you with an amazing customer experience that also means that you can always trust us, that we are always transparent and honest to you. Your trust in our product is the reason why we can provide yu with an amazing customer experience.We would like to thank you for this cooperation.";
                privacy3.innerHTML = "While visiting our website, registering or placin orders,you agree to this privacy policy.";
                privacy4.innerHTML = "As data controller, we determine how we process your personal data, for what purpose and by what means. While we are required by law to provide you with all of the following information, we do so primarily out of the belief that a partnership should always be honest.";
                privacy5.innerHTML = "As data controller we are responsible that all our processing activites are in accordance with legal requirements but also you may reasonably expect these processing of your personal data (link to 'legitimate interests').";
                privacy6.innerHTML = "If you have any questions about data protection at Buywith, you can also contact our data protection officer at any time by sending an email to support@buywithgmail.com.";
            })
        </script>
</body>

</html>