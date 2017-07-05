<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: yangguang
  Date: 2017/7/3
  Time: 16:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>论坛首页</title>
    <style>
        .but{
            width:100px; height:30px;
        }
    </style>
</head>
<body>
    <hr/>
    <div align="center">
        <form action="/share/share.do" method="post">
            <a href="<%=request.getContextPath()%>/share/share.do"><input type="button" class="but" value="全部"/></a>
            <input type="submit" name="classify" value="UI" style="width:100px; height:30px;padding-top: 4px;"/>
            <input type="submit" name="classify" value="前端" class="but"/>
            <input type="submit" name="classify" value="开发" class="but"/>
            <input type="submit" name="classify" value="测试" class="but"/>
        </form>
    </div>
    <hr/>
    <table border="1" cellpadding="0" cellspacing="0" align="center" width="80%">
        <tr align="center">
            <td>标题</td>
            <td>内容</td>
            <td>心得or疑问</td>
            <td>技术分类</td>
            <td>发布人</td>
            <td>发布时间</td>
        </tr>
        <c:forEach items="${list}" var="share">
            <tr align="center">
                <td>${share.title}</td>
                <td>${share.content}</td>
                <td>${share.attribute}</td>
                <td>${share.classify}</td>
                <td>${share.createBy}</td>
                <td><fmt:formatDate value="${share.createDate}" pattern="yyyy-MM-dd"/></td>
            </tr>
        </c:forEach>
    </table>
    <hr/>
    <div align="center">
        <a href="<%=request.getContextPath()%>/share/toAdd.do"><input type="button" class="but" value="发布"></a>
        <a href="<%=request.getContextPath()%>/index.jsp"><input type="button" class="but" value="返回"></a>
    </div>
</body>
</html>
