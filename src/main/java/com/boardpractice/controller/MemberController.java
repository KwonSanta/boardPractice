package com.boardpractice.controller;

import com.boardpractice.domain.Member;
import com.boardpractice.service.MemberService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequiredArgsConstructor
// /member/xxx
@RequestMapping("member")
public class MemberController {

    private final MemberService service;

    // 회원가입
    @GetMapping("signup")
    public void signupForm() {
    }
    @PostMapping("signup")
    public String signup(Member member) {
        service.signup(member);
        return "redirect:/signin";
    }

    // 로그인
    @GetMapping("signin")
    public void login() {
    }

    // 회원 목록 보기
    @GetMapping("list")
    public void list(Model model) {
        model.addAttribute("memberList", service.list());
    }

    // 단일 회원 정보 보기
    @GetMapping("info")
    public void info(Integer id, Model model) {
        model.addAttribute("member", service.selectMemberById(id));
    }
}
