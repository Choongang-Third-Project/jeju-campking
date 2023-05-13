package com.jeju_campking.campking.camp.dto.response;

import lombok.*;

// 홈화면에 표시 할 캠프타입별 카운트, 퍼센트
@Getter
@Setter
@ToString
@EqualsAndHashCode
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class CampTypeCountResponseDTO {
    private int totalCount;
    private int normalCount;
    private int carCount;
    private int caravanCount;
    private int glampingCount;
    private int normalPercentage;
    private int carPercentage;
    private int caravanPercentage;
    private int glampingPercentage;


    public void calculatePercentages() {
        normalPercentage = (int) Math.floor((double) normalCount / totalCount * 100);
        carPercentage = (int) Math.floor((double) carCount / totalCount * 100);
        caravanPercentage = (int) Math.floor((double) caravanCount / totalCount * 100);
        glampingPercentage = (int) Math.floor((double) glampingCount / totalCount * 100);
    }
}

