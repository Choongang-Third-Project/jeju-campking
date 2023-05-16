package com.jeju_campking.campking.board.dto.page;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@AllArgsConstructor
@ToString
public class Page {
    private int pageNo; // 클라이언트가 보낸 페이지 번호
    private int amount; // 클라이언트가 보낸 목록 게시물 수

    public Page(){
        this.pageNo = 1;
        this.amount = 10;
    }

    public void setPageNo(int pageNo){
        if(pageNo<1 || pageNo > Integer.MAX_VALUE){
            this.pageNo = 1;
            return;
        }
        this.pageNo = pageNo;
    }


    public void setAmount(int amount){
        if(amount < 5 || amount > 20){
            this.amount = 10;
            return;
        }
        this.amount = amount;
    }

    public int getPageStart(){
        return (pageNo - 1) * amount;
    }



}
