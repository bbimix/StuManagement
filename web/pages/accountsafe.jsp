<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2020/10/22
  Time: 11:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% String path = request.getContextPath();%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="<%=path%>/static/layui/css/layui.css">
    <script src="<%=path%>/static/layui/layui.js"></script>
</head>
<body>
<div>
    <ul class="layui-nav" lay-filter="">
        <li class="layui-nav-item"><a href="<%=path%>/pages/homepage.jsp">基本信息</a></li>
        <li class="layui-nav-item layui-this"><a href="#">帐号安全</a></li>
        <li class="layui-nav-item"><a href="">个人信息</a></li>
    </ul>
</div>
<div style="width: 100vw;height: 100vh;background: #8D8D8D;position: absolute;">
    <div style="top: 50%;left: 45%;position: absolute; transform: translate(-50%,-50%); ">
        <form class="layui-form" action="/StuManagement/homepageupdate" method="post" enctype="multipart/form-data">
            <div class="layui-form-item">
                <label class="layui-form-label">密保问题</label>
                <div class="layui-input-inline">
                    <input type="question" name="question"
                           placeholder="输入密保问题" autocomplete="off" value="${currentStudent.loginame}" required
                           lay-verify="required"
                           class="layui-input">
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">问题答案</label>
                <div class="layui-input-inline">
                    <input type="answer" name="answer" placeholder="输入姓名" value="${currentStudent.stuname}" required
                           lay-verify="required"
                           autocomplete="off"
                           class="layui-input">
                </div>
            </div>


        </form>
    </div>
</div>
<script>
    //Demo
    layui.use('form', function () {
        var form = layui.form;

        //监听提交
        form.on('submit(formDemo)', function (data) {
            layer.msg(JSON.stringify(data.field));
            return false;
        });
    });
    layui.use('element', function () {
        var element = layui.element;
    });
</script>
</body>
</html>
