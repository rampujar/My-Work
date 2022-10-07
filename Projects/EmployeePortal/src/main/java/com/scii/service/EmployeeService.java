package com.scii.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.scii.model.EmployeePojo;

@Service
public interface EmployeeService {
	
	public EmployeePojo validateEmployee(EmployeePojo employeePojo);

	public int changePassword(EmployeePojo employeePojo);

	public EmployeePojo getCredentials(EmployeePojo employee);

	public List<String> getTeams();

	public List<EmployeePojo> searchEmployee(EmployeePojo employeePojo);

	public List<EmployeePojo> employeeList(EmployeePojo employeePojo);

	public int addEmployee(EmployeePojo employeePojo);

	public int updateEmployee(EmployeePojo employeePojo);

	public int deleteEmployee(String employeeId);

	public EmployeePojo verifyUserForForgotPaswd(EmployeePojo employee);

	public EmployeePojo checkIfEmployeeExixts(EmployeePojo employeePojo);

	public int updatePassword(EmployeePojo employee);
	
}

