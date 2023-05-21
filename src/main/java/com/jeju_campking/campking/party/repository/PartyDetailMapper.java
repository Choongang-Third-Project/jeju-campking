package com.jeju_campking.campking.party.repository;

import com.jeju_campking.campking.party.dto.request.PartyMessageRequestDTO;
import com.jeju_campking.campking.party.dto.response.PartyDetailResponseDTO;
import org.apache.ibatis.annotations.*;


@Mapper
public interface PartyDetailMapper {

    @Select("SELECT \n" +
            "party_number\n" +
            ",party_title\n" +
            ",party_content\n" +
            ",party_start_date\n" +
            ",party_end_date\n" +
            ",party_size\n" +
            ",member_number\n" +
            ",camp_number\n" +
            "FROM TB_PARTY\n" +
            "WHERE party_number = #{partyNumber}")
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

}
