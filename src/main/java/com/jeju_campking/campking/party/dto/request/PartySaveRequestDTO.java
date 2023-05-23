package com.jeju_campking.campking.party.dto.request;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.jeju_campking.campking.party.entity.Party;
import lombok.*;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import java.time.LocalDate;
import java.time.LocalDateTime;

@Getter
@Setter
@EqualsAndHashCode
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class PartySaveRequestDTO {
    @NotBlank(message = "글 제목 없음")
    private String partyTitle;
    @NotBlank(message = "글 내용 없음")
    private String partyContent;

    @JsonFormat(pattern = "yyyy-MM-dd")
    private LocalDate partyStartDate;
    @JsonFormat(pattern = "yyyy-MM-dd")
    private LocalDate partyEndDate;


    @Min(value = 1, message = "1명 미만은 안 됨")
    private Long partySize;

    @Min(value = 1, message = "1명 미만은 안 됨")
    private Long memberNumber;

    @Min(value = 1, message = "1명 미만은 안 됨")
    private Long campNumber;

    public Party toEntity() {
        return Party.builder()
                .partyTitle(this.partyTitle)
                .partyContent(this.partyContent)
                .partyStartDate(this.partyStartDate)
                .partyEndDate(this.partyEndDate)
                .partySize(this.partySize)
                .memberNumber(this.memberNumber)
                .campNumber(this.campNumber)
                .build();
    }

}
