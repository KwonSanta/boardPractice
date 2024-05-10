package com.boardpractice.mapper;

import com.boardpractice.domain.Member;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface MemberMapper {

    @Insert("""
            INSERT INTO member
            (email, pwd, address, name, birth_date)
            VALUES
                (#{email}, #{pwd}, #{address}, #{name}, #{birthDate})
            """)
    int insert(Member member);

    @Select("""
            SELECT *
            FROM member
            ORDER BY id DESC 
            """)
    List<Member> selectAll();

    @Select("""
            SELECT name,
                   email,
                   pwd,
                   address,
                   birth_date
            FROM member      
            WHERE id = #{id}
            """)
    Member selectMemberById(Integer id);
}
