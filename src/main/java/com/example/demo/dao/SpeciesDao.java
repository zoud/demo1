package com.example.demo.dao;

import com.example.demo.model.Species;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @Author: zoud
 * @Date: 2018/12/6
 **/

@Repository
public interface SpeciesDao extends JpaRepository<Species, Integer> {

    @Query(value = "SELECT * FROM species where id=?", nativeQuery = true)
    Species findBySpeciesId(int id);

}
