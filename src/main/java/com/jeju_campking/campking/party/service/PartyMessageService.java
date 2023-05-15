package com.jeju_campking.campking.party.service;

import com.jeju_campking.campking.party.dto.request.PartyMessageRequestDTO;
import com.jeju_campking.campking.party.entity.PartyMessage;
import com.jeju_campking.campking.party.repository.PartyMessageMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.util.List;

@Service
@RequiredArgsConstructor
@Slf4j
public class PartyMessageService {

    private final PartyMessageMapper partyMessageMapper;

    public List<PartyMessage> findAll(Long memberId) throws SQLException {
        List<PartyMessage> list = partyMessageMapper.findAll(memberId);

        log.info("partyMessageService.getAllList.info {}, {}", memberId, list);

        if (list.size() == 0) {
            log.warn("partyMessageService.getAllList.warn {}", list);
            throw new SQLException();
        }

        return list;
    }

    public boolean send(PartyMessageRequestDTO dto) {
        log.info("partyMessageService.send.info {}", dto);

        if (dto == null) {
            log.warn("partyMessageService.send.warn {}", dto);
        }

        return partyMessageMapper.send(dto);
    }
}
