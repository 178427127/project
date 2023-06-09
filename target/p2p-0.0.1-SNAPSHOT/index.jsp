<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="ft"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=basePath%>/css/common.css" rel="stylesheet" />
<link href="<%=basePath%>/css/index.css" rel="stylesheet"
	type="text/css">
<script type="text/javascript" src="<%=basePath%>/script/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath%>/script/common.js"></script>
<title>Insert title here</title>
<style>
/*上下滚动*/
#scrollDiv {
	width: 400px;
	height: 30px;
	line-height: 30px;
	overflow: hidden;
}

#scrollDiv li {
	height: 30px;
	padding-left: 10px;
}
</style>

<script type="text/javascript">
	// 上下滚动
	function AutoScroll(obj) {
		$(obj).find("ul:first").animate({
			marginTop : "-25px"
		}, 500, function() {
			$(this).css({
				marginTop : "0px"
			}).find("li:first").appendTo(this);
		});
	}
	$(document).ready(function() {
		var myar = setInterval('AutoScroll("#scrollDiv")', 3000);
		$("#scrollDiv").hover(function() {
			clearInterval(myar);
		}, function() {
			myar = setInterval('AutoScroll("#scrollDiv")', 3000)
		}); //当鼠标放上去的时候，滚动停止，鼠标离开的时候滚动开始
	});
</script>
</head>
<body>
	<!-- 导航栏 --><jsp:include page="head.jsp"></jsp:include>
	<!--banner-->
	<div class="flexslider">
		<ul class="slides">
			<c:forEach items="${sy}" var="nots">
				<li
				style="background-image: url(${nots.noticepicture}); width: 100%; float: left; margin-right: -100%; position: relative; opacity: 0; display: block; z-index: 1; background-position: 50% 0px; background-repeat: no-repeat no-repeat;"
				class=""><a href="http://${nots.noticecontent }" target="_blank"></a></li>
				</c:forEach>
		</ul>
	</div>
	<script
		src="${pageContext.request.contextPath}/script/jquery.flexslider-min.js"></script>
	<script>
	 
	
	
	
		$(function() {
			//判断最新公告是否为空,为空加载通知
			var list = "${listss}";
			if (list == "") {
				window.location = "${pageContext.request.contextPath}/notice/noticetop5.do";
			}

			$('.flexslider').flexslider({
				directionNav : true,
				pauseOnAction : false
			});
			//产品列表滚动
			var pLength = $('.pListContentBox > li').length;
			var cishu = pLength - 4;
			var n = 0;
			$('.pListContentBox').css({
				'width' : pLength * 245 + 'px'
			});
			if (pLength > 4) {
				$('.pListRight').addClass('curr');
			}
			$('.pListRight').on('click', function() {
				if (cishu > 0) {
					//alert('1');
					n++;
					cishu--;
					$('.pListContentBox').animate({
						'left' : '-' + n * 244 + 'px'
					}, 500);
					if (cishu == 0) {
						$('.pListRight').removeClass('curr');
					}
					if (n > 0) {
						$('.pListLeft').addClass('curr');
					}
				}
			});
			$('.pListLeft').on('click', function() {
				if (n > 0) {
					n--;
					cishu++;
					$('.pListContentBox').animate({
						'left' : '-' + n * 244 + 'px'
					}, 500);
					if (n == 0) {
						$('.pListLeft').removeClass('curr');
					}
					if (cishu > 0) {
						$('.pListRight').addClass('curr');
					}
				}
			});
			//alert(pLength);
		});
	</script>
	<!--注册登陆模块-->
	<!--<div class="login_float">
  <div class="index_login">
    <div class="login_name">民信金融年化收益率</div>
    <div class="login_num">10<font>%</font>~17<font>%</font></div>
    <div class="login_info"> <span class="login_info1"><font>3~4倍</font>定期存款收益</span> <span class="login_info2"><font>30倍</font>活期存款收益</span> </div>
    <div class="clear"></div>
    <div class="login_btn"><a href="register.html">立即注册</a></div>
    <p class="login_reg">已有账号，<a href="login.html">立即登录</a></p>
  </div>
