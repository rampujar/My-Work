package com.scii.mapper;

import java.util.List;

import com.scii.model.EmployeePojo;

public interface EmployeeMapper {
	
	public EmployeePojo validateEmployee(EmployeePojo employeePojo);
	public int changePassword(EmployeePojo employeePojo);
	public EmployeePojo getCredentials(EmployeePojo employee);
	public EmployeePojo verifyUserForForgotPaswd(EmployeePojo employee);
	public int updatePassword(EmployeePojo employee);
	
	public List<String> getTeams();
	public List<EmployeePojo> searchEmployee(EmployeePojo employeePojo);
	public List<EmployeePojo> employeeList(EmployeePojo employeePojo);
	
	public int addEmployee(EmployeePojo employeePojo);
	public int updateEmployee(EmployeePojo employeePojo);
	public int deleteEmployee(String employeeId);
	
	public EmployeePojo checkIfEmployeeExixts(EmployeePojo employeePojo);
	
}
