package com.jeju_campking.campking.board.service;


import com.jeju_campking.campking.board.repository.BoardMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
@Slf4j
public class BoardService {
    private final BoardMapper boardMapper;

}
