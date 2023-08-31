<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>8월 31일 아침입니다. 평안하셨습니까?</h1>
    <a href="/demo1">demo1.jsp로 이동</a>

        <form action="/demo2", method="post">
           param1: <input type="text" name="param1">
           <br>
           param2: <input type="text" name="param2">
           <br>
           <input type="submit" value="전송">
       </form>

        <form action="/demo3", method="post">
           param1: <input type="text" name="param1">
           <br>
           param2: <input type="text" name="param2">
           <br>
           <input type="submit" value="전송">
       </form>

    <a href="/result1">변수 화면에 출력</a>
    <a href="/result2">DTO 객체 화면에 출력</a>
    <a href="/result3">List 객체 화면에 출력</a>

</body>
</html>
