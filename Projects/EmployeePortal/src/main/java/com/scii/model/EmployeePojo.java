package com.scii.model;

public class EmployeePojo {
	private String EMPLOYEE_ID;
	private String PASSWORD;
	private String FIRST_NAME; 
	private String LAST_NAME;
	private String EMAIL_ID;
	private String JOINED_AS;
	private String JOINED_DATE;
	private String DOB;
	private String EMPLOYEE_TEAM; 
	private String DESIGNATION; 
	private int DELETE_FLAG;
	private String NEW_PASSWORD;
	public String getCONFIRM_PASSWORD() {
		return CONFIRM_PASSWORD;
	}
	public void setCONFIRM_PASSWORD(String cONFIRM_PASSWORD) {
		CONFIRM_PASSWORD = cONFIRM_PASSWORD;
	}
	private String CONFIRM_PASSWORD;
	

	
	public String getEMPLOYEE_ID() {
		return EMPLOYEE_ID;
	}
	public void setEMPLOYEE_ID(String eMPLOYEE_ID) {
		EMPLOYEE_ID = eMPLOYEE_ID;
	}
	public String getPASSWORD() {
		return PASSWORD;
	}
	public void setPASSWORD(String pASSWORD) {
		PASSWORD = pASSWORD;
	}
	public String getFIRST_NAME() {
		return FIRST_NAME;
	}
	public void setFIRST_NAME(String fIRST_NAME) {
		FIRST_NAME = fIRST_NAME;
	}
	public String getLAST_NAME() {
		return LAST_NAME;
	}
	public void setLAST_NAME(String lAST_NAME) {
		LAST_NAME = lAST_NAME;
	}
	public String getEMAIL_ID() {
		return EMAIL_ID;
	}
	public void setEMAIL_ID(String eMAIL_ID) {
		EMAIL_ID = eMAIL_ID;
	}
	public String getJOINED_AS() {
		return JOINED_AS;
	}
	public void setJOINED_AS(String jOINED_AS) {
		JOINED_AS = jOINED_AS;
	}
	public String getJOINED_DATE() {
		return JOINED_DATE;
	}
	public void setJOINED_DATE(String jOINED_DATE) {
		JOINED_DATE = jOINED_DATE;
	}
	public String getDOB() {
		return DOB;
	}
	public void setDOB(String dOB) {
		DOB = dOB;
	}
	public String getEMPLOYEE_TEAM() {
		return EMPLOYEE_TEAM;
	}
	public void setEMPLOYEE_TEAM(String eMPLOYEE_TEAM) {
		EMPLOYEE_TEAM = eMPLOYEE_TEAM;
	}
	public String getDESIGNATION() {
		return DESIGNATION;
	}
	public void setDESIGNATION(String dESIGNATION) {
		DESIGNATION = dESIGNATION;
	}
	public int getDELETE_FLAG() {
		return DELETE_FLAG;
	}
	public void setDELETE_FLAG(int dELETE_FLAG) {
		DELETE_FLAG = dELETE_FLAG;
	}
	public String getNEW_PASSWORD() {
		return NEW_PASSWORD;
	}
	public void setNEW_PASSWORD(String nEW_PASSWORD) {
		NEW_PASSWORD = nEW_PASSWORD;
	}
	@Override
	public String toString() {
		return "EmployeePojo [EMPLOYEE_ID=" + EMPLOYEE_ID + ", PASSWORD=" + PASSWORD + ", FIRST_NAME=" + FIRST_NAME
				+ ", LAST_NAME=" + LAST_NAME + ", EMAIL_ID=" + EMAIL_ID + ", JOINED_AS=" + JOINED_AS + ", JOINED_DATE="
				+ JOINED_DATE + ", DOB=" + DOB + ", EMPLOYEE_TEAM=" + EMPLOYEE_TEAM + ", DESIGNATION=" + DESIGNATION
				+ ", DELETE_FLAG=" + DELETE_FLAG + ", NEW_PASSWORD=" + NEW_PASSWORD + ", CONFIRM_PASSWORD="
				+ CONFIRM_PASSWORD + "]";
	}
	

	

	

}
