package com.jeju_campking.campking.board.dto.page;

import lombok.Getter;
import lombok.ToString;

@Getter @ToString
public class PageMaker {

    private static final int PAGE_COUNT = 10;

    private int begin, end, finalPage;

    private boolean prev, next;

    private Page page;
    private int totalCount;

    public PageMaker(Page page, int totalCount){
        this.page = page;
        this.totalCount = totalCount;
        makePageInfo();
    }

    private void makePageInfo(){

        this.end = (int) Math.ceil(page.getPageNo() / (double)PAGE_COUNT) * PAGE_COUNT;
        this.begin =this.end-PAGE_COUNT + 1;
        this.finalPage = (int)Math.ceil((double)totalCount / page.getAmount() );
        if(this.finalPage < this.end) this.end = this.finalPage;
        this.prev = begin > 1;
        this.next = end<this.finalPage;
    }
}
