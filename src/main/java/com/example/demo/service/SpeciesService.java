package com.example.demo.service;

import com.example.demo.dao.SpeciesDao;
import com.example.demo.model.Species;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author: zoud
 * @Date: 2018/12/6
 **/

@Service
public class SpeciesService {

    @Autowired
    private SpeciesDao speciesDao;

    public List<Species> findAll(){
        //select * from species;
        return speciesDao.findAll();
    }

    public Species save(Species species){

        //insert into species;
        return speciesDao.save(species);
    }
}
