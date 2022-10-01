package buywith.persistant.dto;

public class CheckOutRequestDTO {
	
	private int orderId;
	 private int cart_items_cart_id;
	 private String orderNote;
	
	 private String payment;
	 private String product_id;
		private int order_id;
		private int order_detail_id;
		private int quantity;
		private double subtotal;
		private int cart_id;
		private double total_price;
		private double all_price;
		 private double AlltotalPrice;
		 
		public double getAlltotalPrice() {
			return AlltotalPrice;
		}
		public void setAlltotalPrice(double alltotalPrice) {
			AlltotalPrice = alltotalPrice;
		}
		public int getOrderId() {
			return orderId;
		}
		public void setOrderId(int orderId) {
			this.orderId = orderId;
		}
		public String getOrderNote() {
			return orderNote;
		}
		public void setOrderNote(String orderNote) {
			this.orderNote = orderNote;
		}
		
		public String getPayment() {
			return payment;
		}
		public void setPayment(String payment) {
			this.payment = payment;
		}
		public String getProduct_id() {
			return product_id;
		}
		public void setProduct_id(String product_id) {
			this.product_id = product_id;
		}
		public int getOrder_id() {
			return order_id;
		}
		public void setOrder_id(int order_id) {
			this.order_id = order_id;
		}
		public int getOrder_detail_id() {
			return order_detail_id;
		}
		public void setOrder_detail_id(int order_detail_id) {
			this.order_detail_id = order_detail_id;
		}
		public int getQuantity() {
			return quantity;
		}
		public void setQuantity(int quantity) {
			this.quantity = quantity;
		}
		public double getSubtotal() {
			return subtotal;
		}
		public void setSubtotal(double subtotal) {
			this.subtotal = subtotal;
		}
		public int getCart_id() {
			return cart_id;
		}
		public void setCart_id(int cart_id) {
			this.cart_id = cart_id;
		}
		public int getUser_id() {
			return user_id;
		}
		public void setUser_id(int user_id) {
			this.user_id = user_id;
		}
		public int getCart_items_cart_id() {
			return cart_items_cart_id;
		}
		public void setCart_items_cart_id(int cart_items_cart_id) {
			this.cart_items_cart_id = cart_items_cart_id;
		}
		public double getTotal_price() {
			return total_price;
		}
		public void setTotal_price(double total_price) {
			this.total_price = total_price;
		}
		public double getAll_price() {
			return all_price;
		}
		public void setAll_price(double all_price) {
			this.all_price = all_price;
		}
		private int user_id;


}
