package com.boardpractice.controller;

import com.boardpractice.domain.Board;
import com.boardpractice.service.BoardService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequiredArgsConstructor
public class BoardController {

    private final BoardService service;

    // todo : Board Create
    @GetMapping("/add")
    public String add() {
        return "board/add";
    }

    @PostMapping("/add")
    public String addPost(Board board,
                          RedirectAttributes rttr) {
        service.add(board);
        rttr.addAttribute("id", board.getId());
        return "redirect:/board";
    }

    // todo : Board Read
    // /board?id=xxx
    @GetMapping("/board")
    public String view(Integer id, Model model) {

        Board board = service.get(id);
        model.addAttribute("board", board);
        return "board/view";
    }

    // HOME
    // todo : 페이징 처리
    @GetMapping("/")
    public String list(@RequestParam(defaultValue = "1", value = "page")
                           Integer page, Model model) {
        model.addAllAttributes(service.list(page));
        return "board/home";
    }

    // todo : Board Update
    // /board?id=xx
    @GetMapping("/board/modify")
    public void modify(Integer id, Model model) {
        model.addAttribute("board", service.get(id));
    }

    @PostMapping("/board/modify")
    public String modifyPost(Board board,
                           RedirectAttributes rttr) {
        service.update(board);
        rttr.addAttribute("id", board.getId());
        System.out.println("board.getId() = " + board.getId());
        return "redirect:/board";
    }

    // todo : Board Delete
    @PostMapping("delete")
    public String delete(Integer id) {
        service.deleteById(id);
        return "redirect:/";
    }
}
