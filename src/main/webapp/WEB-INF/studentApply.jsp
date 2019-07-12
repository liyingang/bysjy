<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="bysjy" uri="http://www.bysjy.com/common/"%>
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
    <link rel="stylesheet" href="../js/dataTables/dataTables.bootstrap.css">


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
                    <a  href="resume.action"><i class="fa fa-edit"></i>简历</a>
                </li>
                <li>
                    <a class="active-menu" href="apply.action"><i class="fa fa-bar-chart-o"></i>岗位搜索</a>
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
                        岗位 <small>岗位搜索</small>
                    </h1>
                </div>
            </div>
            <!-- /.row -->
            <div class="panel panel-default">
                <div class="panel-body">
                    <form class="form-inline" method="get" id="form">
                        <div class="form-group">
                            <label for="apply">应聘职位</label>
                            <select class="form-control" id="apply" name="apply">
                                <option value="">--请选择--</option>
                                <option value="1">程序员</option>
                                <option value="2">软件工程师</option>
                                <option value="3">架构师</option>
                            </select>
                        </div>
                        <%--<div class="form-group">--%>
                            <%--<label for="profession">薪资范围</label>--%>
                            <%--<select	class="form-control" id="profession"  name="profession">--%>
                                <%--<option value="">--请选择--</option>--%>
                                    <%--<option value="1">3000-5000</option>--%>
                                    <%--<option value="2">5000-8000</option>--%>
                                    <%--<option value="3">8000-10000</option>--%>
                                    <%--<option value="4">10000-15000</option>--%>
                                    <%--<option value="5">15000↑</option>--%>
                            <%--</select>--%>
                        <%--</div>--%>
                        <%--<button type="submit" class="btn btn-primary" id="search">查询</button>--%>
                    </form>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            岗位信息列表
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables">
                                    <thead>
                                    <tr>
                                        <th>岗位名称</th>
                                        <th>来源公司</th>
                                        <th>薪资</th>
                                        <th>学历要求</th>
                                        <th>电话</th>
                                        <th>需求数</th>
                                        <th>操作</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${sessionScope.AEN}" var="row">
                                        <tr>
                                            <td>${row.post}</td>
                                            <td>${row.name}</td>
                                            <td>${row.salary}</td>
                                            <td>${row.education}</td>
                                            <td>${row.tel}</td>
                                            <td>${row.num}</td>
                                            <td>
                                                <a href="#" class="btn btn-primary btn-xs" onclick= "sendToEnterprise('${row.aId}',${row.num})">申请应聘</a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>

                        </div>
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
<!-- DATA TABLE SCRIPTS -->
<script src="../js/dataTables/jquery.dataTables.js"></script>
<script src="../js/dataTables/dataTables.bootstrap.js"></script>

<!-- Custom Js -->
<%--<script src="../js/custom-scripts.js"></script>--%>
<!-- Morris Chart Js -->
<%--<script src="../js/morris/raphael-2.1.0.min.js"></script>--%>
<%--<script src="../js/morris/morris.js"></script>--%>
<script>
    $(document).ready(function () {
        $('#dataTables').dataTable({
            "bPaginate": true,  //是否显示分页
            "bFilter": true,//搜索栏
            "oLanguage": {
                sLengthMenu: "每页显示 _MENU_ 条记录",
                sZeroRecords: "对不起，没有匹配的数据",
                sInfo: "第 _START_ - _END_ 条 / 共 _TOTAL_ 条数据",
                sInfoEmpty: "没有匹配的数据",
                sInfoFiltered: "(数据表中共 _MAX_ 条记录)",
                sProcessing: "正在加载中...",
                sSearch: "全文搜索：",
                oPaginate: {
                    sFirst: "第一页",
                    sPrevious: " 上一页 ",
                    sNext: " 下一页 ",
                    sLast: " 最后一页 "
                }
            }
        });
        var Atable=$('#dataTables').DataTable();
            $("#apply").change(function(){
                if($(this).val() !==''){
                    Atable.columns(0).search($(this).find("option:selected").text()).draw();
                }
            });
    });
</script>
<script>
    function sendToEnterprise(aid,num) {
        if(confirm('确实要申请该职位吗?')) {
            $.post("applyOn.action",{"aid":aid,"num":num},
                function(data){
                    if(data ==="OK"){
                        alert("申请成功！");
                    }else if(data==="BEEN"){
                        alert("您已申请过这家公司！");
                    }else {
                        alert("申请失败！");
                    }
                    window.location.reload();
                });
        }
    }
    
</script>

</body>
</html>
