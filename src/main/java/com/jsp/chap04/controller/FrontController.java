package com.jsp.chap04.controller;

import com.jsp.chap04.repository.DancerRepository;
import com.jsp.chap04.repository.DancerRepositoryImpl;

import javax.servlet.RequestDispatcher;
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

    // 핸들러
    private HandlerMapping handlerMapping;



    static {
        uriMap.put("list", UriInfo.LIST);
        uriMap.put("register", UriInfo.REGISTER);
        uriMap.put("process", UriInfo.PROCESS);
    }

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        // 요청 url 얻기
        String requestURI = req.getRequestURI();
//        System.out.println(requestURI);

        // 요청 url 파싱
        String parseUri = requestURI.substring(requestURI.lastIndexOf("/") + 1);
//        System.out.println("parseUri = " + parseUri);

        // 파싱 uri와 같은 상수 맵에서 찾기
        if (!uriMap.containsKey(parseUri)) {
            System.out.println("잘못된 요청입니다!");
            return;
        }

        UriInfo uriInfo = uriMap.get(parseUri);

        // 분기

        switch (uriInfo) {
            case LIST:
                handlerMapping = new ListHandler();
                break;
            case PROCESS:
                handlerMapping = new ProcessHandler();
                break;
            case REGISTER:
                handlerMapping = new RegisterHandler();
                break;
        }

        String viewName = handlerMapping.process(req);


        if (viewName.startsWith("redirect")) {
            String redirectUri = viewName.substring(9);
            // 리다이렉트
            resp.sendRedirect(redirectUri);
        } else {
            // 포워딩
            RequestDispatcher dp = req.getRequestDispatcher("/WEB-INF/chap04/" + viewName + ".jsp");
            dp.forward(req, resp);
        }



    }
}
