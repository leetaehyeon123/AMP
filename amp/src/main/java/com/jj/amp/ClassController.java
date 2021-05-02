package com.jj.amp;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ClassController {
	
	@RequestMapping(value = "/myclass", method = RequestMethod.GET)
	public String myclass(Locale locale, Model model) {
	
		
		return "academy/class/myclass";
	}
	@RequestMapping(value = "/registration", method = RequestMethod.GET)
	public String registration(Locale locale, Model model) {
	
		
		return "academy/class/registration";
	}
	
	@RequestMapping(value = "/rim", method = RequestMethod.GET)
	public String rim(Locale locale, Model model) {
	
		
		return "academy/class/rim";
	}
	@RequestMapping(value = "/classList", method = RequestMethod.GET)
	public String classList(Locale locale, Model model) {
	
		
		return "academy/class/classList";
	}
}
