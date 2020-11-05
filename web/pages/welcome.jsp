<%@ page import="cn.edu.ujn.model.Student" %><%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2020/10/16
  Time: 17:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <div>欢迎光临</div>
<a href="pages/homepage.jsp">进入我的主页</a><p/>
${currentUser.loginame}
</body>
</html>
