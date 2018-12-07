package com.example.demo.service;

import com.example.demo.dao.GeneDao;
import com.example.demo.model.Gene;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

/**
 * @Author: zoud
 * @Date: 2018/12/7
 **/

@Service
public class GeneService {

    @Autowired
    private GeneDao geneDao;

    public Optional<Gene> findById(int id){
        return geneDao.findById(id);
    }
}
