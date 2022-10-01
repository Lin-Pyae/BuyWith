let products= document.getElementById("products");
let total = document.getElementById("total");
let confirm = document.getElementById("confirm");
let alltotal = document.getElementById("alltotal");

let result = 0;

console.log("Checkout htal yauk tal");
let retreive = localStorage.getItem('data');
let allproduct = JSON.parse(retreive);

allproduct.forEach(x => {
    let tr = document.createElement("tr");
	tr.classList.add("w-100");
    tr.innerHTML = `

                            <td>${x.p_name} <input type="hidden" name="pName" value="${x.p_name}">
								<input type="hidden" name="pId" value="${x.pId}">
									</td>
                            <td>${x.p_price} <input type="hidden" name="pPrice" value="${x.p_price}"></td>
                            <td style="text-align:center;">${x.q} <input type="hidden" name="pq" value="${x.q}"></td>
                            <td>${x.total} <input type="hidden" name="ptotal" value="${x.total}"></td>
                        `;
                        products.append(tr);
result +=parseInt(x.total);
console.log("this is product id :"+x.pId);
});

total.innerHTML = result;
alltotal.value= result;


confirm.addEventListener('click',()=>{
	localStorage.clear();
	
})