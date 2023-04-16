package com.jsp.chap05.board.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/card/list")
public class CardListServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("게시물 보여주세요!");


        RequestDispatcher dp = req.getRequestDispatcher("/WEB-INF/card/list.jsp");
        dp.forward(req, resp);

    }
}
