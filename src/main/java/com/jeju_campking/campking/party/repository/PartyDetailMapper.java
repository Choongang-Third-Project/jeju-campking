package com.jeju_campking.campking.party.repository;

import com.jeju_campking.campking.party.dto.request.PartyMessageRequestDTO;
import com.jeju_campking.campking.party.dto.request.PartyModifyRequestDTO;
import com.jeju_campking.campking.party.dto.response.PartyDetailResponseDTO;
import org.apache.ibatis.annotations.*;


@Mapper
public interface PartyDetailMapper {

    @Select("SELECT\n" +
            "P.party_number,\n" +
            "P.party_title,\n" +
            "P.party_content,\n" +
            "P.party_start_date,\n" +
            "P.party_end_date,\n" +
            "P.party_size,\n" +
            "P.member_number,\n" +
            "M.member_nickname,\n" +
            "M.profile_image\n" +
            "FROM TB_PARTY AS P\n" +
            "JOIN TB_MEMBER AS M\n" +
            "ON P.member_number = M.member_number\n" +
            "WHERE P.party_number = #{partyNumber}")
    PartyDetailResponseDTO detailView(@Param("partyNumber") Long partyNumber);

    @Insert("INSERT INTO TB_PARTY_MESSAGE (\n" +
            "\tparty_message_content,\n" +
            "\tparty_message_sender,\n" +
            "\tparty_message_recipient,\n" +
            "\tparty_number\n" +
            ")\n" +
            "VALUES (\n" +
            "\t#{dto.partyMessageContent}, #{dto.partyMessageSender}," +
            "#{dto.partyMessageRecipient}, #{dto.partyNumber}\n" +
            ")")
    int sendMessage(@Param("dto") PartyMessageRequestDTO dto);


    @Delete("DELETE FROM TB_PARTY\n" +
            "WHERE party_number = #{partyNumber}")
    int deleteByNumber(@Param("partyNumber") Long partyNumber);


    @Update("UPDATE TB_PARTY \n" +
            "SET party_title = #{dto.partyTitle}\n" +
            ", party_content = #{dto.partyContent}\n" +
            ", party_start_date = #{dto.partyStartDate}\n" +
            ", party_end_date = #{dto.partyEndDate}\n" +
            ", party_size = #{dto.partySize}\n" +
            ", camp_number = #{dto.campNumber}\n" +
            "WHERE party_number = #{dto.partyNumber}")
    int modifyByNumber(@Param("dto") PartyModifyRequestDTO dto);
}
