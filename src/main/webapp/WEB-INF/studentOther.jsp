<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                    <a  href="apply.action"><i class="fa fa-bar-chart-o"></i>岗位搜索</a>
                </li>
                <li>
                    <a class="active-menu" href="other.action"><i class="fa fa-qrcode"></i>他人信息搜索</a>
                </li>
            </ul>

        </div>

    </nav>
    <div id="page-wrapper">
        <div id="page-inner">
            <div class="row">
                <div class="col-md-12">
                    <h1 class="page-header">
                        搜索 <small>获取他人经验</small>
                    </h1>
                </div>
            </div>
            <!-- /.row -->
            <div class="panel panel-default">
                <div class="panel-body">
                    <form class="form-inline" method="get" id="form">
                        <div class="form-group">
                            <label for="sno">账号</label>
                            <input type="text" class="form-control" id="sno" name="sno" />
                        </div>
                        <div class="form-group">
                            <label for="tel">电话</label>
                            <input type="text" class="form-control" id="tel" name="tel" />
                        </div>
                        <div class="form-group">
                            <label for="apply">职位</label>
                            <select class="form-control" id="apply" name="apply">
                                <option value="">--请选择--</option>
                                    <option value="">--请选择--</option>
                                    <option value="1">程序员</option>
                                    <option value="2">软件工程师</option>
                                    <option value="3">架构师</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="profession">专业</label>
                            <select	class="form-control" id="profession"  name="profession">
                                <option value="">--请选择--</option>
                                <option value="1">软件工程</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="sex">性别</label>
                            <select class="form-control" id="sex" name="sex">
                                <option value="">--请选择--</option>
                                <option value="1">男</option>
                                <option value="2">女</option>
                            </select>
                        </div>
                        <%--<button type="submit" class="btn btn-primary">查询</button>--%>
                    </form>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            搜索信息列表
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables">
                                    <thead>
                                    <tr>
                                        <th>姓名</th>
                                        <th>公司</th>
                                        <th>职业</th>
                                        <th>薪资</th>
                                        <th>电话</th>
                                        <th>性别</th>
                                        <th>年龄</th>
                                        <th>操作</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${sessionScope.others}" var="row">
                                        <tr>
                                            <td>${row.name}</td>
                                            <td>${row.cName}</td>
                                            <td>${row.post}</td>
                                            <td>${row.salary}</td>
                                            <td>${row.tel}</td>
                                            <td>${row.sex}</td>
                                            <td>${row.age}</td>
                                            <td>
                                                <input type="button" class="btn btn-primary btn-xs" data-toggle="modal"
                                                   data-target="#DetailDialog" onclick="see('${row.sshow}',${row.sId})" value="详细信息"/>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>

                        </div>
                    </div>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- 查看信息模态框 -->
            <div class="modal fade" id="DetailDialog" tabindex="-1" role="dialog"
                 aria-labelledby="myModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                            <h4 class="modal-title" id="myModalLabel">详细信息</h4>
                        </div>
                        <div class="modal-body">
                            <form class="form-horizontal" id="new_customer_form">
                                <div class="form-group">
                                    <label  class="col-sm-2 control-label">姓名</label>
                                    <div class="col-sm-10"><span id="name"></span></div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">公司</label>
                                    <div class="col-sm-10"><span id="cName"></span></div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">职业</label>
                                    <div class="col-sm-10"><span id="post"></span></div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">薪资</label>
                                    <div class="col-sm-10"><span id="salary"></span></div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">电话</label>
                                    <div class="col-sm-10"><span id="tele"></span></div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">性别</label>
                                    <div class="col-sm-10"><span id="sexx"></span></div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">年龄</label>
                                    <div class="col-sm-10"><span id="age"></span></div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">学历</label>
                                    <div class="col-sm-10"><span id="edu"></span></div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">专业</label>
                                    <div class="col-sm-10"><span id="professional"></span></div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">社会履历</label>
                                    <div class="col-sm-10"><span id="society"></span></div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">个人简介</label>
                                    <div class="col-sm-10"><span id="personal"></span></div>
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                        </div>
                    </div>
                </div>
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
        var Atable=$("#dataTables").DataTable();
        $("#apply").change(function(){
            if($(this).val() !==''){
                Atable.columns(0).search($(this).find("option:selected").text()).draw();
            }
        });
    });
</script>
<!-- Custom Js -->
<%--<script src="../js/custom-scripts.js"></script>--%>
<%--<!-- Morris Chart Js -->--%>
<%--<script src="../js/morris/raphael-2.1.0.min.js"></script>--%>
<%--<script src="../js/morris/morris.js"></script>--%>
<script>
    function see(flag,row) {
        if(flag==="0"){
            alert("对方未公开信息!");
        }else{
            $.ajax({
                type:"get",
                url:"${pageContext.request.contextPath}/student/otherOn.action",
                data:{"id":row},
                success:function(data) {
                    $("#name").text(data.name);
                    $("#cName").text(data.cName);
                    $("#post").text(data.post);
                    $("#salary").text(data.salary);
                    $("#tele").text(data.tel);
                    $("#sexx").text(data.sex);
                    $("#age").text(data.age);
                    $("#edu").text(data.edu);
                    $("#professional").text(data.professional);
                    $("#society").text(data.society);
                    $("#personal").text(data.personal);
                }
            });
        }
    }
</script>
</body>
</html>