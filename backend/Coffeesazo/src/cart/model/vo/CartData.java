package cart.model.vo;

public class CartData {
	String fkMemberId;
	String fkProductIndex;
	int orderCount;
	
	public String getFkMemberId() {
		return fkMemberId;
	}
	public void setFkMemberId(String fkMemberId) {
		this.fkMemberId = fkMemberId;
	}
	public String getFkProductIndex() {
		return fkProductIndex;
	}
	public void setFkProductIndex(String fkProductIndex) {
		this.fkProductIndex = fkProductIndex;
	}
	public int getOrderCount() {
		return orderCount;
	}
	public void setOrderCount(int orderCount) {
		this.orderCount = orderCount;
	}
}
