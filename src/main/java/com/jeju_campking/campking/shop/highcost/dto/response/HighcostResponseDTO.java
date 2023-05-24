package com.jeju_campking.campking.shop.highcost.dto.response;

import com.jeju_campking.campking.shop.highcost.entity.Highcost;
import lombok.*;
import org.springframework.format.annotation.NumberFormat;

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
    private String highcostImg;

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
                .highcostImg(this.highcostImg)
                .build();
    }

    /**
     * @return - 장비 가격을 문자열로 변경하고, 천 단위마다 쉼표를 붙이고, 끝에 '원'을 붙여서 리턴합니다.
     */
    public String getHighcostPrice() {
        return String.format("%,d원", highcostPrice);
    }
}
