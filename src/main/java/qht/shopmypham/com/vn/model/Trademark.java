package qht.shopmypham.com.vn.model;

import java.io.Serializable;

public class Trademark implements Serializable {
	int idTrademark;
	String logo, name, address, phone;
	public Trademark(int idTrademark, String logo, String name, String address, String phone) {
		super();
		this.idTrademark = idTrademark;
		this.logo = logo;
		this.name = name;
		this.address = address;
		this.phone = phone;
	}
	public Trademark() {
		super();
	}
	public int getIdTrademark() {
		return idTrademark;
	}
	public void setIdTrademark(int idTrademark) {
		this.idTrademark = idTrademark;
	}
	public String getLogo() {
		return logo;
	}
	public void setLogo(String img) {
		this.logo = img;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
}
