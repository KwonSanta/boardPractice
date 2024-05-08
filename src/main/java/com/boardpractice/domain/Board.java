package com.boardpractice.domain;

import lombok.Data;

import java.time.LocalDateTime;

@Data
public class Board {

    private Integer id;
    private String title;
    private String content;
    private String writer;
    private LocalDateTime inserted;
    private LocalDateTime modified;
    private Integer views;
    private Integer likes;
}
