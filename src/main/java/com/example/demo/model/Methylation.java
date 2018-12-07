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
public class Methylation {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(length = 30)
    private String sample;

    private Float promoter;

    private Float genebody;

    private Float downstream;

    @ManyToOne
    @JsonIgnore
    @JoinColumn(name = "gene_id")
    private Gene gene;
}
