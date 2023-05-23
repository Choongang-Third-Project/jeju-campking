package com.jeju_campking.campking.common.reponse;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class ApplicationResult {

    private Integer code;
    private String message;

}
