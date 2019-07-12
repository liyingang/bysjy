<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>毕业生就业系统</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/js/morris/morris-0.4.3.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/custom-styles.css"  />
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/graduate-apply.css">

</head>
<body>
<div id="wrapper">
    <!--最上边的导航-->
    <nav class="navbar navbar-default top-navbar" role="navigation">
        <!--左边标志-->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="${pageContext.request.contextPath}/enterprise/info.action">企业用户端</a>
        </div>
        <!--右边的导航-->
        <ul class="nav navbar-top-links navbar-right">
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                    <i class="fa fa-envelope fa-fw"></i> 信息<i class="fa fa-caret-down"></i>
                </a>
                <!--消息-->
                <ul class="dropdown-menu dropdown-messages">
                    <li>
                        <a href="#">
                            <div>
                                <strong>徐天</strong>
                                <span class="pull-right text-muted">
                                        <em>2019-4-9</em>
                                    </span>
                            </div>
                            <div>投递简历</div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <strong>张冰</strong>
                                <span class="pull-right text-muted">
                                        <em>2019-4-10</em>
                                    </span>
                            </div>
                            <div>请求发布职位</div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <strong>李爽</strong>
                                <span class="pull-right text-muted">
                                        <em>2019-4-11</em>
                                    </span>
                            </div>
                            <div>投递简历</div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a class="text-center" href="#">
                            <strong>查看所有信息</strong>
                            <i class="fa fa-angle-right"></i>
                        </a>
                    </li>
                </ul>
                <!-- /.dropdown-messages -->
            </li>
            <!-- /.dropdown -->
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                    <i class="fa fa-user fa-fw"></i> 用户<i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-user">
                    <li><a href="${pageContext.request.contextPath}/enterprise/info.action"><i class="fa fa-user fa-fw"></i> 企业信息</a></li>
                    <li><a href="${pageContext.request.contextPath}/enterprise/resources.action"><i class="fa fa-user fa-fw"></i> 资料维护</a></li>
                    <li><a href="${pageContext.request.contextPath}/enterprise/apply.action"><i class="fa fa-gear fa-fw"></i> 岗位招聘</a></li>
                    <li><a href="${pageContext.request.contextPath}/enterprise/applyed.action"><i class="fa fa-gear fa-fw"></i>应聘管理</a></li>
                    <li class="divider"></li>
                    <li><a href="out.action"><i class="fa fa-sign-out fa-fw"></i> 退出</a>
                    </li>
                </ul>
                <!-- /.dropdown-user -->
            </li>
            <!-- /.dropdown -->
        </ul>
    </nav>
    <!--左边导航栏-->
    <nav class="navbar-default navbar-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav" id="main-menu">
                <li>
                    <a class="active-menu" href="${pageContext.request.contextPath}/enterprise/info.action">
                        <i class="fa fa-edit"></i> 企业信息</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/enterprise/resources.action"><i class="fa fa-edit"></i>资料维护</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/enterprise/apply.action"><i class="fa fa-bar-chart-o"></i>岗位招聘</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/enterprise/applyed.action"><i class="fa fa-qrcode"></i>应聘信息</a>
                </li>
            </ul>
        </div>

    </nav>
    <div id="page-wrapper">
        <div id="page-inner">
            <div class="row">
                <div class="col-md-12">
                    <h1 class="page-header">
                        企业信息 <small>查看企业信息</small>
                    </h1>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    <form action="#" role="form" method="post">
                                        <div class="form-group">
                                            <label>企业账号：</label>
                                            <span >${sessionScope.Enterprise.eId}</span>
                                        </div>
										
										 <div class="form-group">
										    <label>账号密码：</label>
										     <span >${sessionScope.Enterprise.pwd}</span>
										</div>
										
                                        <div class="form-group">
                                            <label>企业名称：</label>
                                             <span >${sessionScope.Enterprise.name}</span>
                                        </div>

                                    <div class="form-group">
                                       <label>联系方式：</label>
                                        <span >${sessionScope.Enterprise.tel}</span>
                                   </div>
								   
								    <div class="form-group">
								       <label>单位法人：</label>
								        <span >${sessionScope.Enterprise.legal}</span>
								   </div>
								   
								    <div class="form-group">
								       <label>电子邮箱：</label>
								        <span >${sessionScope.Enterprise.email}</span>
								   </div>
								   
								    <div class="form-group">
								       <label>企业地址：</label>
								        <span >${sessionScope.Enterprise.addr}</span>
								   </div>
                                    </form>
                                </div>
                                <!-- /.col-lg-6 (nested) -->
                                
                            </div>
                            <!-- /.row (nested) -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>

            <footer><p>Copyright &copy; 2019.Graduate Employment Management System All rights reserved.</footer>
        </div>
        <!-- /. PAGE INNER  -->
    </div>
</div>
<script src="${pageContext.request.contextPath}/js/jquery-1.10.2.js"></script>
<!-- Bootstrap Js -->
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<!-- Metis Menu Js -->
<script src="${pageContext.request.contextPath}/js/jquery.metisMenu.js"></script>
<!-- Morris Chart Js -->
<script src="${pageContext.request.contextPath}/js/morris/raphael-2.1.0.min.js"></script>
<script src="${pageContext.request.contextPath}/js/morris/morris.js"></script>
<!-- Custom Js -->
<script src="${pageContext.request.contextPath}/js/custom-scripts.js"></script>
</body>
</html>