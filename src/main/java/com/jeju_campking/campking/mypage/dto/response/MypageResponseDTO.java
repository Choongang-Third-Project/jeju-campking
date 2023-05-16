package com.jeju_campking.campking.mypage.dto.response;

import com.jeju_campking.campking.board.entity.Board;
import com.jeju_campking.campking.party.entity.PartyMessage;
import lombok.*;

import java.util.List;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
@EqualsAndHashCode
@Builder
public class MypageResponseDTO {
    private String memberNumber;
    private String memberNickname;
    private List<Board> boardList;
    private List<PartyMessage> sendPartyMessageList;
    private List<PartyMessage> receivePartyMessageList;
    // TODO : 회원의 프로필 사진, 회원등급(일반회원 or 관리자) 추가해야합니다.
}
