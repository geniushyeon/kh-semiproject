package com.coffeesazo.order.model.vo;

import java.sql.Date;

public class OrderVo {
	private int orderIndex;
	private String fkMemberId;
	private String orderAddress;
	private String orderPayment;
	private String orderZipcode;
	private String orderText;
	private Date orderDate;
	private String orderReceiver;
	private String orderReceiverPhone;
	private int orderTotalPrice;
	public int getOrderIndex() {
		return orderIndex;
	}
	public void setOrderIndex(int orderIndex) {
		this.orderIndex = orderIndex;
	}
	public String getFkMemberId() {
		return fkMemberId;
	}
	public void setFkMemberId(String fkMemberId) {
		this.fkMemberId = fkMemberId;
	}
	public String getOrderAddress() {
		return orderAddress;
	}
	public void setOrderAddress(String orderAddress) {
		this.orderAddress = orderAddress;
	}
	public String getOrderPayment() {
		return orderPayment;
	}
	public void setOrderPayment(String orderPayment) {
		this.orderPayment = orderPayment;
	}
	public String getOrderZipcode() {
		return orderZipcode;
	}
	public void setOrderZipcode(String orderZipcode) {
		this.orderZipcode = orderZipcode;
	}
	public String getOrderText() {
		return orderText;
	}
	public void setOrderText(String orderText) {
		this.orderText = orderText;
	}
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
	public String getOrderReceiver() {
		return orderReceiver;
	}
	public void setOrderReceiver(String orderReceiver) {
		this.orderReceiver = orderReceiver;
	}
	public String getOrderReceiverPhone() {
		return orderReceiverPhone;
	}
	public void setOrderReceiverPhone(String orderReceiverPhone) {
		this.orderReceiverPhone = orderReceiverPhone;
	}
	public int getOrderTotalPrice() {
		return orderTotalPrice;
	}
	public void setOrderTotalPrice(int orderTotalPrice) {
		this.orderTotalPrice = orderTotalPrice;
	}
	
	
	
}
