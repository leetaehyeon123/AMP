package com.jj.amp;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ConsultController {
	
	@RequestMapping(value = "/consult", method = RequestMethod.GET)
	public String consult(Locale locale, Model model) {
	
		
		return "academy/consult/consult";
	}
	@RequestMapping(value = "/consultList", method = RequestMethod.GET)
	public String consultList(Locale locale, Model model) {
	
		
		return "academy/consult/consultList";
	}
	
}
