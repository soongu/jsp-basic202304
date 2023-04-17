package com.jsp.chap04.controller;

import com.jsp.chap04.repository.DancerRepository;
import com.jsp.chap04.repository.DancerRepositoryImpl;
import com.jsp.entity.Dancer;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.List;

public class ListHandler implements HandlerMapping {

    // 저장소
    private final DancerRepository dancerRepository = new DancerRepositoryImpl();

    @Override
    public String process(HttpServletRequest request) throws ServletException, IOException {
        List<Dancer> dancerList = dancerRepository.findAll();
        request.setAttribute("dancerList", dancerList);
        return "list";
    }
}
