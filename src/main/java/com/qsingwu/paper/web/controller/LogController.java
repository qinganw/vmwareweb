package com.qsingwu.paper.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class LogController {

	/**
	 * @return
	 */
	@RequestMapping("/log")
    public String index() {
        return "log";
    }
	
}
