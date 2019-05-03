package com.grimreapers.blog;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AppController {

	/*
	 * Use RequestMethod.GET if the function navigates to a page Use
	 * RequestMethod.POST if the function is handling a form
	 */

	@Autowired
	DBOperations dbOperations;

	@RequestMapping("/")
	public String homePage() {
		System.out.println("DEBUG: homePage() function used");

		return "index.jsp";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginPage() {
		System.out.println("DEBUG: loginPage() function used");

		return "login.jsp";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginUser(@RequestParam("username") String username, @RequestParam("password") String password, HttpServletRequest request, HttpSession session) {
		System.out.println("DEBUG: loginUser() function used");

		return "login.jsp";
	}

	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String signupPage() {
		System.out.println("DEBUG: signupPage() function used");

		return "signup.jsp";
	}

	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public String signupUser(@RequestParam("username") String username, @RequestParam("password") String password,
			@RequestParam("repeatpassword") String repeatpassword) {
		System.out.println("DEBUG: signupUser() function used");
		System.out.println("DEBUG: Username:" + username);
		System.out.println("DEBUG: Password:" + password);
		System.out.println("DEBUG: Repeated Password:" + repeatpassword);

		boolean createdUser = dbOperations.registerNewUser(username, password);

		if (createdUser) {
			return "login.jsp";
		} else {
			return "signup.jsp";
		}
	}
}
