<%@ page import="com.mysql.cj.Session" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2020/10/18
  Time: 17:29
  To change this template use File | Settings | File Templates.
--%>
<% String path = request.getContextPath();%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>Title</title>
    <link rel="stylesheet" href="<%=path%>/static/CSS/homepage.css">
    <link rel="stylesheet" href="<%=path%>/static/layui/css/layui.css">
    <script src="<%=path%>/static/layui/layui.js"></script>
        <script src="<%=path%>/static/JS/jquery-3.4.1.min.js"></script>
</head>
<body>
<div>
    <ul class="layui-nav" lay-filter="">
        <li class="layui-nav-item layui-this"><a id="jump1">基本信息</a></li>
        <li class="layui-nav-item"><a id="jump2">帐号安全</a></li>
        <li class="layui-nav-item"><a id="jump3">个人信息</a></li>
    </ul>
</div>


<div style="width: 100vw;height: 100vh;background: #8D8D8D;position: absolute;" id="formsContainer">
    <div id="curtain" style="position: absolute;
    display: none;
    width: 100vw;
    height: 100vh;
    background: rgba(0,0,0,0.6);
    z-index: 100;"></div>
    <div id="profileContainer">
        <img src="<%=path%>/web/pic/${currentUser.photo}" id="profile">
    </div>
    <div style="top: 50%;left: 45%;position: absolute; transform: translate(-50%,-50%);" id="form1">
        <form class="layui-form" action="/StuManagement/homepageupdate" method="post" enctype="multipart/form-data">
            <div class="layui-form-item">
                <label class="layui-form-label">用户名</label>
                <div class="layui-input-inline">
                    <input type="loginame" name="loginame" id="loginame"
                           placeholder="输入用户名" autocomplete="off" value="${currentUser.loginame}" required
                           lay-verify="required"
                           class="layui-input">
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">真实姓名</label>
                <div class="layui-input-inline">
                    <input type="stuname" name="stuname" placeholder="输入姓名" value="${currentUser.stuname}" required
                           lay-verify="required"
                           autocomplete="off"
                           class="layui-input">
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">性别</label>
                <div class="layui-input-block">
                    <input type="radio" name="gender" value="m" title="男" <c:if test="${currentUser.gender eq 'm'}">
                           checked</c:if>>
                    <input type="radio" name="gender" value="w" title="女" <c:if test="${currentUser.gender eq 'w'}">
                           checked</c:if>>
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">学生类别</label>
                <div class="layui-input-block">
                    <select name="stutype" lay-search>
                        <option value="">请选择学生类别</option>
                        <option value="0" <c:if test="${currentUser.stutype eq '0'}"> selected</c:if> >导师制学生</option>
                        <option value="1"
                                <c:if test="${currentUser.stutype eq '1'}">selected</c:if> >研究生
                        </option>
                        <option value="2"
                                <c:if test="${currentUser.stutype eq '2'}">selected</c:if> >班内学生（班主任）
                        </option>
                        <option value="3"
                                <c:if test="${currentUser.stutype eq '3'}">selected</c:if> >编制外学生
                        </option>
                    </select>
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">手机号</label>
                <div class="layui-input-inline">
                    <input type="phone" name="phone" placeholder="你的手机号是？"
                           autocomplete="off"
                           class="layui-input" value="${currentUser.phone}">
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">班级</label>
                <div class="layui-input-inline">
                    <input type="classname" name="classname" placeholder="你的班级是？"
                           autocomplete="off"
                           class="layui-input" value="${currentUser.classname}">
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">邮箱</label>
                <div class="layui-input-inline">
                    <input type="email" name="email" placeholder="你的邮箱是？"
                           autocomplete="off"
                           class="layui-input" value="${currentUser.email}">
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">微信号</label>
                <div class="layui-input-inline">
                    <input type="openid" name="openid" placeholder="你的微信号是？"
                           autocomplete="off"
                           class="layui-input" value="${currentUser.openid}">
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">QQ号</label>
                <div class="layui-input-inline">
                    <input type="qqno" name="qqno" placeholder="你的QQ号是？"
                           autocomplete="off"
                           class="layui-input" value="${currentUser.qqno}">
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">图片</label>
                <div class="layui-input-inline">
                    <input type="file" name="photo">
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


    <div style="top: 50%;left: 45%;position: absolute; transform: translate(-50%,-50%); display: none" id="form2">
        <form class="layui-form" action="/StuManagement/updateSafe?loginame=${currentUser.loginame}" method="post"
              enctype="multipart/form-data">
            <div class="layui-form-item">
                <label class="layui-form-label">密保问题</label>
                <div class="layui-input-inline">
                    <input type="question" name="question"
                           placeholder="输入密保问题" autocomplete="off" value="${currentUser.question}" required
                           lay-verify="required"
                           class="layui-input">
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">问题答案</label>
                <div class="layui-input-inline">
                    <input type="answer" name="answer" placeholder="输入密保问题答案" value="${currentUser.answer}" required
                           lay-verify="required"
                           autocomplete="off"
                           class="layui-input">
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


    <div style="top: 50%;left: 45%;position: absolute; transform: translate(-50%,-50%); display: none" id="form3">
        <form class="layui-form"  method="post" action="/StuManagement/updatePersonal?loginame=${currentUser.loginame}"
              enctype="multipart/form-data">
            <div class="layui-form-item">
                <label class="layui-form-label">民族</label>
                <div class="layui-input-inline">
                    <input type="nation" name="nation"
                           placeholder="输入你的民族" autocomplete="off" value="${currentUser.nation}" required
                           lay-verify="required"
                           class="layui-input" id="nation">
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">国籍</label>
                <div class="layui-input-inline">
                    <input type="country" name="country" placeholder="输入你的国籍" value="${currentUser.country}" required
                           lay-verify="required"
                           autocomplete="off"
                           class="layui-input" id="country">
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">籍贯</label>
                <div class="layui-input-inline">
                    <input type="origin" name="origin" placeholder="你的籍贯是？"
                           autocomplete="off"
                           class="layui-input" value="${currentUser.origin}" id="origin">
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">现家庭住址</label>
                <div class="layui-input-inline">
                    <input type="nowaddress" name="nowaddress" placeholder="你的家庭住址是？"
                           autocomplete="off"
                           class="layui-input" value="${currentUser.nowaddress}" id="nowaddress">
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">父亲姓名</label>
                <div class="layui-input-inline">
                    <input type="fathername" name="fathername" placeholder="你父亲的姓名是？"
                           autocomplete="off"
                           class="layui-input" value="${currentUser.fathername}" id="fathername">
                </div>
            </div>


            <div class="layui-form-item">
                <label class="layui-form-label">父亲电话</label>
                <div class="layui-input-inline">
                    <input type="fatherphone" name="fatherphone" placeholder="你父亲的联系方式是？"
                           autocomplete="off"
                           class="layui-input" value="${currentUser.fatherphone}" id="fatherphone">
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">母亲姓名</label>
                <div class="layui-input-inline">
                    <input type="mothername" name="mothername" placeholder="你母亲的姓名是？"
                           autocomplete="off"
                           class="layui-input" value="${currentUser.mothername}" id="mothername">
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">母亲电话</label>
                <div class="layui-input-inline">
                    <input type="mothephone" name="mothephone" placeholder="你母亲的联系方式是？"
                           autocomplete="off"
                           class="layui-input" value="${currentUser.mothephone}" id="mothephone">
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">毕业去向</label>
                <div class="layui-input-inline">
                    <input type="whereabouts" name="whereabouts" placeholder="你的毕业去向是？"
                           autocomplete="off"
                           class="layui-input" value="${currentUser.whereabouts}" id="whereabouts">
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">舍友信息</label>
                <div class="layui-input-inline">
                    <textarea name="roommateinfo" placeholder="请输入舍友信息" class="layui-textarea" value="falfjkaljf" id="Roommateinfo">${currentUser.roommateinfo}
                    </textarea>
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label"></label>
                <div class="layui-input-inline">
                    <input type="submit" name="submit" lay-verify="required"
                           class="layui-input" id="submitForm3">
                </div>
            </div>
        </form>
    </div>
</div>

<script>
    document.getElementById("jump1").onclick = function () {
        document.getElementById("form1").style.display = "block";
        document.getElementById("form2").style.display = "none";
        document.getElementById("form3").style.display = "none";
    }
    document.getElementById("jump2").onclick = function () {
        document.getElementById("form2").style.display = "block";
        document.getElementById("form1").style.display = "none";
        document.getElementById("form3").style.display = "none";
    }
    document.getElementById("jump3").onclick = function () {
        document.getElementById("form3").style.display = "block";
        document.getElementById("form1").style.display = "none";
        document.getElementById("form2").style.display = "none";
    };

    $("#profile").click(function (){
        $("#profile").css("width","300px");
        $("#profile").css("height","300px");
        $("#profileContainer").css("width","300px");
        $("#profileContainer").css("height","300px");
        $("#profileContainer").css("border-radius","0");
        $("#curtain").css("display","block");
    })

    $("#curtain").click(function (){
        $("#profile").css("width","100");
        $("#profile").css("height","100px");
        $("#profileContainer").css("width","100px");
        $("#profileContainer").css("height","100px");
        $("#profileContainer").css("border-radius","50%");
        $("#profileContainer").css("z-index","100");
        $("#curtain").css("display","none");
    })


</script>
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
