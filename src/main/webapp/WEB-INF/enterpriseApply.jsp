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
             <a class="navbar-brand" href="${pageContext.request.contextPath}/enterprise/apply.action">企业用户端</a>
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
                    <a href="${pageContext.request.contextPath}/enterprise/info.action"><i class="fa fa-edit"></i> 企业信息</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/enterprise/resources.action"><i class="fa fa-edit"></i>资料维护</a>
                </li>
                <li>
                    <a class="active-menu" href="${pageContext.request.contextPath}/enterprise/apply.action"><i class="fa fa-bar-chart-o"></i>岗位招聘</a>
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
                        岗位管理 <small>发布职位信息</small>
                    </h1>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    <form action="#" role="form" method="get" onsubmit="return check()">
                                         <div class="form-group">
                                                 <label>企业id：</label>
                                                 <span >${sessionScope.Enterprise.eId}</span>
                                             </div>
																					
											 <div class="form-group">
												<label>职位编号　：　</label>
												<input class="form-control" name="aId" placeholder="请输入职位编号" type="text" value="${sessionScope.Application.aId}" />
											 </div>
                                        										
                                             <div class="form-group">
                                                 <label>职位名称　：　</label>
                                                  <input class="form-control" name="post" placeholder="请输入职位名称" type="text" value="${sessionScope.Application.post}" />
                                             </div>
                                        
                                         <div class="form-group">
                                            <label>学历要求　：　</label>
                                             <input class="form-control" name="education" placeholder="请输入学历要求" type="text" value="${sessionScope.Application.education}" />
                                        </div>
                                        
                                         <div class="form-group">
                                            <label>工　　　　资：</label>
                                             <input class="form-control" name="salary" placeholder="请输入工资待遇" type="number" value="${sessionScope.Application.salary}" />
                                        </div>
                                        
                                         <div class="form-group">
                                            <label>岗位需求人数：</label>
                                            <input class="form-control" name="num"  placeholder="请输入岗位需求人数" type="number"  value="${sessionScope.Application.num}"/> 
                                        </div>
                                        
                                         <div class="form-group">
                                            <label>职位信息描述：</label>
                                            <input class="form-control" name="declaration" placeholder="请输入职位信息描述" type="text" value="${sessionScope.Application.declaration}" />  
                                        </div>
                         
                                         <button type="submit" class="btn btn-default" >发　布</button>
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
<script>
    function check(){
    	 $(form).attr("action","apply.action");break;
    	 return true;
    }
</script>
</body>
</html>