</div>-->
	<script type="text/javascript">
		var gaintop;
		$(function() {
			gaintop = $(".login_float").css("top");
			$(".login_float").css("top", -695);
			$(".login_float").show();
			$(".login_float").animate({
				top : gaintop,
				opacity : 1
			}, 800);
			$(".login_float").animate({
				top : '-=12px',
				opacity : 1
			}, 200);
			$(".login_float").animate({
				top : gaintop,
				opacity : 1
			}, 200);
			$(".login_float").animate({
				top : '-=6px',
				opacity : 1
			}, 200);
			$(".login_float").animate({
				top : gaintop,
				opacity : 1
			}, 200);
			$(".login_float").animate({
				top : '-=2px',
				opacity : 1
			}, 100);
			$(".login_float").animate({
				top : gaintop,
				opacity : 1
			}, 100);
		});
	</script>
	
	<div class="new-announcement">
		<div class="new-announcement-title">最新公告</div>
		<div class="new-announcement-content">
			<div id="scrollDiv">
				<ul style="margin-top: 0px;">
					<c:forEach items="${listss}" var="nots">
						<li><a class="black-link"
							href="${pageContext.request.contextPath}/notice/notget.do?ids=${nots.noticeid }"
							target="_blank"> ${nots.noticetitle }</a></li>
					</c:forEach>
					<!--  -->
				</ul>
			</div>
		</div>
		<a class="more"
			href="${pageContext.request.contextPath}/notice/notlist.do?ids=1">更多</a>
	</div>
	<div class="ipubs">
		<span class="o1">累计投资金额:<strong>
				<fmt:formatNumber value="${ztz}" pattern="#.##" /><!-- 1,047,288,128.79 -->
		</strong>元
		</span> <span class="o2">累积收益:<strong>
				<fmt:formatNumber value="${ztz*0.3}" pattern="#.##" /><!-- 1,047,288,128.79 -->
		</strong>元
		</span><span class="o2">网站已运行:<strong>
				365
		</strong>天
		</span><span class="o4">注册人数:<strong>${size}</strong>人
		</span>
	</div>
	<div class="feature">
		<a class="fea1" href="#"> <i></i>
			<h3>高收益</h3> <span>年化收益率最高达“20%<br> 50元起投，助您轻松获收益
		</span>
		</a> <a class="fea2" href="#"> <i></i>
			<h3>安全理财</h3> <span>100%本息保障<br> 实物质押，多重风控审核
		</span>
		</a> <a class="fea3" href="#"> <i></i>
			<h3>随时赎回</h3> <span>两步赎回您的资金<br> 最快当日到账
		</span>
		</a> <a class="fea4" href="#"> <i></i>
			<h3>随时随地理财</h3> <span>下载手机客户端<br> 随时随地轻松理财
		</span>
		</a>
	</div>
	<!--中间内容-->
	<div class="main clearfix mrt30" data-target="sideMenu">
		<div class="wrap">
			<div class="page-left fn-left">
				<div class="mod-borrow">
					<div class="hd">
						<h2 class="pngbg">
							<i class="icon icon-ttyx"></i>推荐项目
						</h2>
						<div class="fn-right f14 c-888">
							常规发标时间每天<span class="c-555">10:00，13:00和20:00</span>，其余时间根据需要随机发
						</div>
					</div>
					<div class="bd">
						<div class="des">
							<span class="fn-left">期限1-29天，期限短，收益见效快</span><a
								href="<%=basePath %>invest/investSel.do" class="fn-right">查看更多&gt;&gt;</a>
						</div>
						<div class="borrow-list">
							<ul>
								<c:forEach items="${tjlist }" var="invest" varStatus="status">
									<li>
										<div class="title">
											<a target="_blank"><i class="icon icon-zhai"
												title="${invest.ptype }"></i></a><a
												href="investInfo.do?bmid=${invest.id }" class="f18"
												title="${invest.pname }" target="_blank">${invest.pname }<!-- 金女士债权质押借款1万元 --></a>
										</div>
										<table width="100%" border="0" cellpadding="0" cellspacing="0">
											<tbody>
												<tr>
													<td width="260">借款金额<span class="f24 c-333">${invest.ptotalmoney }<!-- 10000.00 --></span>元
													</td>
													<td width="165">年利率<span class="f24 c-orange">${invest.pincome }%<!-- 10.70% -->
													</span></td>
													<td width="180" align="center">截止期限<span
														class="f24 c-333"><fmt:formatDate
																value="${invest.ptime}" pattern="yyyy-MM-dd" /></span>
													</td>
													<td><div class="circle">
															<div class="left progress-bar">
																<div
																	class="progress-bgPic progress-bfb<fmt:formatNumber value="${(invest.pmoney/invest.ptotalmoney)*10<1?1:(invest.pmoney/invest.ptotalmoney)*10}" pattern="#"/>">
																	<div class="show-bar">
																		<fmt:formatNumber
																			value="${(invest.pmoney/invest.ptotalmoney)*100}"
																			pattern="#" />
																		%
																	</div>
																</div>
															</div>
														</div></td>
													<td align="right"><c:if test="${invest.pstate=='1' }">
															<a class="ui-btn btn-gray"
																href="investInfo.do?bmid=${invest.id }">立即投标</a>
														</c:if> <c:if test="${invest.pstate=='2' }">
															<a class="ui-btn btn-gray"
																href="investInfo.do?bmid=${invest.id }">还款中</a>
														</c:if></td>
												</tr>
											</tbody>
										</table>
									</li>
								</c:forEach>
							</ul>
						</div>
					</div>
				</div>
				<c:if test="${biaoList.size() > 0 }">
					<c:forEach items="${biaoList }" var="biao">
						<div class="mod-borrow mrt20">
							<div class="hd">
								<h2 class="pngbg">
									<i class="icon icon-yyyz"></i>${biao.bname }
								</h2>
								<div class="fn-right f14 c-888">
									参与人次：<span class="c-555">61.37万次</span>&nbsp;&nbsp;&nbsp;平均满标时间：<span
										class="c-555">1小时24分11秒</span>
								</div>
							</div>
							<div class="bd">
								<div class="des">
									<span class="fn-left">期限1-12月，收益更高</span><a
										href="<%=basePath %>invest/investSel.do" class="fn-right">查看更多&gt;&gt;</a>
								</div>
								<div class="borrow-list">
									<ul>
										<c:forEach items="${proList }" var="pro">
											<c:if test="${pro.ptype == biao.id }">
												<li>
													<div class="title">
														<a target="_blank"><i class="icon icon-che"
															title="车易贷"></i></a><a href="investInfo.do?bmid=${pro.id }"
															class="f18" title="毕先生宝马320汽车质押贷款10万元" target="_blank">${pro.pname}<!-- 毕先生宝马320汽车质押贷款10万元 --></a>
													</div>
													<table width="100%" border="0" cellpadding="0"
														cellspacing="0">
														<tbody>
															<tr>
																<td width="260">借款金额<span class="f24 c-333">${pro.ptotalmoney}</span>元
																</td>
																<td width="165">年利率<span
																	class="f24 c-orange relative">${pro.pincome}% <!--公益标 20150724 lj-->
																		<!--公益标 20150724 lj-->
																</span></td>
																<td width="180" align="center">截至期限<span
																	class="f24 c-333"><fmt:formatDate
																			value="${pro.ptime}" pattern="yyyy-MM-dd" /></span>
																</td>
																<td><div class="circle">
																		<div class="left progress-bar">
																			<!-- (pro.pmoney/pro.ptotalmoney) -->
																			<div
																				class="progress-bgPic progress-bfb<fmt:formatNumber value="${(pro.pmoney/pro.ptotalmoney)*10<1?1:(pro.pmoney/pro.ptotalmoney)*10}" pattern="#"/>">
																				<div class="show-bar">
																					<fmt:formatNumber
																						value="${(pro.pmoney/pro.ptotalmoney)*100}"
																						pattern="#" />
																					%
																				</div>
																			</div>
																		</div>
																	</div></td>
																<td align="right">
																	<!-- (<fmt:formatNumber value="${(pro.pmoney/pro.ptotalmoney)*100}" pattern="#.00"/>==100) -->
																	<c:if test="${pro.pstate=='2' }">
																		<a class="ui-btn btn-gray"
																			href="investInfo.do?bmid=${pro.id }">还款中</a>
																	</c:if> <c:if test="${pro.pstate=='1' }">
																		<a class="ui-btn btn-gray"
																			href="investInfo.do?bmid=${pro.id }">立即投标</a>
																	</c:if> <c:if test="${pro.pstate=='3' }">
																		<a class="ui-btn btn-gray"
																			href="investInfo.do?bmid=${pro.id }">已失效</a>
																	</c:if> <c:if test="${pro.pstate=='4' }">
																		<a class="ui-btn btn-gray"
																			href="investInfo.do?bmid=${pro.id }">已筹完</a>
																	</c:if>
																</td>
															</tr>
														</tbody>
													</table>
												</li>
											</c:if>
										</c:forEach>
									</ul>
								</div>
							</div>
						</div>
					</c:forEach>
				</c:if>
			</div>
			<div class="page-right fn-right" style="top: 0px;">
				<div class="mod-risk-tip">
					<i class="icon icon-tip"></i><a href="#" class="c-orange">收益与风险并存，请理性选择平台</a>
				</div>
				<div class="mod mod-notice mrt20">
					<div class="hd">
						<h3>网站公告</h3>
						<a href="/p2p/notice/notlist.do?ids=1" class="fn-right">更多&gt;</a>
					</div>
					<div class="bd">
						<div class="article-list clearfix">
							<ul>

								<c:forEach items="${listss}" var="nots">
									<li><a
										href="${pageContext.request.contextPath}/notice/notget.do?ids=${nots.noticeid }"
										title="${nots.noticetitle }">
											${ft:substring(nots.noticetitle,0,13) } </a> <span class="date"><fmt:formatDate
												value="${nots.noticelasttime }" /></span></li>
								</c:forEach>
							</ul>
						</div>
					</div>
				</div>
				<div class="mod mod-rank clearfix ui-tab mrt20">
					<div class="hd">
						<h3>排行榜</h3>
						<div class="ui-tab-nav">
							<i class="icon icon-cur"></i>
							<ul>
								<li class="active"><a href="#">收益</a></li>
								<li><a href="#">投资</a></li>
							</ul>
							<a href="#" class="fn-right"> </a>
						</div>
					</div>
					<div class="bd">
						<div class="ui-tab-cont">
							<div class="ui-tab-item active">
								<ul class="rank-list">
									<li><span class="fl"><em class="n1">01</em>gz******</span><span
										class="fr">￥1,115,461.07</span></li>
									<li><span class="fl"><em class="n2">02</em>米克******</span><span
										class="fr">￥1,003,890.04</span></li>
									<li><span class="fl"><em class="n3">03</em>灵儿******</span><span
										class="fr">￥895,618.71</span></li>
									<li><span class="fl"><em class="n4">04</em>li******</span><span
										class="fr">￥795,154.06</span></li>
									<li><span class="fl"><em class="n5">05</em>豆芽******</span><span
										class="fr">￥747,154.44</span></li>
								</ul>
							</div>
							<div class="ui-tab-item">
								<ul class="rank-list">
									<li><span class="fl"><em class="n1">01</em>黄世******</span><span
										class="fr">￥78,714,974.00</span></li>
									<li><span class="fl"><em class="n2">02</em>一诺******</span><span
										class="fr">￥58,428,720.00</span></li>
									<li><span class="fl"><em class="n3">03</em>hj******</span><span
										class="fr">￥57,844,191.00</span></li>
									<li><span class="fl"><em class="n4">04</em>老马******</span><span
										class="fr">￥38,808,064.00</span></li>
									<li><span class="fl"><em class="n5">05</em>写意******</span><span
										class="fr">￥31,341,159.00</span></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="mod mod-report ui-tab clearfix mrt20">
					<div class="hd">
						<div class="ui-tab-nav">
							<i class="icon icon-cur"></i>
							<ul>
								<li class="active"><a href="javascript:;">媒体报道</a></li>
							</ul>
						</div>
					</div>
					<div class="bd">
						<div class="ui-tab-cont">
							<div class="ui-tab-item active">
								<%-- <div class="headlines">
									<img src="<%=basePath%>/images/news.jpg"> <a title="平台遭遇P2P滑稽抄袭"
										target="_blank" href="#">平台遭遇P2P滑稽抄袭</a><br> <span
										class="des">抄袭者居然把被抄袭者的名字一起抄下来，这样的乌龙抄袭你见过没...</span>
								</div> --%>
								<div class="article-list">
									<ul>
										<c:forEach items="${meiti}" var="nots">
											<li><a
												href="/p2p/notice/notget.do?ids=${nots.noticeid }"
												title="${nots.noticetitle }" target="_blank">${nots.noticetitle }</a></li>
										</c:forEach>
									</ul>
								</div>
							</div>

						</div>
					</div>
				</div>
				<div class="mrt20 mod">
					<a href="<%=basePath%>/demo.html"><img
						src="<%=basePath%>/images/pic_home_js.jpg" width="300" height="80"
						alt="收益计算器" class="pic"></a>
				</div>
			</div>
		</div>
	</div>
	<script src="<%=basePath%>script/index.js"></script>
	<div class="partners wrap clearfix mrb30">
		<div class="partners-inner ui-tab">
			<div class="hd">
				<div class="ui-tab-nav">
					<i class="icon icon-cur" style="left: 151px;"></i>
					<ul>
						<li class=""><a href="#">合作机构</a></li>
						<li class="active"><a href="#">友情链接</a></li>
					</ul>
				</div>
			</div>
			<div class="bd">
				<div class="ui-tab-cont">
					<div class="ui-tab-item active">
						<div class="img-scroll">
							<div class="container">
								<ul>
									<li><img src="<%=basePath%>/images/logo_sbcvc.png"
										width="152" height="52" alt="软银"></li>
									<li><img src="<%=basePath%>/images/logo_abc.png"
										width="152" height="52" alt="农业银行"></li>
									<li><img src="<%=basePath%>/images/logo_wdzj.png"
										width="152" height="52" alt="网贷之家"></li>
									<li><img src="<%=basePath%>/images/logo_baidu.png"
										width="152" height="52" alt="百度"></li>
									<li><img src="<%=basePath%>/images/logo_aqb.png"
										width="152" height="52" alt="安全宝"></li>
									<li><img src="<%=basePath%>/images/logo_gds.png"
										width="152" height="52" alt="万国数据"></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="ui-tab-item">
						<div class="links">
							<a target="_blank" href="http://www.wd361.com">网贷互联</a> <a
								target="_blank" href="http://www.bjzq.com.cn">北京证券网</a> <a
								target="_blank" href="http://v.yidai.com/">易贷微理财</a> <a
								target="_blank" href="http://www.wangdaicaifu.com">P2P</a> <a
								target="_blank" href="http://www.p2pchina.com">网贷中国</a> <a
								target="_blank" href="http://www.wangdaibangshou.com">网贷帮手</a> <a
								target="_blank" href="https://www.okcoin.cn">比特币网</a> <a
								target="_blank" href="http://www.p2p110.com">网贷110</a> <a
								target="_blank" href="http://www.zcmall.com">招财猫理财</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--网站底部-->
	<jsp:include page="bottom.jsp"></jsp:include>
</html>