package com.jeju_campking.campking.shop.event.dto;

import com.jeju_campking.campking.shop.event.entity.Event;
import lombok.*;

import java.text.DecimalFormat;

@Setter @Getter
@ToString @EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class EventListResponseDTO {

    private Long eventIdx;
    private String eventName;
    private String eventPrice;
    private String eventInfo;
    private String eventCategory;
    private String eventImg;

    public EventListResponseDTO(Event event) {
        this.eventIdx = event.getEventIdx();
        this.eventName = event.getEventName();
        this.eventPrice = makeFormatPrice(event.getEventPrice());
        this.eventInfo = event.getEventInfo();
        this.eventCategory = event.getEventCategory();
        this.eventImg = event.getEventImg();
    }

    private String makeFormatPrice(Long eventPrice) {
        DecimalFormat decimalFormat = new DecimalFormat("##,###,###");
        return decimalFormat.format(eventPrice);
    }
}