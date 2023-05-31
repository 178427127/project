<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>登录--管理系统</title>

    <!-- Bootstrap core CSS -->
    <link href="<%=basePath%>assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="<%=basePath%>assets/font-awesome/css/font-awesome.css" rel="stylesheet" />

    <!-- Custom styles for this template -->
    <link href="<%=basePath%>assets/css/style.css" rel="stylesheet">
    <link href="<%=basePath%>assets/css/style-responsive.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--  [if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif] -->
    <%--  //location.href="<%=basePath%>main.jsp"; --%>
    <script type="text/javascript" src="<%=basePath%>Jquery/jquery-1.7.2.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            $("#bt").click(function(){
                var user = document.getElementById("uid").value;
                var password = document.getElementById("pwd").value;
                $.post("user_L.do",{"uid":user,"pwd":password},function(date){
                    if(date=="0"){
                        alert("登陆失败！");
                    }else{
                        //alert("登陆成功！");

                        location.href="menu_S.do";
                    }
                });
            });
        });
    </script>
</head>

<body>

<!-- **********************************************************************************************************************************************************
MAIN CONTENT
*********************************************************************************************************************************************************** -->

<div id="login-page">
    <div class="container">

        <form class="form-login" id="fr"
              action="<%=basePath%>/employee/bglogin.do" method="post">
            <h2 class="form-login-heading">后台管理系统</h2>
            <div class="login-wrap">

             欢迎使用

            </div>



        </form>

    </div>
</div>

<!-- js placed at the end of the document so the pages load faster -->
<script src="<%=basePath%>assets/js/jquery.js"></script>
<script src="<%=basePath%>assets/js/bootstrap.min.js"></script>

<!--BACKSTRETCH-->
<!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
<script type="text/javascript" src="<%=basePath%>assets/js/jquery.backstretch.min.js"></script>
<script>
    $.backstretch("<%=basePath%>img/6.jpg", {speed: 500});
</script>


</body>
</html>
