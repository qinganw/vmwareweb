package com.qsingwu.paper.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class VMController {

	/**
	 * @return
	 */
	@RequestMapping("/vm")
    public String index() {
        return "vm";
    }
}
