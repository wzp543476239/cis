<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>操作成功！</title>
</head>
    <body>
        <table align="center" width="85%"  border="1" cellpadding="2" cellspacing="1" bordercolor="black" bordercolordark="red" bordercolorlight="#FFFFFF">
            <tr align="center">
                <td width="15%" height="30" align="left" style="padding:5px;"><b>添加试题成功！</b></td>
            <tr>
            <tr align="center">
                <a href="<%=request.getContextPath()%>/questions_add.jsp">继续添加试题</a>
                <%--test_paper_add.do--%>
            <tr>
        </table>
    </body>
</html>
