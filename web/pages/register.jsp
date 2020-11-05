<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2020/10/16
  Time: 22:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8" %>
<% String path = request.getContextPath();%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>学生注册</title>
    <link rel="stylesheet" href="<%=path%>/static/layui/css/layui.css">
    <script src="<%=path%>/static/layui/layui.js"></script>
</head>
<body>
<div style="top: 45%;left: 45%;position: absolute; transform: translate(-50%,-50%);">
    <form class="layui-form" action="/StuManagement/register" method="post">
        <div class="layui-form-item">
            <label class="layui-form-label">学号</label>
            <div class="layui-input-inline">
                <input type="stuno" name="stuno" required lay-verify="required" placeholder="请输入学号"
                       autocomplete="off"
                       class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">姓名</label>
            <div class="layui-input-inline">
                <input type="stuname" name="stuname" required lay-verify="required" placeholder="请输入姓名"
                       autocomplete="off"
                       class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">用户名</label>
            <div class="layui-input-inline">
                <input type="loginame" name="loginame" required lay-verify="required" placeholder="请输入用户名"
                       autocomplete="off"
                       class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">密码框</label>
            <div class="layui-input-inline">
                <input type="loginpwd" name="loginpwd" required lay-verify="required" placeholder="请输入密码"
                       autocomplete="off"
                       class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">性别</label>
            <div class="layui-input-block">
                <input type="radio" name="gender" value="m" title="男">
                <input type="radio" name="gender" value="w" title="女" checked>
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">学生类别</label>
            <div class="layui-input-block">
                <select name="stutype" lay-verify="required">
                    <option value=""></option>
                    <option value="0">导师制学生</option>
                    <option value="1">研究生</option>
                    <option value="2">班内学生（班主任）</option>
                    <option value="3">编制外学生</option>
                </select>
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label"></label>
            <div class="layui-input-inline">
                <input type="submit" name="submit" lay-verify="required"
                       class="layui-input">
            </div>
        </div>

    </form>
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
</script>
</body>
</html>
