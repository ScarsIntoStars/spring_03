<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h2>result3.jsp</h2>
    controller에서 담아온 DemoDTOList 값 출력<br>

    <!-- 자바에서의 포이치와 아래 자바스크립트의 반복문은 같음
        for(DemoDTO demoDTO:demoDTO {
        }
    -->

    <c:forEach items= "${demoList}" var="demo">
        ${demo.param1}, ${demo.param2}<br>
    </c:forEach>

</body>
</html>
