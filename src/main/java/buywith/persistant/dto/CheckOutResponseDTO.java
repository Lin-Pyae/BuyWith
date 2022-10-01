package buywith.persistant.dto;

public class CheckOutResponseDTO {

	private String product_name;
	private int orderId;
	 private int cart_items_cart_id;
	
	 private double totalPrice;

	 private String product_id;
		private int order_id;
		private int order_detail_id;
		private int quantity;
		private double subtotal;
		private int cart_id;
		private double total_price;
		private double all_price;
		private int userId;
		public int getUserId() {
			return userId;
		}
		public void setUserId(int userId) {
			this.userId = userId;
		}
		public int getOrderId() {
			return orderId;
		}
		public void setOrderId(int orderId) {
			this.orderId = orderId;
		}
		
		public double getTotalPrice() {
			return totalPrice;
		}
		public void setTotalPrice(double totalPrice) {
			this.totalPrice = totalPrice;
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
		public int getCart_items_cart_id() {
			return cart_items_cart_id;
		}
		public void setCart_items_cart_id(int cart_items_cart_id) {
			this.cart_items_cart_id = cart_items_cart_id;
		}
		public String getProduct_name() {
			return product_name;
		}
		public void setProduct_name(String product_name) {
			this.product_name = product_name;
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
}
