package com.qsingwu.paper.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class MobileDeviceController {

	/**
	 * @return
	 */
	@RequestMapping("/mobiledevice")
    public String index() {
        return "mobiledevice";
    }
	
}
