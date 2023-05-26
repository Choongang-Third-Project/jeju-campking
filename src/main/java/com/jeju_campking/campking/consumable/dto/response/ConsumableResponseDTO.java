package com.jeju_campking.campking.consumable.dto.response;

import com.jeju_campking.campking.consumable.entity.Consumable;
import lombok.*;

import java.text.DecimalFormat;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
@EqualsAndHashCode
@Builder
public class ConsumableResponseDTO {
    private Long consumableIdx;
    private String consumableName;
    private String consumablePrice;
    private String consumableInfo;
    private String consumableCategory;
    private String consumableImg;
    private Long consumableWish;


    public  ConsumableResponseDTO(Consumable consumable){
        this.consumableIdx = consumable.getConsumableIdx();
        this.consumableName = consumable.getConsumableName();
        this.consumablePrice = PriceFormat(consumable.getConsumablePrice());
        this.consumableInfo = consumable.getConsumableInfo();
        this.consumableCategory = consumable.getConsumableCategory();
        this.consumableImg = consumable.getConsumableImg();
        this.consumableWish = consumable.getConsumableWish();
    }

    public String PriceFormat(int consumablePrice){
        DecimalFormat decimalFormat = new DecimalFormat("##,###,###");
        return decimalFormat.format(consumablePrice);

    }


}
