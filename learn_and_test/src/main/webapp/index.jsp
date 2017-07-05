<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 2017/6/28
  Time: 14:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
Hello World！
<br>
<a href="<%=request.getContextPath()%>/test/test.do?id=1">点击调转</a>
<a href="<%=request.getContextPath()%>/test_paper_add.jsp">添加试卷</a>
</body>
</html>
