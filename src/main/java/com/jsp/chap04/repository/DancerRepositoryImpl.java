package com.jsp.chap04.repository;

import com.jsp.entity.Dancer;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public class DancerRepositoryImpl implements DancerRepository {

    // 댄서 저장 맵
    private final static Map<String, Dancer> dancerMap = new HashMap();


    @Override
    public void save(Dancer dancer) {
        dancerMap.put(dancer.getCrewName(), dancer);
    }

    @Override
    public List<Dancer> findAll() {
        return new ArrayList<>(dancerMap.values());
    }
}
