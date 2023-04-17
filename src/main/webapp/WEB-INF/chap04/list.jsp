<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <h1>mvc 버전 댄스 리스트</h1>
    <ul>
        <c:forEach var="dancer" items="${dancerList}">
            <li># 이름 : ${dancer.name}, 크루명: ${dancer.crewName},
            수준: ${dancer.danceLevel.levelDescription},
            공연당페이: ${dancer.danceLevel.payPerEvent}원,
            장르: ${dancer.genres}</li>
        </c:forEach>
    </ul>

    <a href="/mvc/register">재등록하기</a>

</body>
</html>