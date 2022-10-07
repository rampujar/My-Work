package com.scii.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.scii.model.EmployeePojo;
import com.scii.service.EmployeeService;

@Controller
public class IndexController {

	@Autowired
	EmployeeService employeeService;

	@RequestMapping(value = { "/", "/back" }, method = RequestMethod.GET)
	public ModelAndView loginPage() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("login");
		modelAndView.addObject("TRAINING_EMPLOYEE", new EmployeePojo());
		modelAndView.addObject("loginFlag", "0");
		return modelAndView;
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView validateEmployee(HttpServletRequest request, @ModelAttribute EmployeePojo employee) {
		ModelAndView modelAndView = new ModelAndView();
		HttpSession session = request.getSession();
		EmployeePojo queriedRecord = employeeService.validateEmployee(employee);
		if (null != queriedRecord) {
			String designation = queriedRecord.getDESIGNATION();
			String destinationPage = null;
			if (designation.equals("Manager")) {
				destinationPage = "managerHome";
			} else if (designation.equals("Employee")) {
				destinationPage = "employeeinformation";
			} else {
				destinationPage = "teamleadHome";
			}
			modelAndView.setViewName(destinationPage);
			modelAndView.addObject("employee", new EmployeePojo());
			session.setAttribute("sessionEmployee", queriedRecord);
			modelAndView.addObject("successFlag", "1");
		} else {
			modelAndView.addObject("TRAINING_EMPLOYEE", new EmployeePojo());
			modelAndView.addObject("successFlag", "0");
			modelAndView.setViewName("login");
		}
		return modelAndView;
	}

	@RequestMapping(value = { "/logout" }, method = RequestMethod.GET)
	public ModelAndView logout(HttpServletRequest httpServletRequest) {
		ModelAndView modelAndView = new ModelAndView();
		HttpSession httpSession = httpServletRequest.getSession();
		httpSession.removeAttribute("sessionEmployee");
		modelAndView.setViewName("login");
		modelAndView.addObject("TRAINING_EMPLOYEE", new EmployeePojo());
		modelAndView.addObject("loginFlag", "1");
		return modelAndView;
	}

