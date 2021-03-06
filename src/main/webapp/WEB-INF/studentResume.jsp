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
            height:2em;
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
        .form-group>textarea{
            flex: 2;
            margin-left: -52px;
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
            <a class="navbar-brand" href="person.action">毕业生端</a>
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
                    <li><a href="person.action"><i class="fa fa-user fa-fw"></i> 个人信息</a></li>
                    <li><a href="resume.action"><i class="fa fa-user fa-fw"></i> 简历</a></li>
                    <li><a href="apply.action"><i class="fa fa-gear fa-fw"></i> 岗位搜索</a></li>
                    <li><a href="other.action"><i class="fa fa-gear fa-fw"></i> 他人信息搜索</a></li>
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
                    <a  href="person.action">
                        <i class="fa fa-edit"></i> 个人信息</a>
                </li>
                <li>
                    <a class="active-menu" href="resume.action"><i class="fa fa-edit"></i>简历</a>
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
                        简历 <small>简历管理与发布</small>
                    </h1>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="row">
                                <form  method="post" id="form" onsubmit="return check()">
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <label>账号</label>
                                            <span id="id"  class="form-control-static">${sessionScope.Student.sId}</span>
                                        </div>
                                        <div class="form-group">
                                            <label>年龄</label>
                                            <span class="form-control-static">${sessionScope.Student.age}</span>
                                        </div>
                                        <div class="form-group">
                                            <label>电话</label>
                                            <span class="form-control-static">${sessionScope.Student.tel}</span>
                                        </div>
                                        <div class="form-group">
                                            <label>院系</label>
                                            <span class="form-control-static">${sessionScope.Student.dept}</span>
                                        </div>
                                        <div class="form-group">
                                            <label>社会履历</label>
                                            <textarea name="society" id="society"  class="form-control" rows="10">${sessionScope.resumewb.society}</textarea>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <label>应聘职位</label>
                                            <input id="apply" name="apply" class="form-control" value="${sessionScope.resumewb.apply}">
                                        </div>
                                        <div class="form-group">
                                            <label>性别</label>
                                            <span class="form-control-static">${sessionScope.Student.sex}</span>
                                        </div>
                                        <div class="form-group">
                                            <label>学历</label>
                                            <span class="form-control-static">${sessionScope.Student.edu}</span>
                                        </div>
                                        <div class="form-group">
                                            <label>专业</label>
                                            <span class="form-control-static">${sessionScope.Student.professional}</span>
                                        </div>
                                        <div class="form-group">
                                            <label>自我评价</label>
                                            <textarea name="person" id="person" class="form-control" rows="10">${sessionScope.resumewb.personal}</textarea>
                                        </div>
                                    </div>
                                    <div class="clearfix">
                                    </div>

                                    <hr/>
                                    <div class="mybutton">
                                        <input type="checkbox" id="box"  />发布
                                        <button  type="submit" class="btn btn-default">保存</button>
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

            <footer><p>Copyright &copy; 2016.Company name All rights reserved.</footer>
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
        var apply=$("#apply").val();
        var society=$("#society").val();
        var person=$("#person").val();
        var box=$("#box")[0];
        var form=$("#form");
        if(apply.trim()===""){
            alert("应聘职位为空！");return false;
        }
        if(society.trim()===""){
            alert("社会履历为空！");return false;
        }
        if(person.trim()===""){
            alert("个人简介为空！");return false;
        }

        if(box.checked){
            form.attr("action","showResume.action");
        }else{
            form.attr("action","saveResume.action");
        }
        return true;
    }
</script>
</body>
</html>