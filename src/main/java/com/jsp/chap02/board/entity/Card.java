package com.jsp.chap02.board.entity;

import java.time.LocalDateTime;

public class Card {

    private int cardNo; // 게시물 카드 번호
    private String title; // 제목
    private String content; // 내용
    private int viewCount; // 조회수
    private LocalDateTime regDate; // 작성시간

    public Card() {
    }

    public Card(int cardNo, String title, String content, int viewCount, LocalDateTime regDate) {
        this.cardNo = cardNo;
        this.title = title;
        this.content = content;
        this.viewCount = viewCount;
        this.regDate = regDate;
    }

    public int getCardNo() {
        return cardNo;
    }

    public void setCardNo(int cardNo) {
        this.cardNo = cardNo;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getViewCount() {
        return viewCount;
    }

    public void setViewCount(int viewCount) {
        this.viewCount = viewCount;
    }

    public LocalDateTime getRegDate() {
        return regDate;
    }

    public void setRegDate(LocalDateTime regDate) {
        this.regDate = regDate;
    }

    @Override
    public String toString() {
        return "Card{" +
                "cardNo=" + cardNo +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", viewCount=" + viewCount +
                ", regDate=" + regDate +
                '}';
    }
}
