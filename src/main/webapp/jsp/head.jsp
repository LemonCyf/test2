<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>WEB01</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" type="text/css"/>
    <script src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js" type="text/javascript"></script>
</head>
<body>
<!--
    时间：2015-12-30
    描述：菜单栏
-->
<div class="container-fluid">
    <div class="col-md-4">
        <img src="${pageContext.request.contextPath}/img/logo2.png"/>
    </div>
    <div class="col-md-5">
        <img src="${pageContext.request.contextPath}/img/header.png"/>
    </div>
    <div class="col-md-3" style="padding-top:20px">
        <ol class="list-inline">
            <c:if test="${not empty sessionScope.user}">
                <li>欢迎回来:${sessionScope.user.username}</li>
                <li><a href="${pageContext.request.contextPath}/loginOut">注销</a></li>
                <li><a href="${pageContext.request.contextPath}/shopCar">购物车</a></li>
                <li><a href="${pageContext.request.contextPath}/orderList?currPage=0">我的订单</a></li>
            </c:if>
            <c:if test="${empty sessionScope.user}">
                <li><a href="${pageContext.request.contextPath}/jsp/login.jsp">登录</a></li>
                <li><a href="${pageContext.request.contextPath}/jsp/register.jsp">注册</a></li>
            </c:if>

        </ol>
    </div>
</div>
<!--
    时间：2015-12-30
    描述：导航条
-->
<div class="container-fluid">
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                        data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="${pageContext.request.contextPath}/index">首页</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav" id="listOfNav">
                  <!--
                    <c:forEach items="${requestScope.c}" var="c">
                        <li><a href="#">${c.cname}</a></li>
                    </c:forEach>
                    -->
 >

                </ul>
                <form class="navbar-form navbar-right" role="search">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Search">
                    </div>
                    <button type="submit" class="btn btn-default">Submit</button>
                </form>

            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
</div>

</body>
<script>
    // 数据是什么样子的格式
    // [{cid : xxx, name: yyy}, {cid: xxx, name : yyyy} .....]
    $.get(
        "/category",
        "",
        function(dt, status, xhr) {
            for (var i = 0; i < dt.length; i++) {
                var o = dt[i];
                var cid = dt[i].cid;
                var cname = dt[i].cname;
                $("#listOfNav").append("<li><a href=\"${pageContext.request.contextPath}/productList?currPage=0&cid=" + cid + "\">" + cname +"</a></li>")
            }
        },
        "json"
    );
</script>

</html>
