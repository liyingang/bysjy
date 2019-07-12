<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>毕业生就业系统</title>
    <link rel="stylesheet" href="../css/bootstrap.css">
    <link rel="stylesheet" href="../css/font-awesome.css">
    <link rel="stylesheet" href="../js/morris/morris-0.4.3.min.css">
    <link rel="stylesheet" href="../css/custom-styles.css"  />
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="../css/graduate-apply.css">
    <style>
        .form-group{
            display: flex;

        }
        .form-group>label{
            flex: 1;
            justify-items: left;
            margin-left: 50px;
        }
        .form-group>span{
            font-weight: 700;
            flex: 2;
            margin-left: -50px;
        }
        .form-group>input{
            flex: 2;
            margin-left: -52px;
        }
        #employed,#home{
            flex: 2;
        }
        .mybutton{
            text-align: center;
        }
        .mybutton>button{
            margin-left: 100px;
            margin-right: 100px;
        }
        footer{
            text-align: center;
        }
    </style>
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
            <a class="navbar-brand" href="${pageContext.request.contextPath}/student/person.action">毕业生端</a>
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
                                <strong>人名</strong>
                                <span class="pull-right text-muted">
                                        <em>时间</em>
                                    </span>
                            </div>
                            <div>事件</div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <strong>人名</strong>
                                <span class="pull-right text-muted">
                                        <em>时间</em>
                                    </span>
                            </div>
                            <div>事件</div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <strong>人名</strong>
                                <span class="pull-right text-muted">
                                        <em>时间</em>
                                    </span>
                            </div>
                            <div>事件</div>
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
                    <li><a href="${pageContext.request.contextPath}/student/person.action"><i class="fa fa-user fa-fw"></i> 个人信息</a></li>
                    <li><a href="${pageContext.request.contextPath}/student/resume.action"><i class="fa fa-user fa-fw"></i> 简历</a></li>
                    <li><a href="${pageContext.request.contextPath}/student/apply.action"><i class="fa fa-gear fa-fw"></i> 岗位搜索</a></li>
                    <li><a href="${pageContext.request.contextPath}/student/other.action"><i class="fa fa-gear fa-fw"></i> 他人信息搜索</a></li>
                    <li class="divider"></li>
                    <li><a href="${pageContext.request.contextPath}/student/out.action"><i class="fa fa-sign-out fa-fw"></i> 退出</a>
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
                    <a class="active-menu" href="person.action">
                        <i class="fa fa-edit"></i> 个人信息</a>
                </li>
                <li>
                    <a href="resume.action"><i class="fa fa-edit"></i>简历</a>
                </li>
                <li>
                    <a href="apply.action"><i class="fa fa-bar-chart-o"></i>岗位搜索</a>
                </li>
                <li>
                    <a href="other.action"><i class="fa fa-qrcode"></i>他人信息搜索</a>
                </li>
            </ul>

        </div>

    </nav>
    <div id="page-wrapper">
        <div id="page-inner">
            <div class="row">
                <div class="col-md-12">
                    <h1 class="page-header">
                        个人信息 <small>信息管理与发布</small>
                    </h1>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="row">
                                <form action="#" id="form" method="post" onsubmit="return check()">
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <label>账号</label>
                                            <span id="sno" class="form-control-static">${sessionScope.Student.sId}</span>
                                        </div>
                                        <div class="form-group">
                                            <label>年龄</label>
                                            <span id="age" class="form-control-static">${sessionScope.Student.age}</span>
                                        </div>
                                        <div class="form-group">
                                            <label>电话</label>
                                            <input id="tel" name="tel" class="form-control " placeholder="${sessionScope.Student.tel}" value="${sessionScope.Student.tel}">
                                        </div>
                                        <div class="form-group">
                                            <label>院系</label>
                                            <span id="dept"  class="form-control-static">${sessionScope.Student.dept}</span>
                                        </div>
                                        <div class="form-group">
                                            <label><span class="bg-color-red">*</span>生日</label>
                                            <input id="birth" name="birth" type="date" class="form-control" value="${sessionScope.Student.birth}" >

                                        </div>
                                        <div class="form-group">
                                            <label><span class="bg-color-red">*</span>就业地点</label>
                                            <input id="employed" name="employed" type="text" class="form-control" value="${sessionScope.Student.employed} "  disabled>
                                        </div>

                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <label>姓名</label>
                                            <span id="name" class="form-control-static">${sessionScope.Student.name}</span>
                                        </div>
                                        <div class="form-group">
                                            <label>性别</label>
                                            <span id="sex" class="form-control-static">${sessionScope.Student.sex}</span>
                                        </div>
                                        <div class="form-group">
                                            <label>学历</label>
                                            <span id="edu" class="form-control-static">${sessionScope.Student.edu}</span>
                                        </div>
                                        <div class="form-group">
                                            <label>专业</label>
                                            <span id="professor" class="form-control-static">${sessionScope.Student.professional}</span>
                                        </div>
                                        <div class="form-group">
                                            <label><span class="bg-color-red">*</span>籍贯</label>
                                            <input id="home" name="home" class="form-control" value="${sessionScope.Student.home}">
                                        </div>
                                        <div class="form-group">
                                            <label><span class="bg-color-red"></span>发布状态</label>
                                            <span  class="form-control-static">${sessionScope.Student.sshow=="0"?"未发布":"已发布"}</span>
                                        </div>
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                    <hr/>
                                    <div class="mybutton">
                                        <input type="checkbox" id="box" />发布
                                        <button id="save" type="submit" class="btn btn-default">保存</button>
                                    </div>
                                </form>


                            </div>
                            <!-- /.row (nested) -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>

            <footer><p>Copyright &copy; 2016.BYSJY-Company All rights reserved.</footer>
        </div>
        <!-- /. PAGE INNER  -->
    </div>
</div>
<script src="../js/jquery-1.10.2.js"></script>
<!-- Bootstrap Js -->
<script src="../js/bootstrap.min.js"></script>
<!-- Metis Menu Js -->
<script src="../js/jquery.metisMenu.js"></script>
<!-- Morris Chart Js -->
<script src="../js/morris/raphael-2.1.0.min.js"></script>
<script src="../js/morris/morris.js"></script>
<!-- Custom Js -->
<script src="../js/custom-scripts.js"></script>
<script>

    function check() {
        var tel=$("#tel").val();
        var birth=$("#birth").val();
        var home=$("#home").val();
        //var employed=$("#employed").Val();
        var box=$("#box")[0];
        var form=$("#form");
        if(tel.trim()===""){
            alert("电话为空！");return false;
        }
        if(birth.trim()===""){
            alert("生日非法！");return false;
        }
        if(home.trim()===""){
            alert("籍贯为空！");return false;
        }
        // if(employed.trim()===""){
        //     alert("就业单位为空！");return false;
        // }
        if(box.checked){
            form.attr("action","showPerson.action");
        }else{
            form.attr("action","savePerson.action");
        }
        return true;
    }

</script>
</body>
</html>