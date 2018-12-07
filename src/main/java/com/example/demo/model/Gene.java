package com.example.demo.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;

import javax.persistence.*;

/**
 * @Author: zoud
 * @Date: 2018/12/7
 **/

@Entity
@Data
public class Gene {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(length = 30)
    private String geneAccession;

    @Column(length = 30)
    private String geneSymbol;

    @Column(length = 3)
    private String chrom;

    private long startPosition;

    private long endPosition;

    @Column(length = 2)
    private String strand;

    private String description;

    @ManyToOne
    @JsonIgnore
    @JoinColumn(name = "species_id")
    private Species species;
}
