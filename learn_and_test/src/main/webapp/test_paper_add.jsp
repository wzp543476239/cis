<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 2017/6/28
  Time: 14:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>试卷添加</title>
</head>
    <body>
        <form action="/test_paper_add.do" method="post">
            <table align="center" width="85%"  border="1" cellpadding="2" cellspacing="1" bordercolor="black" bordercolordark="red" bordercolorlight="#FFFFFF">
                <tr align="center">
                    <td width="15%" height="30" align="left" style="padding:5px;">试卷名称：</td>
                    <td width="85%" align="left">
                        <input name="test_name" size="40" type="text">
                    </td>
                <tr>
                <tr>
                    <td height="30" align="left" style="padding:5px;">所属科目：</td>
                    <td align="left">
                        <select name="course" property="type">
                            <option value="java">JAVA</option>
                            <option value="前端">前端</option>
                            <option value="测试">测试</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td height="65" align="left" style="padding:5px;">操作</td>
                    <td>
                        <input type="submit" value="添加试题">
                        &nbsp;
                        <input type="reset" value="取消添加">
                </tr>
            </table>
        </form>
    </body>
</html>
