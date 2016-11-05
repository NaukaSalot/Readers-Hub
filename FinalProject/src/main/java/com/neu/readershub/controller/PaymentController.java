package com.neu.readershub.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/payment.htm")
public class PaymentController {

	@RequestMapping(method=RequestMethod.POST)
	public ModelAndView handleRequest(HttpServletRequest hsr, HttpServletResponse hsr1) throws Exception {
		ModelAndView mv = new ModelAndView();
		ModelAndView mav = new ModelAndView();
		 mv.setViewName("loading");
		 Thread.sleep(10000);
		 mav.setViewName("successful");
		return mav;
	}
}
