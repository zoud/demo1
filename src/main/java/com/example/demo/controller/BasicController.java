package com.example.demo.controller;

import com.example.demo.model.Species;
import com.example.demo.service.SpeciesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * @Author: zoud
 * @Date: 2018/12/6
 **/

@Controller
public class BasicController {

    @Autowired
    private SpeciesService speciesService;

    @RequestMapping({"/", "index", "home"})
    public String index(ModelMap modelMap){

        //查询所有物种
        List<Species> speciesList = speciesService.findAll();

        //保存
        modelMap.put("speciesList", speciesList);

        return "index";
    }
}
