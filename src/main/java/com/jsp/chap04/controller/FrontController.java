package com.jsp.chap04.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet("/mvc/*")
public class FrontController extends HttpServlet {

    public enum UriInfo {
        LIST, REGISTER, PROCESS
    }

    // URI 매핑 맵 생성
    private static final Map<String, UriInfo> uriMap = new HashMap<>();

    static {
        uriMap.put("list", UriInfo.LIST);
        uriMap.put("register", UriInfo.REGISTER);
        uriMap.put("process", UriInfo.PROCESS);
    }

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        // 요청 url 얻기
        String requestURI = req.getRequestURI();
        System.out.println();

    }
}
