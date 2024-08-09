package com.Vaishnavi.oes.Vaishnavi.online.Education.System.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
@Entity
public class JavaStudent {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String fname;
	private String lname;
	private String bday;
	private String bmonth;
	private String byear;
	private String email;
	private String mobile;
	private String gender;
	private String address;
	private String city;
	private String pincode;
	private String state;
	private String country;

	public JavaStudent() {
		super();
		// TODO Auto-generated constructor stub
	}

	public JavaStudent(int id, String fname, String lname, String bday, String bmonth, String byear, String email,
			String mobile, String gender, String address, String city, String pincode, String state, String country) {
		super();
		this.id = id;
		this.fname = fname;
		this.lname = lname;
		this.bday = bday;
		this.bmonth = bmonth;
		this.byear = byear;
		this.email = email;
		this.mobile = mobile;
		this.gender = gender;
		this.address = address;
		this.city = city;
		this.pincode = pincode;
		this.state = state;
		this.country = country;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getBday() {
		return bday;
	}

	public void setBday(String bday) {
		this.bday = bday;
	}

	public String getBmonth() {
		return bmonth;
	}

	public void setBmonth(String bmonth) {
		this.bmonth = bmonth;
	}

	public String getByear() {
		return byear;
	}

	public void setByear(String byear) {
		this.byear = byear;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getPincode() {
		return pincode;
	}

	public void setPincode(String pincode) {
		this.pincode = pincode;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	@Override
	public String toString() {
		return "JavaStudent [id=" + id + ", fname=" + fname + ", lname=" + lname + ", bday=" + bday + ", bmonth="
				+ bmonth + ", byear=" + byear + ", email=" + email + ", mobile=" + mobile + ", gender=" + gender
				+ ", address=" + address + ", city=" + city + ", pincode=" + pincode + ", state=" + state + ", country="
				+ country + "]";
	}

}
