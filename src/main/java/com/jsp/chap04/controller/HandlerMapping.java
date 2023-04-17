package com.jsp.chap04.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

public interface HandlerMapping {

    String process(HttpServletRequest request) throws ServletException, IOException;
}