	@RequestMapping(value = "/changepasswordPage", method = RequestMethod.GET)
	public ModelAndView changePasswordPage() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("changepassword");
		modelAndView.addObject("TRAINING_EMPLOYEE", new EmployeePojo());
		return modelAndView;
	}

	@RequestMapping(value = "/changepassword", method = RequestMethod.POST)
	public ModelAndView changePassword(@ModelAttribute("TRAINING_EMPLOYEE") EmployeePojo employeePojo) {
		ModelAndView model = new ModelAndView();
		EmployeePojo checkIfEmployeeExixt = employeeService.validateEmployee(employeePojo);
		if (null != checkIfEmployeeExixt) {
			int updateFlag = employeeService.changePassword(employeePojo);
			model.setViewName("changepassword");
			model.addObject("databaseRecord", checkIfEmployeeExixt);
			model.addObject("successFlag", "1");
		} else {
			model.setViewName("changepassword");
			model.addObject("successFlag", "0");
		}
		return model;
	}

	@RequestMapping(value = "/forgotPassword", method = RequestMethod.GET)
	public ModelAndView loadForgetPasswordPage() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("forgotPassword");
		modelAndView.addObject("TRAINING_EMPLOYEE", new EmployeePojo());
		return modelAndView;
	}

	@RequestMapping(value = "/getPassword", method = RequestMethod.POST)
	public ModelAndView getPassword(@ModelAttribute EmployeePojo employee) {
		ModelAndView modelAndView = new ModelAndView();

		EmployeePojo employeePojo = employeeService.verifyUserForForgotPaswd(employee);
		if (null != employeePojo) {
			String randomPassword = RandomStringUtils.randomAlphanumeric(8);
			employee.setPASSWORD(randomPassword);
			employeeService.updatePassword(employee);
			modelAndView.addObject("randomPassword", randomPassword);
			modelAndView.addObject("passwordFlag", 1);
		} else {
			modelAndView.addObject("passwordFlag", 0);
		}
		modelAndView.addObject("TRAINING_EMPLOYEE", employee);
		modelAndView.setViewName("forgotPassword");
		return modelAndView;
	}

	@RequestMapping(value = "/registration", method = RequestMethod.GET)
	public ModelAndView goToRegistrationPage() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("registration");
		modelAndView.addObject("TRAINING_EMPLOYEE", new EmployeePojo());
		return modelAndView;
	}

	@ResponseBody
	@RequestMapping(value = "/getTeams", method = RequestMethod.GET)
	public List<String> getTeams() {
		List<String> teams = new ArrayList<String>();
		teams = employeeService.getTeams();
		return teams;
	}

	@RequestMapping(value = "/searchEmployee", method = RequestMethod.POST)
	public ModelAndView searchEmployee(HttpServletRequest httpServletRequest, EmployeePojo employeePojo) {
		ModelAndView modelAndView = new ModelAndView();
		List<EmployeePojo> employees = employeeService.searchEmployee(employeePojo);
		modelAndView.addObject("employee", new EmployeePojo());
		modelAndView.addObject("employeeList", employees);
		EmployeePojo empPojo = (EmployeePojo) httpServletRequest.getSession().getAttribute("sessionEmployee");
		if (empPojo.getDESIGNATION().equals("Manager")) {
			modelAndView.setViewName("managerHome");
		} else {
			modelAndView.setViewName("teamleadHome");
		}
		return modelAndView;
	}

	@RequestMapping(value = "/employeeList", method = RequestMethod.POST)
	public ModelAndView employeeList(EmployeePojo employeePojo) {
		ModelAndView modelAndView = new ModelAndView();
		List<EmployeePojo> employees = employeeService.employeeList(employeePojo);
		modelAndView.addObject("employeeList", employees);
		modelAndView.setViewName("employeeList");
		return modelAndView;
	}

	@RequestMapping(value = "/managerPage", method = RequestMethod.GET)
	public ModelAndView goToManagerPage(HttpServletRequest httpServletRequest, EmployeePojo employeePojo) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("employee", new EmployeePojo());
		EmployeePojo empPojo = (EmployeePojo) httpServletRequest.getSession().getAttribute("sessionEmployee");
		if (empPojo.getDESIGNATION().equals("Manager")) {
			modelAndView.setViewName("managerHome");
		} else {
			modelAndView.setViewName("teamleadHome");
		}

		return modelAndView;
	}

	@RequestMapping(value = "/addEmployee", method = RequestMethod.POST)
	public ModelAndView addEmployee(@ModelAttribute EmployeePojo employeePojo) {
		ModelAndView modelAndView = new ModelAndView();
		EmployeePojo queriedRecord = employeeService.checkIfEmployeeExixts(employeePojo);
		if(null != queriedRecord) {
			modelAndView.addObject("insert", 0);
		} else {
			String employeeTeam = employeePojo.getEMPLOYEE_TEAM().split(",")[0];
			employeePojo.setEMPLOYEE_TEAM(employeeTeam);
			int insertFlag = employeeService.addEmployee(employeePojo);
			if (insertFlag > 0) {
				modelAndView.addObject("insert", insertFlag);
			}
		}
		modelAndView.setViewName("registration");
		modelAndView.addObject("TRAINING_EMPLOYEE", employeePojo);
		return modelAndView;

	}

	@RequestMapping(value = "/gotToUpdate", method = RequestMethod.GET)
	public ModelAndView gotToUpdate(@RequestParam("employeeID") String employeeId) {
		ModelAndView modelAndView = new ModelAndView();
		EmployeePojo employeepojo = new EmployeePojo();
		employeepojo.setEMPLOYEE_ID(employeeId);
		List<EmployeePojo> employees = employeeService.searchEmployee(employeepojo);
		modelAndView.addObject("TRAINING_EMPLOYEE", employees.get(0));
		modelAndView.setViewName("updateEmployee");
		return modelAndView;
	}

	@RequestMapping(value = "/updateEmployee", method = RequestMethod.POST)
	public ModelAndView updateEmployee(@ModelAttribute EmployeePojo employeePojo) {
		ModelAndView modelAndView = new ModelAndView();
		String employeeTeam = employeePojo.getEMPLOYEE_TEAM().split(",")[0];
		employeePojo.setEMPLOYEE_TEAM(employeeTeam);
		int updateFlag = employeeService.updateEmployee(employeePojo);
		if (updateFlag > 0) {
			modelAndView.addObject("TRAINING_EMPLOYEE", employeePojo);
			modelAndView.addObject("update", updateFlag);
			modelAndView.setViewName("updateEmployee");
		}
		return modelAndView;
	}

	@ResponseBody
	@RequestMapping(value = "/deleteEmployee", method = RequestMethod.GET)
	public Map<String, Object> deleteEmployee(@RequestParam String employeeID) {
		Map<String, Object> modelAndView = new HashMap<String, Object>();
		int deleteFlag = employeeService.deleteEmployee(employeeID);
		if (deleteFlag > 0) {
			modelAndView.put("deleteFlag", deleteFlag);
		}
		return modelAndView;
	}

}