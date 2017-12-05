<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Success</title>
</head>
<body>

<c:forEach items="fileNames" var="fileNames">
  File <b>${fileNames}</b> uploaded successfully<br/>
</c:forEach>
</body>
</html>
