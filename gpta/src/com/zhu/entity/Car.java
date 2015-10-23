package com.zhu.entity;

/**
 * Car entity. @author MyEclipse Persistence Tools
 */

public class Car implements java.io.Serializable {

	// Fields

	private String id;
	private String carid;
	private String license;
	private Integer number;
	private Integer people;
	private String route;
	private String startdate;
	private String enddate;
	private Integer status;

	// Constructors

	/** default constructor */
	public Car() {
	}

	/** minimal constructor */
	public Car(String id) {
		this.id = id;
	}

	/** full constructor */
	public Car(String id, String carid, String license, Integer number,
			Integer people, String route, String startdate, String enddate,
			Integer status) {
		this.id = id;
		this.carid = carid;
		this.license = license;
		this.number = number;
		this.people = people;
		this.route = route;
		this.startdate = startdate;
		this.enddate = enddate;
		this.status = status;
	}

	// Property accessors

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getCarid() {
		return this.carid;
	}

	public void setCarid(String carid) {
		this.carid = carid;
	}

	public String getLicense() {
		return this.license;
	}

	public void setLicense(String license) {
		this.license = license;
	}

	public Integer getNumber() {
		return this.number;
	}

	public void setNumber(Integer number) {
		this.number = number;
	}

	public Integer getPeople() {
		return this.people;
	}

	public void setPeople(Integer people) {
		this.people = people;
	}

	public String getRoute() {
		return this.route;
	}

	public void setRoute(String route) {
		this.route = route;
	}

	public String getStartdate() {
		return this.startdate;
	}

	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}

	public String getEnddate() {
		return this.enddate;
	}

	public void setEnddate(String enddate) {
		this.enddate = enddate;
	}

	public Integer getStatus() {
		return this.status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

}