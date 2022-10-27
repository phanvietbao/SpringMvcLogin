package edu.pxu.k18b.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import edu.pxu.k18b.model.SignInForm;


@Controller
public class SignInController {

	
	@ModelAttribute("signInForm")
	public SignInForm setSignInForm() {
		return new SignInForm();
	}

	/**
	 * Method to show the initial HTML form
	 * 
	 * @return
	 */
	@GetMapping("/showSignInForm")
	public String showForm() {
		return "login";
	}
	
	@PostMapping("/checkSignInForm")
	public ModelAndView loginUser(@ModelAttribute("signInForm") SignInForm signInForm) {
		ModelAndView modelAndView = new ModelAndView();
		// Implement business logic to save user details into a database
		//
		if (signInForm.getUserName().equals("admin") && signInForm.getPassword().equals("admin")) {
			modelAndView.setViewName("admin");
			modelAndView.addObject("message", "Chào admin");
			modelAndView.addObject("user", signInForm);
			
		} else {
			modelAndView.addObject("user", new SignInForm("", ""));
			modelAndView.setViewName("login");
			modelAndView.addObject("message", "Sai mật khẩu!");
		}

		return modelAndView;
	}
}
