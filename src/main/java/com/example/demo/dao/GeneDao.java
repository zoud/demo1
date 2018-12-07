package com.example.demo.dao;

import com.example.demo.model.Gene;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * @Author: zoud
 * @Date: 2018/12/7
 **/

@Repository
public interface GeneDao extends JpaRepository<Gene, Integer> {


}
