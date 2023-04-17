package com.jsp.chap04.repository;

import com.jsp.entity.Dancer;

import java.util.List;

public interface DancerRepository {

    // 댄서 등록기능
    void save(Dancer dancer);

    // 댄서 목록 조회 기능
    List<Dancer> findAll();
}
