package com.jeju_campking.campking.shop.highcost.dto.response;

import com.jeju_campking.campking.shop.highcost.entity.Highcost;
import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
@EqualsAndHashCode
@Builder
public class HighcostResponseDTO {
    private Long highcostIdx;
    private String highcostName;
    private Long highcostPrice;
    private String highcostInfo;
    private String highcostCategory;
    private Long highcostWish;

    /**
     * @return - dto 를 entity 로 변환
     */
    public Highcost toEntity() {
        return Highcost.builder()
                .highcostIdx(this.highcostIdx)
                .highcostName(this.highcostName)
                .highcostPrice(this.highcostPrice)
                .highcostInfo(this.highcostInfo)
                .highcostCategory(this.highcostCategory)
                .highcostWish(this.highcostWish)
                .build();
    }
}
