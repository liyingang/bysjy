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
            <a class="navbar-brand" href="stuInfo.action">管理员端</a>
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
                    <li><a href="stuInfo.action"><i class="fa fa-user fa-fw"></i> 学生信息管理</a></li>
                    <li><a href="entAppInfo.action"><i class="fa fa-user fa-fw"></i> 企业招聘管理</a></li>
                    <li><a href="backup.action"><i class="fa fa-gear fa-fw"></i> 数据备份</a></li>
                    <li><a href="statistic.action"><i class="fa fa-gear fa-fw"></i> 数据统计</a></li>
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
                    <a  href="stuInfo.action">
                        <i class="fa fa-edit"></i> 学生信息管理</a>
                </li>
                <li>
                    <a class="active-menu" href="entAppInfo.action"><i class="fa fa-edit"></i>企业招聘管理</a>
                </li>
                <li>
                    <a  href="backup.action"><i class="fa fa-bar-chart-o"></i>数据备份</a>
                </li>
                <li>
                    <a href="statistic.action"><i class="fa fa-qrcode"></i>数据统计</a>
                </li>
            </ul>

        </div>

    </nav>
    <div id="page-wrapper">
        <div id="page-inner">
            <div class="row">
                <div class="col-md-12">
                    <h1 class="page-header">
                        企业信息管理 <small>管理企业信息</small>
                    </h1>
                </div>
            </div>
            <!-- /.row -->
            <div class="panel panel-default">
                <div class="panel-body">
                    <form class="form-inline" method="get" id="form">
                        <div class="form-group">
                            <label for="eno">账号</label>
                            <input type="text" class="form-control" id="eno" name="eno" />
                        </div>
                        <div class="form-group">
                            <label for="name">企业名称</label>
                            <input type="text" class="form-control" id="name" name="name" />
                        </div>
                        <div class="form-group">
                            <label for="tel">电话</label>
                            <input type="text" class="form-control" id="tel" name="tel" />
                        </div>

                        <div class="form-group">
                            <label for="legal">法人</label>
                            <input type="text" class="form-control" id="legal" name="legal" />
                        </div>
                        <div class="form-group">
                            <label for="email">邮箱</label>
                            <input type="text" class="form-control" id="email" name="email" />
                        </div>
                        <div class="form-group">
                            <label for="addr">地址</label>
                            <input type="text" class="form-control" id="addr" name="addr" />
                        </div>
                        <button type="submit" class="btn btn-primary">查询</button>
                    </form>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            企业信息列表
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables">
                                    <thead>
                                    <tr>
                                        <th>账号</th>
                                        <th>密码</th>
                                        <th>企业名称</th>
                                        <th>电话</th>
                                        <th>法人</th>
                                        <th>邮箱</th>
                                        <th>地址</th>
                                        <th>认证状态</th>
                                        <th>操作</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${sessionScope.enterprises}" var="row">
                                        <tr>
                                            <td>${row.eId}</td>
                                            <td>${row.pwd}</td>
                                            <td>${row.name}</td>
                                            <td>${row.tel}</td>
                                            <td>${row.legal}</td>
                                            <td>${row.email}</td>
                                            <td>${row.addr}</td>
                                            <td>${row.refirm}</td>
                                            <td>
                                                <input type="button" class="btn btn-primary btn-xs" data-toggle="modal"
                                                       data-target="#DetailDialog" onclick="edit('${row.eId}')" value="修改"/>
                                                <input type="button" class="btn btn-primary btn-xs" onclick="deleteStu('${row.eId}')" value="删除"/>
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
                            <h4 class="modal-title" id="myModalLabel">修改</h4>
                        </div>
                        <div class="modal-body">
                            <form class="form-horizontal" id="ent_form">
                                <div class="form-group">
                                    <label  class="col-sm-2 control-label">账号</label>
                                    <div class="col-sm-10"><input type="text" class="form-control" id="edit_id" placeholder="账号" name="eId" /></div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">密码</label>
                                    <div class="col-sm-10"><input type="text" class="form-control" id="edit_pwd" placeholder="密码" name="pwd" /></div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">企业名称</label>
                                    <div class="col-sm-10"><input type="text" class="form-control" id="edit_name" placeholder="名称" name="name" /></div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">电话</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="edit_tel" placeholder="电话" name="tel" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">法人</label>
                                    <div class="col-sm-10"><input type="text" class="form-control" id="edit_legal" placeholder="法人" name="legal" /></div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">邮箱</label>
                                    <div class="col-sm-10"><input type="email" class="form-control" id="edit_email" placeholder="邮箱" name="email" /></div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">地址</label>
                                    <div class="col-sm-10"><input type="text" class="form-control" id="edit_addr" placeholder="地址" name="addr" /></div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">认证状态</label>
                                    <div class="col-sm-10"><select	class="form-control" id="edit_show" name="refirm">
                                        <option value="">--请选择--</option>
                                        <option value="1">已认证</option>
                                        <option value="2">未认证</option>
                                    </select></div>
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                            <button type="button" id="save" class="btn btn-primary" onclick="updateCustomer()">保存修改</button>
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

<!-- Custom Js -->
<%--<script src="../js/custom-scripts.js"></script>--%>
<!-- Morris Chart Js -->
<%--<script src="../js/morris/raphael-2.1.0.min.js"></script>--%>
<%--<script src="../js/morris/morris.js"></script>--%>
<script>
    $(document).ready(function () {
        $('#dataTables').dataTable({
            "bPaginate": true,  //是否显示分页
            "bFilter": false,//搜索栏
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
            $("#sex").change(function(){
                if($(this).val() !==''){
                    Atable.columns(0).search($(this).find("option:selected").text()).draw();
                }
            });
    });
</script>
<script>

    function edit(id) {
        $.ajax({
            type:"get",
            url:"${pageContext.request.contextPath}/manager/entEdit.action",
            data:{"id":id},
            success:function(data) {
                $("#edit_id").val(data.eId).attr("disabled","disabled");
                $("#edit_pwd").val(data.pwd);
                $("#edit_tel").val(data.tel);
                $("#edit_name").val(data.name);
                $("#edit_legal").val(data.legal);
                $("#edit_email").val(data.email);
                $("#edit_addr").val(data.addr);
                $("#edit_show").val(data.refirm);
                if(data.refirm==="1"){
                    $("#edit_show").val(1);
                }else{
                    $("#edit_show").val(2);
                }
            }
        });
    }
    function updateCustomer() {
        $("#edit_id").removeAttr("disabled");
        $.post("${pageContext.request.contextPath}/manager/entUpdate.action",$("#ent_form").serialize(),function(data){
            if(data ==="OK"){
                alert("信息更新成功！");
                window.location.reload();
            }else{
                alert("信息更新失败！");
                window.location.reload();
            }
        });
    }

    function deleteStu(id) {
        if(confirm('确实要删除该企业吗?')) {
            $.post("${pageContext.request.contextPath}/manager/entDelete.action",{"id":id},
                function(data){
                    if(data ==="OK"){
                        alert("删除成功！");
                        window.location.reload();
                    }else{
                        alert("删除失败！");
                        window.location.reload();
                    }
                });
        }
    }
</script>

</body>
</html>
