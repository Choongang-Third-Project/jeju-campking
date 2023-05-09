package com.jeju_campking.campking.member.repository;

import com.jeju_campking.campking.member.dto.request.MemberLoginRequestDTO;
import com.jeju_campking.campking.member.dto.request.MemberSignRequestDTO;
import com.jeju_campking.campking.member.entity.Gender;
import com.jeju_campking.campking.member.entity.Member;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
class MemberMapperTest {

    @Autowired
    MemberMapper memberMapper;

    @Test
    @DisplayName("회원가입에 성공해야 한다.")
    void registerTest() {
        MemberSignRequestDTO member = MemberSignRequestDTO.builder()
                .memberEmail("abc123@naver.com")
                .memberPassword("abc123")
                .memberName("조예원")
                .memberPhone("010-1111-1111")
                .memberGender(Gender.F)
                .memberAge(100)
                .memberNickname("앙뇽")
                .build();
        boolean flag = memberMapper.sign(member);
        assertTrue(flag);
    }

    @Test
    @DisplayName("이메일이 abc123인 회원이 로그인을 성공하면 회원 객체를 리턴받고, 그 회원의 이름은 조예원이어야 한다.")
    void loginSuccessTest() {
        MemberLoginRequestDTO dto = MemberLoginRequestDTO.builder()
                .memberEmail("abc123@naver.com")
                .memberPassword("abc123")
                .build();
        Member member = memberMapper.login(dto);
        assertEquals("조예원", member.getMemberName());
    }

    @Test
    @DisplayName("이메일은 맞지만 비밀번호는 틀린 경우, 리턴받은 회원 객체는 비어있어야 한다.")
    void loginFailTest() {
        MemberLoginRequestDTO loginFail = MemberLoginRequestDTO.builder()
                .memberEmail("abc123@naver.com")
                .memberPassword("ttt123")
                .build();
        Member member = memberMapper.login(loginFail);
        assertNull(member);
    }
}