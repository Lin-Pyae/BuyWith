let products= document.getElementById("products");
let total = document.getElementById("total");
let result = 0;

console.log("Checkout htal yauk tal");
let retreive = localStorage.getItem('data');
let allproduct = JSON.parse(retreive);

allproduct.forEach(x => {
    let tr = document.createElement("tr");
	tr.classList.add("w-100");
    tr.innerHTML = `

                            <td>${x.p_name}</td>
                            <td>${x.p_price}</td>
                            <td style="text-align:center;">${x.q}</td>
                            <td>${x.total}</td>
                        `;
                        products.append(tr);
result +=parseInt(x.total);
});

total.innerHTML = result;

