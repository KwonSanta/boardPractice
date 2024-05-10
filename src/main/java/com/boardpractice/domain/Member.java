package com.boardpractice.domain;

import lombok.Data;

import java.time.LocalDate;

@Data
public class Member {

    private Integer id;
    private String email;
    private String pwd;
    private String address;
    private String name;
    private LocalDate birthDate;

}
