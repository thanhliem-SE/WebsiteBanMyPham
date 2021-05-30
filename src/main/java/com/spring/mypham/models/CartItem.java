package com.spring.mypham.models;

public class CartItem {
	private SanPham sp=new SanPham();
	private int soLuong;
	public SanPham getSp() {
		return sp;
	}
	public void setSp(SanPham sp) {
		this.sp = sp;
	}
	public int getSoLuong() {
		return soLuong;
	}
	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}
	public CartItem(SanPham sp, int soLuong) {
		super();
		this.sp = sp;
		this.soLuong = soLuong;
	}
	public CartItem() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}