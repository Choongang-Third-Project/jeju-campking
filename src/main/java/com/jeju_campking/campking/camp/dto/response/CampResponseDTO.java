package com.jeju_campking.campking.camp.dto.response;

import com.jeju_campking.campking.camp.entity.Camp;

//TODO: 게시판 제목 줄이기, 게시판 글 내용 줄이기
public class CampResponseDTO {

    private final int campNUmber;
    private final String shortDetail;
    private final String shortAddress;

//    public CampResponseDTO(Camp camp) {
//        this.campNUmber = camp.getCampNumber();
//        this.shortAddress = makeShortAddress(camp.getCampAddress());
//        this.shortDetail = makeShortDetail(camp.getCampDetail());
//    }
//
//    private String makeShortAddress(String originAddress) {
//        return sliceString(originAddress, 7);
//
//    }
//
//    private String makeShortDetail(String originDetail) {
//        return sliceString(originDetail, 30);
//    }
//
//    /**
//     *
//     * @param targetString : 줄이고 싶은 원본 문자열
//     * @param wishLength : 짜르고 싶은 글자 수
//     * @return : wishLength보다 targetString이 길면
//     *              wishLength만큼 짤라서 뒤에 ... 붙여서 리턴
//     */
//    private static String sliceString(String targetString, int wishLength) {
//        return (targetString.length() > wishLength)
//                ? targetString.substring(0, wishLength) + "..."
//                : targetString
//                ;
//    }

}
