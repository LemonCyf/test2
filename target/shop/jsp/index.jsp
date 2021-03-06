<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>WEB01</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css"
        type="text/css"/>
  <script src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js"
          type="text/javascript"></script>
  <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"
          type="text/javascript"></script>
</head>

<body>
<div class="container-fluid">

  <jsp:include page="head.jsp"/>

  <div class="container-fluid">
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
      </ol>

      <!-- Wrapper for slides -->
      <div class="carousel-inner" role="listbox">
        <div class="item active">
          <img src="${pageContext.request.contextPath}/img/1.jpg">
          <div class="carousel-caption">

          </div>
        </div>
        <div class="item">
          <img src="${pageContext.request.contextPath}/img/2.jpg">
          <div class="carousel-caption">

          </div>
        </div>
        <div class="item">
          <img src="${pageContext.request.contextPath}/img/3.jpg">
          <div class="carousel-caption">

          </div>
        </div>
      </div>

      <!-- Controls -->
      <a class="left carousel-control" href="#carousel-example-generic" role="button"
         data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#carousel-example-generic" role="button"
         data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
  </div>

  <!--描述：商品显示-->
  <div class="container-fluid">
    <div class="col-md-12">
      <h2>热门商品&nbsp;&nbsp;<img src="${pageContext.request.contextPath}/img/title2.jpg"/></h2>
    </div>
    <div class="col-md-2" style="border:1px solid #E7E7E7;border-right:0;padding:0;">
      <img src="${pageContext.request.contextPath}/products/hao/big01.jpg" width="205" height="404"
           style="display: inline-block;"/>
    </div>
    <div class="col-md-10">
      <div class="col-md-6" style="text-align:center;height:200px;padding:0px;">
        <a href="#">
          <img src="${pageContext.request.contextPath}/products/hao/middle01.jpg" width="516px"
               height="200px" style="display: inline-block;">
        </a>
      </div>

      <c:forEach items="${requestScope.hot}" var="item">
        <div class="col-md-2" style="text-align:center;height:200px;padding:10px 0px;">
          <a href="${pageContext.request.contextPath}/productInfo?pid=${item.pid}">
            <img src="${pageContext.request.contextPath}/${item.pimage}" width="130" height="130"
                 style="display: inline-block;">
          </a>
          <p><a href="${pageContext.request.contextPath}/productInfo?pid=${item.pid}" style='color:#666'>${fn:substring(item.pname, 0, 12)}...</a></p>
          <p><font co  lor="#E4393C" style="font-size:16px">&yen;${item.shop_price}</font></p>
        </div>
      </c:forEach>

    </div>
  </div>
  <!--描述：广告部分-->
  <div class="container-fluid">
    <img src="${pageContext.request.contextPath}/products/hao/ad.jpg" width="100%"/>
  </div>

  <!--描述：最新商品显示-->
  <div class="container-fluid">
    <div class="col-md-12">
      <h2>最新商品&nbsp;&nbsp;<img src="${pageContext.request.contextPath}/img/title2.jpg"/></h2>
    </div>
    <div class="col-md-2" style="border:1px solid #E7E7E7;border-right:0;padding:0;">
      <img src="${pageContext.request.contextPath}/products/hao/big01.jpg" width="205" height="404"
           style="display: inline-block;"/>
    </div>
    <div class="col-md-10">
      <div class="col-md-6" style="text-align:center;height:200px;padding:0px;">
        <a href="#">
          <img src="${pageContext.request.contextPath}/products/hao/middle01.jpg" width="516px"
               height="200px" style="display: inline-block;">
        </a>
      </div>

      <c:forEach items="${requestScope.new1}" var="item">
        <div class="col-md-2" style="text-align:center;height:200px;padding:10px 0px;">
          <a href="${pageContext.request.contextPath}/productInfo?pid=${item.pid}">
            <img src="${pageContext.request.contextPath}/${item.pimage}" width="130" height="130"
                 style="display: inline-block;">
          </a>
          <p><a href="product_info.html" style='color:#666'>${fn:substring(item.pname, 0, 12)}...</a></p>
          <p><font color="#E4393C" style="font-size:16px">&yen;${item.shop_price}</font></p>
        </div>
      </c:forEach>

    </div>
  </div>


  <jsp:include page="foot.jsp"/>
</div>
</body>

</html>