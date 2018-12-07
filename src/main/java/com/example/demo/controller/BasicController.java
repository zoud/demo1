package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @Author: zoud
 * @Date: 2018/12/6
 **/

@Controller
public class BasicController {

    @RequestMapping("/")
    public String index(){
        return "index";
    }
}
