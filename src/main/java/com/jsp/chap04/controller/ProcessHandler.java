package com.jsp.chap04.controller;

import com.jsp.chap04.repository.DancerRepository;
import com.jsp.chap04.repository.DancerRepositoryImpl;
import com.jsp.entity.Dancer;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class ProcessHandler implements HandlerMapping {

    // 저장소
    private final DancerRepository dancerRepository = new DancerRepositoryImpl();

    @Override
    public String process(HttpServletRequest request) throws ServletException, IOException {
        // 비즈니스 로직
        //form에서 전송한데이터 한글처리
        request.setCharacterEncoding("UTF-8");

        // DancerRegisterViewServlet에서 전달된 파라미터 읽기
        String name = request.getParameter("name");
        String crewName = request.getParameter("crewName");
        String danceLevel = request.getParameter("danceLevel");
        String[] genresArray = request.getParameterValues("genres");

        System.out.println("danceLevel = " + danceLevel);
        System.out.println("genresArray = " + Arrays.toString(genresArray));

        // Dancer 객체로 포장
        Dancer dancer = new Dancer();
        dancer.setName(name);
        dancer.setCrewName(crewName);
        dancer.setDanceLevel(Dancer.DanceLevel.valueOf(danceLevel));

        List<Dancer.Genre> genres = new ArrayList<>();
        if (genresArray != null) {
            for (String g : genresArray) {
                genres.add(Dancer.Genre.valueOf(g));
            }
        }
        dancer.setGenres(genres);

        System.out.println("dancer = " + dancer);

        // 저장소에 저장
        dancerRepository.save(dancer);

        return "redirect:/mvc/list";
    }
}
