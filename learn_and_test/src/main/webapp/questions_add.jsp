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
    <title>试题添加</title>
</head>

<script language="javascript">
    function show(val){
        if(val=="单选题"){
            sOption.style.display="";
            mOption.style.display="none";
            pOption.style.display="none";
            optionA.style.display="";
            optionB.style.display="";
            optionC.style.display="";
            optionD.style.display="";
        }else if(val=="多选题"){
            sOption.style.display="none";
            mOption.style.display="";
            pOption.style.display="none";
            optionA.style.display="";
            optionB.style.display="";
            optionC.style.display="";
            optionD.style.display="";
        }else{
            sOption.style.display="none";
            mOption.style.display="none";
            pOption.style.display="";
            optionA.style.display="none";
            optionB.style.display="none";
            optionC.style.display="none";
            optionD.style.display="none";
        }
    }
</script>

    <body>
        <form action="/question_add.do" method="post">
            <table align="center" width="85%"  border="1" cellpadding="2" cellspacing="1" bordercolor="black" bordercolordark="red" bordercolorlight="#FFFFFF">

                <input type="hidden"name="paper_id" value="${testPaper.id}"/>

                <tr>
                    <td height="30" align="left" style="padding:5px;">所属课程：</td>
                    <td align="left">
                        <input type="hidden"name="course" value="${testPaper.course}"/>
                        ${testPaper.course}
                    </td>
                </tr>
                <tr align="center">
                    <td width="15%" height="30" align="left" style="padding:5px;">考试题目：</td>
                    <td width="85%" align="left">
                        <input name="title" size="40" type="text">
                    </td>
                <tr>
                <tr>
                    <td height="30" align="left" style="padding:5px;">试题类型：</td>
                    <td align="left">
                        <select name="question_type" onchange="show(this.value)">
                            <option value="单选题">单选题</option>
                            <option value="多选题">多选题</option>
                            <option value="判断题">判断题</option>
                        </select>
                    </td>
                </tr>
                <tr align="center" id="optionA" style="padding:5px;">
                    <td width="15%" height="30" align="left" style="padding:5px;">选项A：</td>
                    <td width="85%" align="left">
                        <input name="optionA" size="40" type="text">
                    </td>
                </tr>
                <tr align="center" id="optionB" style="padding:5px;">
                    <td width="15%" height="30" align="left" style="padding:5px;">选项B：</td>
                    <td width="85%" align="left">
                        <input name="optionB" size="40" type="text">
                    </td>
                </tr>
                <tr align="center" id="optionC" style="padding:5px;">
                    <td width="15%" height="30" align="left" style="padding:5px;">选项C：</td>
                    <td width="85%" align="left">
                        <input name="optionC" size="40" type="text">
                    </td>
                </tr>
                <tr align="center" id="optionD" style="padding:5px;">
                    <td width="15%" height="30" align="left" style="padding:5px;">选项D：</td>
                    <td width="85%" align="left">
                        <input name="optionD" size="40" type="text">
                    </td>
                </tr>
                <tr align="center">
                    <td width="15%" height="30" align="left" style="padding:5px;">正确答案：</td>
                    <td width="85%" align="left" id="sOption">
                        <select name="answer">
                            <option value="">-请选择-</option>
                            <option value="A">A </option>
                            <option value="B">B </option>
                            <option value="C">C </option>
                            <option value="D">D </option>
                        </select>
                    </td>
                    <td width="85%" align="left" id="mOption" style="display:none">
                        <%--<input type="checkbox" name="answer" value="A" />A
                        <input type="checkbox" name="answer" value="B" />B
                        <input type="checkbox" name="answer" value="C" />C
                        <input type="checkbox" name="answer" value="D" />D--%>
                        <select multiple="multiple" size="6" name="answer">
                            <option value="">-请选择-</option>
                            <option value="A">A </option>
                            <option value="B">B </option>
                            <option value="C">C </option>
                            <option value="D">D </option>
                        </select>
                    </td>
                    <td width="85%" align="left" id="pOption" style="display:none">
                        <input type="radio" name="answer" value="对" />对
                        <input type="radio" name="answer" value="错" />错
                    </td>
                </tr>
                <tr>
                    <td width="15%" height="30" align="left" style="padding:5px;">分值：</td>
                    <td width="85%" align="left">
                        <%--<input name="score" size="40" type="radio">5分
                        <input name="score" size="40" type="radio">10分
                        <input name="score" size="40" type="radio">15分--%>
                        <select name="score">
                            <option value="5">5分</option>
                            <option value="10">10分</option>
                            <option value="15">15分</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td height="65" align="left" style="padding:5px;">操作</td>
                    <td>
                        <input type="submit" value="保存">
                        &nbsp;
                        <input type="reset" value="取消">
                </tr>
            </table>
        </form>
    </body>
</html>
