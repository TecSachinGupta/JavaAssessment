package me.sachingupta.dao;

public class VehicleInfo {
	private String _id;
	private String _rev;
	private String make;
	private String model;
	private String year;
	private String vin;
	
	
	public VehicleInfo(String make, String model, String year) {
		super();
		this.make = make;
		this.model = model;
		this.year = year;
		setVin();
	}
	public String getMake() {
		return make;
	}
	public void setMake(String make) {
		this.make = make;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getVin() {
		return vin;
	}
	private void setVin() {
		String tempVin = "";
		if(make.length() <= 2 || make.length() <=4)
			tempVin = tempVin + make.substring(0,2) + "OOO";
		else
			tempVin = tempVin + make.substring(0,5);
		if(model.length() <= 2 || model.length() <=4)
			tempVin = tempVin + model.substring(0,2) + "OOO";
		else
			tempVin = tempVin + model.substring(0,5);
		tempVin = tempVin + year + "000";
		
		this.vin =  tempVin.toUpperCase();
	}
}
