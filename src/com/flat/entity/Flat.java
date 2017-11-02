package com.flat.entity;
import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;


@Entity
@Table(name="flatinfo1234")

public class Flat implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	
	int sellerId;
	/*@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="SEQ")
	@SequenceGenerator(name="SEQ",sequenceName="flatid",allocationSize=1,initialValue=1)
	*/
	
	
	String city;
	String location;
	String apartmentName;
	
	@Id
	String flatNumber;
	String flatType;
	String squareFeet;
	String flatPrice;
	String flatimage;
	String status="Avaliable";;
	
	
	
	public String getFlatimage() {
		return flatimage;
	}
	public void setFlatimage(String flatimage) {
		this.flatimage = flatimage;
	}
	public int getSellerId() {
		return sellerId;
	}
	public void setSellerId(int sellerId) {
		this.sellerId = sellerId;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getApartmentName() {
		return apartmentName;
	}
	public void setApartmentName(String apartmentName) {
		this.apartmentName = apartmentName;
	}


	public String getFlatNumber() {
		return flatNumber;
	}
	public void setFlatNumber(String flatNumber) {
		this.flatNumber = flatNumber;
	}
	public String getFlatType() {
		return flatType;
	}
	public void setFlatType(String flatType) {
		this.flatType = flatType;
	}
	public String getSquareFeet() {
		return squareFeet;
	}
	public void setSquareFeet(String squareFeet) {
		this.squareFeet = squareFeet;
	}
	public String getFlatPrice() {
		return flatPrice;
	}
	public void setFlatPrice(String flatPrice) {
		this.flatPrice = flatPrice;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	
	
}
	
