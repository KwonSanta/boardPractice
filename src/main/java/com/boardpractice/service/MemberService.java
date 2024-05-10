package com.boardpractice.service;

import com.boardpractice.domain.Member;
import com.boardpractice.mapper.MemberMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional(rollbackFor = Exception.class)
@RequiredArgsConstructor
public class MemberService {

    private final MemberMapper mapper;

    public void signup(Member member) {
        mapper.insert(member);
    }

    public void signin() {

    }

    public List<Member> list() {
        return mapper.selectAll();
    }

    public Member selectMemberById(Integer id) {
        return mapper.selectMemberById(id);
    }
}
