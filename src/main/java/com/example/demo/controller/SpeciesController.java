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
@RequestMapping("/species")
public class SpeciesController {

    @Autowired
    private SpeciesService speciesService;

    @RequestMapping("list")
    public String findAll(ModelMap modelMap){

        //
        List<Species> speciesList = speciesService.findAll();

        modelMap.put("speciesList", speciesList);

        return "species";
    }
}
