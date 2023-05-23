package com.jeju_campking.campking.party.service;

import com.jeju_campking.campking.party.dto.request.PartyMessageRequestDTO;
import com.jeju_campking.campking.party.entity.PartyMessage;
import com.jeju_campking.campking.party.repository.PartyMessageMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import java.sql.SQLException;
import java.util.List;

@Service
@RequiredArgsConstructor
@Slf4j
public class PartyMessageService {

    private final PartyMessageMapper partyMessageMapper;

    public List<PartyMessage> findAll(Long memberId) throws SQLException {
        List<PartyMessage> list = partyMessageMapper.findAll(memberId);

        log.info("partyMessageService.getAllSendList.info {}, {}", memberId, list);

        // TODO : 보낸 메세지가 없다고 뜨도록 변경해야합니다.
        if (list.size() == 0) {
            log.warn("partyMessageService.getAllList.warn {}", list);
            throw new SQLException();
        }

        return list;
    }

    public List<PartyMessage> findAllReceive(Long memberId) throws SQLException {
        List<PartyMessage> list = partyMessageMapper.findAllReceive(memberId);

        log.info("partyMessageService.getAllReceiveList.info {}, {}", memberId, list);

        // TODO : 받은 메세지가 없다고 뜨도록 변경해야합니다.
        if (list.size() == 0) {
            log.warn("partyMessageService.getAllReceiveList.warn {}", list);
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

    public int unreadCount(Long partyMessageRecipient) {
        return partyMessageMapper.unreadCount(partyMessageRecipient);
    }
}
