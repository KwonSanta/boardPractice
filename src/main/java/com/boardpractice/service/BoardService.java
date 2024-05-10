package com.boardpractice.service;

import com.boardpractice.domain.Board;
import com.boardpractice.mapper.BoardMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;
import java.util.Objects;

@Service
@RequiredArgsConstructor
@Transactional(rollbackFor = Exception.class)
public class BoardService {

    private final BoardMapper mapper;

    public void add(Board board) {
        mapper.insert(board);
    }

    public Board get(Integer id) {
        return mapper.selectById(id);
    }

    public Map<String, Object> list(Integer page) {

        // todo : pagination(페이징 처리)
        int postsPerPage = 10;
        int displayPageNum = 10;
        int offset = (page - 1) * 10; // offset
        int totalPosts = mapper.countAll(); // numberOfBoard
        int totalPages = ((totalPosts - 1) / postsPerPage) + 1; // lastPageNumber
        int currentPage = page;
        int endPage = (((currentPage - 1) / displayPageNum) + 1) * displayPageNum;
        int startPage = endPage - displayPageNum + 1;
        int prev = startPage - 10;
        int next = startPage + 10;

        //


        return Map.of("boardList", mapper.selectAllByPage(offset),
                    "pageInfo", Map.of("postsPerPage", postsPerPage,
                                        "displayPageNum", displayPageNum,
                                        "totalPosts", totalPosts,
                                        "totalPages", totalPages,
                                        "currentPage", currentPage,
                                        "startPage", startPage,
                                        "endPage", endPage,
                                        "prev", prev,
                                        "next", next
                ));
    }

    public void update(Board board) {
        mapper.update(board);
    }

    public void deleteById(Integer id) {
        mapper.deleteById(id);
    }
}
