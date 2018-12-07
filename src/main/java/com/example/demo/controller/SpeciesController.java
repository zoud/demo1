package com.example.demo.controller;

import com.example.demo.model.Species;
import com.example.demo.service.SpeciesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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

    @RequestMapping("save")
    public String save(Species species){
        speciesService.save(species);

        //重定向到首页
        return "redirect:/index";
    }

    @RequestMapping("{id}")
    @ResponseBody
    public Species findById(@PathVariable("id") int id){
        return speciesService.findById(id);
    }
}
