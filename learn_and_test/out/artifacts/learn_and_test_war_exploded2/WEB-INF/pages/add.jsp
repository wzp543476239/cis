<%--
  Created by IntelliJ IDEA.
  User: yangguang
  Date: 2017/7/3
  Time: 16:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>发布</title>
    <style>
        .s{color: red}
    </style>
</head>
<body>
        <h1 align="center">发布</h1>
        <form action="<%=request.getContextPath()%>/share/doAdd.do" method="post">
            <table align="center" border="1" cellspacing="0" cellpadding="0" width="50%">
                <tr>
                    <td>
                        标题：<input type="text" name="title" required/>
                    </td>
                </tr>
                <tr>
                    <td>
                        内容：<p><textarea name="content" placeholder="请输入您的心得分享或者疑问" style="width:750px;height:80px;" required></textarea></p>
                    </td>
                </tr>
                <tr>
                    <td>
                        您要发表的是文章属于：
                        <input type="radio" name="classify" value="UI" checked="checked">UI
                        <input type="radio" name="classify" value="前端">前端
                        <input type="radio" name="classify" value="开发">开发
                        <input type="radio" name="classify" value="测试">测试
                    </td>
                </tr>
                <tr>
                    <td>
                        发布人：<input type="text" name="createBy"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        您是要分享<input type="radio" name="attribute" value="心得" checked="checked"/>心得？&nbsp;&nbsp;
                        还是要提出<input type="radio" name="attribute" value="疑问"/>疑问？
                    </td>
                </tr>
                <tr align="center">
                    <td>
                        <input type="submit" value="发布" style="width:100px; height:30px;"/>
                        <a href="<%=request.getContextPath()%>/share/share.do">
                            <input type="button" value="返回" style="width:100px; height:30px;"/>
                        </a>
                    </td>
                </tr>
            </table>
        </form>
        <div align="center"><h1>${msg}</h1></div>
</body>
</html>
