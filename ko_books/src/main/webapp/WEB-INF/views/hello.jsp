<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>




<html>
<head>
    <title></title>
</head>
<body>

<div class="container" style="margin:100px;">
    <div>
        <h1>책 정보를 입력하는 공간입니다.</h1>
    </div>
    <div style="margin-left: 10px;">
        <p>
            1. 두가지 권한이 존재합니다. (ROLE_USER / ROLE_ADMIN)<br/>
            2. LIST는 로그인없이 볼 수 있습니다. <br/>
            3. 책 등록은 로그인이 필요합니다. <br/>
            4. 책 삭제는 등록 유저이거나 관리자만 접근 가능합니다. <br/>
        </p>
    </div>

    <br/><br/>

    <!-- USER, ADMIN 모두 아닐경우 -->
    <sec:authorize access="!hasAnyRole('ROLE_USER', 'ROLE_ADMIN')">
        <input type="button" onclick="location.href='/book/list'" value="목록보기" />
        <input type="button" onclick="location.href='/user/signup'" value="회원가입" />
        <input type="button" onclick="location.href='/user/signin'" value="로그인" />
    </sec:authorize>

    <!-- USER 일 경우 -->
    <sec:authorize access="hasRole('ROLE_USER')">
        <h3 style="margin-left:10px;">ROLE_USER 로 로그인하였습니다.</h3>
        <input type="button" onclick="location.href='/book/list'" value="목록보기" />
        <input type="button" onclick="location.href='/user/signout'" value="로그아웃" />
        <input type="button" onclick="location.href='/book/register'" value="책 등록하기" />
    </sec:authorize>

    <!-- ADMIN 일 경우 / ADMIN은 가입 email에 admin을 포함하면 admin 권한이 생김 -->
    <sec:authorize access="hasRole('ROLE_ADMIN')">
        <h3 style="margin-left:10px;">ROLE_ADMIN 으로 로그인하였습니다.</h3>
        <input type="button" onclick="location.href='/book/list'" value="목록보기" />
        <input type="button" onclick="location.href='/user/signout'" value="로그아웃" />
        <input type="button" onclick="location.href='/book/register'" value="책 등록하기" />
    </sec:authorize>

</div>

</body>
</html>
