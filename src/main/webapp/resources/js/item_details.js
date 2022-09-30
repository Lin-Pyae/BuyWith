let i = document.getElementById("quantity");
let thumbnail = document.querySelectorAll(".thumbnail");
let mainImg = document.getElementsByClassName("main-img")[0];
let cartItems = document.getElementById("cart_items");
// let addtoCart = document.getElementById("addtoCart");
let cartBody = document.getElementById("cart-body");
let order_submit = document.getElementById("order-submit");
let checkoutSubmit = document.getElementById("checkoutSubmit");

// let product_name = document.getElementById("product-name").innerText;
// let product_price;

let finalTotal = document.getElementById("finalTotal");


let quantity_on_cart=0 ;




//end localstorage







//image change

thumbnail.forEach(function(x){
  x.addEventListener('click',function(e){
  if(e.target.classList.contains("t-1")) {
  mainImg.src = e.target.src;}

  else if(e.target.classList.contains("t-2")){
  mainImg.src = e.target.src;}


  })
   })



//quantity change

function increase(e){
  e.parentNode.querySelector(".quantity").innerText = parseInt (e.parentNode.querySelector(".quantity").innerText)+1;
 console.log(e.parentNode.querySelector(".quantity").innerText);
}

function decrease(e){ 
 if(parseInt(e.parentNode.querySelector(".quantity").innerText) <= 0){
  e.parentNode.querySelector(".quantity").innerText = 0;
 }
 else{
  e.parentNode.querySelector(".quantity").innerText = parseInt (e.parentNode.querySelector(".quantity").innerText)-1;
 }

}


//add to cart 

function addtoCart(e){
  // add to cart
  quantity_on_cart = parseInt(cartItems.innerText);
  let product_name = e.parentNode.parentNode.parentNode.querySelector(".product-name").innerText;
  let product_price = e.parentNode.parentNode.parentNode.querySelector(".product_price").innerText;
  let quantity = parseInt(e.parentNode.parentNode.parentNode.querySelector(".quantity").innerText);
  console.log(e.parentNode.parentNode.parentNode.querySelector(".quantity").innerText);
  

  if(quantity === 0){
    cartItems.innerText= quantity_on_cart + quantity;
  }

  else{
    cartItems.innerText= quantity_on_cart + quantity;
    
    //add to cart body
    let div = document.createElement("div");
    let product_nameIn_cart = document.getElementsByClassName("product_nameIn_cart");


    for (const x of product_nameIn_cart) {
      if(product_name === x.innerHTML){
        x.parentNode.parentNode.querySelector(".quan").value = parseInt(x.parentNode.parentNode.querySelector(".quan").value) + parseInt(quantity);
        x.parentNode.parentNode.querySelector(".total").innerHTML = parseInt(x.parentNode.parentNode.querySelector(".quan").value) * parseInt(product_price);
        calTotal();
        return;
      }
    }

   
    
    div.classList.add("d-flex","justify-content-around","my-3", "displayDel");
    div.innerHTML = `            
                                   <div>
                               <div class="product_nameIn_cart">${product_name} <input type="hidden" name="pname" value="${product_name}"></div>
                                <div class="delcontainer">
                                <button class=" btn btn-sm btn-danger" onclick="cancel(this)">Cancel</button>
                                </div>                               
                                </div> 

                                <div class="priceIncart">${ parseInt(product_price)} <input type="hidden" name="pprice" value="${ parseInt(product_price)}"></div>

                                <div>                        
                                <input class="quan" type="number" min="0" value="${parseInt(quantity)}" name="quantity" onclick="quan(this)"/>
                                </div>

                                <div class="total">${parseInt(product_price)*parseInt(quantity)} <input type="hidden" name="total" value="${parseInt(product_price)*parseInt(quantity)}"></div>
                            `;
                            order_submit.append(div); 
                            
  calTotal();
  
  let totalQuantity = parseInt(product_price)*parseInt(quantity);
  if(localStorage.getItem('data')===null){
    let all =[];
    all.push({p_name:product_name,p_price:product_price,q:quantity,total:totalQuantity});
    localStorage.setItem('data',JSON.stringify(all));
  }
  
  else{
    let localarray = localStorage.getItem('data');
    let toarray = JSON.parse(localarray);
    toarray.push({p_name:product_name,p_price:product_price,q:quantity,total:totalQuantity});
    localStorage.setItem('data',JSON.stringify(toarray));
   
  }
  
  }
  
  
}

//get items in the cart from local storage
window.onload = ()=>{

  console.log("hello from cupcake");
  let retreiveobject = localStorage.getItem('data');
  let cart_quantity = localStorage.getItem('cartQ');
  cartItems.innerHTML = cart_quantity;
  console.log(retreiveobject);
  let toarray = JSON.parse(retreiveobject);
  console.log(toarray);
   
  
    toarray.forEach((x)=>{
    let div = document.createElement("div");
    div.classList.add("d-flex","justify-content-around","my-3", "displayDel");
    div.innerHTML = `            
                                <div>
                               <div class="product_nameIn_cart">${x.p_name}</div>
                                <div class="delcontainer">
                                <button class=" btn btn-sm btn-danger" onclick="cancel(this)">Cancel</button>
                                </div>                               
                                </div> 
  
                                <div class="priceIncart">${parseInt(x.p_price)}</div>
  
                                <div>                        
                                <input class="quan" type="number" min="0" value="${parseInt(x.q)}" onclick="quan(this)"/>
                                </div>
  
                                <div class="total">${parseInt(x.p_price)*parseInt(x.q)}</div>
                            `;
                            order_submit.append(div); 
                     
  })
 
  
  
}





















//order cancel

function cancel(elem){
  let parent = elem.parentNode.parentNode.parentNode;
  let child= parent.querySelector(".quan");
  elem.parentNode.parentNode.parentNode.remove();
  cartItems.innerText = parseInt(cartItems.innerText) - parseInt (child.value);
  
  
   calTotal();
}


//calculate total
function calTotal(){
  let total = document.getElementsByClassName('total');
  let final = [...total].reduce((pv,cv)=> pv+ Number(cv.innerHTML),0);
  finalTotal.innerText = final;
	return final;
}

//quantity change in cart
function quan(e){
  let parent = e.parentNode.parentNode;
  let child = parent.querySelector(".total");
  
  let price = parent.querySelector(".priceIncart").innerText;
  console.log(parent);
   if(parseInt(e.value)==0){
    parent.remove();
      
     if(calTotal()===0){
      cartItems.innerText = 0;
      calTotal();
     }
     else{
     cartItems.innerText -= 1;
      calTotal();
     }
   }
  
   else{
    child.innerText =  parseInt(e.value) * parseInt(price);

    let allQ =   e.parentNode.parentNode.parentNode.querySelectorAll(".quan");
    
   let result =  [...allQ].reduce((pv,cv)=> pv+ parseInt(cv.value),0)
   cartItems.innerText = result;
   
     calTotal();
   }
    
  
  
}






