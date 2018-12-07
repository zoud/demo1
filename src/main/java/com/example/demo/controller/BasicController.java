package com.example.demo.controller;

import com.example.demo.model.Gene;
import com.example.demo.model.Methylation;
import com.example.demo.model.Species;
import com.example.demo.service.GeneService;
import com.example.demo.service.SpeciesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

/**
 * @Author: zoud
 * @Date: 2018/12/6
 **/

@Controller
public class BasicController {

    @Autowired
    private SpeciesService speciesService;

    @Autowired
    private GeneService geneService;

    @RequestMapping({"/", "index", "home"})
    public String index(ModelMap modelMap){

        //查询所有物种
        List<Species> speciesList = speciesService.findAll();

        Gene gene = geneService.findById(2).get();

        //保存
        modelMap.put("speciesList", speciesList);
        modelMap.put("gene", gene);

        return "index";
    }
}
