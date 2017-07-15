package com.gmail.illya1pelykh.controller;

import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@EnableAutoConfiguration
public class MainController {

    @GetMapping("/")
    public String index() {
	return "index";
    }

}
