<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2020/10/13
  Time: 11:38
  To change this template use File | Settings | File Templates.
--%>
<% String path = request.getContextPath();%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>学生信息管理系统</title>
  <link rel="stylesheet" href="<%=path%>/static/layui/css/layui.css">
  <link rel="stylesheet" href="<%=path%>/static/CSS/login.CSS">
  <script src="<%=path%>/static/layui/layui.js"></script>
  <script src="<%=path%>/static/JS/login.JS"></script>
</head>
<body background="<%=path%>/static/images/DSC_0139.jpg">
<div id="loginContainer" >
  <div id="tagContainer">
    <h1 id="tagText">Login</h1>
  </div>
  <form class="layui-form" action="/StuManagement/login" method="post" id="loginForm">
    <div class="layui-form-item">
      <label class="layui-form-label">用户名</label>
      <div class="layui-input-inline">
        <input type="loginame" name="loginame" required lay-verify="required" placeholder="请输入用户名" autocomplete="off"
               class="layui-input"  >

      </div>
    </div>

    <div class="layui-form-item">
      <label class="layui-form-label">密码框</label>
      <div class="layui-input-inline">
        <input type="loginpwd" name="loginpwd" required lay-verify="required" placeholder="请输入密码" autocomplete="off"
               class="layui-input">
      </div>
      <!--        <div class="layui-form-mid layui-word-aux">辅助文字</div>-->
    </div>

    <div class="layui-form-item">
      <label class="layui-form-label"></label>
      <div class="layui-input-inline">
        <input type="submit" name="submit"  lay-verify="required"
               class="layui-input">
      </div>
    </div>

  </form>
</div>

<script>
  //Demo
  layui.use('form', function(){
    var form = layui.form;

    //监听提交
    form.on('submit(formDemo)', function(data){
      layer.msg(JSON.stringify(data.field));
      return false;
    });
  });
</script>
</body>

</html>
