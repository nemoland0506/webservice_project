<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
  <title></title>
  <style>
    table, tr, td {
      border: 1px solid black;
      text-align:center;
    }

    td {
      width: 200px;
    }
  </style>
</head>
<body>

<div class="container" style="margin:100px;">
  <div>
    <h1>책 리스트를 보는 곳입니다.</h1>
  </div>
  <div style="margin-left: 10px;">
    <table>
      <thead>
      <tr>
        <td>책 ID (id)</td>
        <td>책 이름 (title)</td>
        <td>저자 (author)</td>
        <td>페이지 수 (page)</td>
        <td>등록한 유저 (userId)</td>
        <td></td>
      </tr>
      </thead>
      <tbody>
      <c:forEach var="b" items="${books}">
        <tr>
          <td>${b.id}</td>
          <td>${b.title}</td>
          <td>${b.author}</td>
          <td>${b.page}</td>
          <td>${b.userId}</td>
          <td>
            <sec:authorize access="hasRole('ROLE_ADMIN')">
              <a href="/book/delete?id=${b.id}">삭제</a>
            </sec:authorize>
            <sec:authorize access="hasRole('ROLE_USER')">

              <c:set var="user" value="${SPRING_SECURITY_CONTEXT.authentication.principal}"/>
              <c:set var="user_id" value="${user.id}"/>
              <c:set var="userId" value="${b.userId}"/>

              <c:if test="${user_id==userId}">
                <a href="/book/delete?id=${b.id}">삭제</a>
              </c:if>

            </sec:authorize>
          </td>
        </tr>
      </c:forEach>
      </tbody>
    </table>
  </div>

  <br/><br/>

  <input type="button" onclick="location.href='/'" value="돌아가기" />
  <sec:authorize access="!hasAnyRole('ROLE_USER', 'ROLE_ADMIN')">
    <input type="button" onclick="location.href='/user/signup'" value="회원가입" />
    <input type="button" onclick="location.href='/user/signin'" value="로그인" />
  </sec:authorize>

</div>



</body>
</html>
