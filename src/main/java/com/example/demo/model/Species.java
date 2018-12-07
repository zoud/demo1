package com.example.demo.model;

import lombok.Data;

import javax.persistence.*;
import java.util.List;

/**
 * @Author: zoud
 * @Date: 2018/12/6
 **/

@Entity
@Data
public class Species {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    //int 与 数据库Int类型对应
    //long 与 数据库BigInt类型对应
    private int id;

    // String --- Varchar
    @Column(length = 90)
    private String speciesEnglishName;

    @Column(length = 90)
    private String speciesChineseName;

    @Column(length = 90)
    private String speciesLatinName;

    @Column(length = 30)
    private String speciesType;

    @OneToMany(cascade = CascadeType.ALL, orphanRemoval = true)
    @JoinColumn(name = "species_id", referencedColumnName = "id")
    private List<Gene> geneList;

}
