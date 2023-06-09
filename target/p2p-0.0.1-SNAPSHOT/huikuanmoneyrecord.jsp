<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
 <%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>p2p网贷平台</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="<%=basePath%>/css/common.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/user.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/jquery.datetimepicker.css"/>
<script type="text/javascript" src="<%=basePath%>/script/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath%>/script/common.js"></script>
<script src="<%=basePath%>/script/user.js" type="text/javascript"></script>
</head>
<body><header>
 <!-- 导航栏 --><jsp:include page="head.jsp"></jsp:include>
</header>
<!--个人中心-->
<div class="wrapper wbgcolor">
  <div class="w1200 personal">
    <div class="credit-ad"><img src="images/clist1.jpg" width="1200" height="96"></div>
    <!-- 导航栏 --><jsp:include page="left.jsp"></jsp:include>
   <div class="personal-main">
      <div class="personal-money">
        <h3><i>回款计划</i></h3>
        <div class="pmain-conmain" id="pmain-conmain">
          <div class="pmain-conmain1">
            <div class="pmain-contitle"> <span class="pmain-titledate">计划回款时间</span><span class="pmain-titleproject">项目</span><span class="pmain-titletype">类型</span><span class="pmain-titlemoney">回款金额</span> </div>
            <ul style="float:left;">
              <li><span class="pmain-titledate">2022-10-20</span><span class="pmain-titleproject">宝马汽车借贷业务</span><span class="pmain-titletype">债权转让</span><span class="pmain-titlemoney">10.00</span></li>
              <li><span class="pmain-titledate">2022-10-20</span><span class="pmain-titleproject">宝马汽车借贷业务</span><span class="pmain-titletype">债权转让</span><span class="pmain-titlemoney">10.00</span></li>
              <li><span class="pmain-titledate">2022-10-20</span><span class="pmain-titleproject">宝马汽车借贷业务</span><span class="pmain-titletype">债权转让</span><span class="pmain-titlemoney">10.00</span></li>
              <li><span class="pmain-titledate">2022-10-20</span><span class="pmain-titleproject">宝马汽车借贷业务</span><span class="pmain-titletype">债权转让</span><span class="pmain-titlemoney">10.00</span></li>
              <li><span class="pmain-titledate">2022-10-20</span><span class="pmain-titleproject">宝马汽车借贷业务</span><span class="pmain-titletype">债权转让</span><span class="pmain-titlemoney">10.00</span></li>
              <li><span class="pmain-titledate">2022-10-20</span><span class="pmain-titleproject">宝马汽车借贷业务</span><span class="pmain-titletype">债权转让</span><span class="pmain-titlemoney">10.00</span></li>
              <!--<div style=" width:
										760px;height:200px;padding-top:100px; text-align:center;color:#d4d4d4; font-size:16px;">
										 <img src="<%=basePath%>/images/nondata.png" width="60" height="60"><br><br>
										   暂无回款计划</div>-->
            </ul>
            <div class="pmain-morebtn" style="border-top:0;margin-top:0"></div>
          </div>
          <div class="pmain-conmain2" style=" display:none;">
            <div class="pmain-contitle"> <span class="pmain-titledate">交易时间</span><span class="pmain-w100">交易类型</span><span class="pmain-w120">交易金额</span><span class="pmain-w120">余额</span><span class="pmain-w200">备注</span> </div>
            <ul style="float:left;">
              <li><span class="pmain-titledate">2015-10-20</span><span class="pmain-w100">债权转让</span><span class="pmain-w120 pmain-money">10.00</span><span class="pmain-w120 pmain-money">10.00</span><span class="pmain-w200">备注</span></li>
              <!--<div style=" width:760px;height:200px;padding-top:100px; text-align:center;color:#d4d4d4; font-size:16px;">
										 <img src="<%=basePath%>/images/nondata.png" width="60" height="60"><br><br>
										   暂无资金记录</div>-->
            </ul>
            <div class="pmain-morebtn" style="border-top:0;margin-top:0"></div>
          </div>
          <div class="pmain-conmain3" style=" display:none;">
            <div class="pmain-contitle"> <span class="pmain-titledate">交易时间</span><span class="pmain-w210">项目</span><span class="pmain-w80">状态</span><span class="pmain-whb200">我的投资</span><span class="pmain-whb110">我的收益</span> </div>
            <ul style="float:left;">
              <li><span class="pmain-titledate">2015-10-20</span><span class="pmain-w210">债权转让</span><span class="pmain-w80 pmain-money">10.00</span><span class="pmain-whb200 pmain-money">10.00</span><span class="pmain-whb110">备注</span></li>
              <!--	<div style=" width:760px;height:200px;padding-top:100px; text-align:center;color:#d4d4d4; font-size:16px;">
										    <img src="<%=basePath%>/images/nondata.png" width="60" height="60"><br><br>
										   暂无投资记录</div>-->
            </ul>
            <div class="pmain-morebtn" style="border-top:0;margin-top:0"></div>
          </div>
        </div>
      </div>
    </div>
    <div class="clear"></div>
  </div>
</div>
<!--网站底部-->
<jsp:include page="bottom.jsp"></jsp:include>	</body>
</html>
