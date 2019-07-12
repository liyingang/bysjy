<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
     <link rel="stylesheet" href="${pageContext.request.contextPath}/js/dataTables/dataTables.bootstrap.css">
	
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
          <a class="navbar-brand" href="${pageContext.request.contextPath}/enterprise/applyed.action">企业用户端</a>
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
                    <a href="${pageContext.request.contextPath}/enterprise/info.action">  <i class="fa fa-edit"></i> 企业信息</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/enterprise/resources.action"><i class="fa fa-edit"></i>资料维护</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/enterprise/apply.action"><i class="fa fa-bar-chart-o"></i>岗位招聘</a>
                </li>
                <li>
                    <a class="active-menu" href="${pageContext.request.contextPath}/enterprise/applyed.action"><i class="fa fa-qrcode"></i>应聘信息</a>
                </li>
            </ul>

        </div>

    </nav>
    <div id="page-wrapper">
        <div id="page-inner">
            <div class="row">
                <div class="col-md-12">
                    <h1 class="page-header">
                        应聘管理 <small>查看应聘消息</small>
                    </h1>
                </div>
            </div>
           
		    <!-- /.row -->
		     
		
		
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">毕业生应聘消息</div>
                        <!-- /.panel-heading -->
                        <table class="table table-bordered table-striped" id="dataTables">
                            <thead>
                            <tr>
                                <th>简历编号</th>
                                <th>毕业生学号</th>
                                <th>毕业生姓名</th>
                                <th>应聘职位</th>
                                <th>社会阅历</th>
                                <th>自我评价</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${sessionScope.Applyed}" var="row">
                                <tr>
                                    <td>${row.rId} </td>
                                    <td>${row.sId}</td>
                                    <td>${row.name}</td>
                                    <td>${row.apply}</td>
                                    <td>${row.society}</td>
                                    <td>${row.personal}</td>                   
                                    <td>
                                        <a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#customerEditDialog" onclick="deleted('${row.rId}')" >录取</a>
                                        <a href="#" class="btn btn-danger btn-xs" onclick="deleted('${row.rId}')" >拒绝</a>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
               <!-- 创建客户模态框 -->
            <div class="modal fade" id="DetailDialog" tabindex="-1" role="dialog"
                 aria-labelledby="myModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                            <h4 class="modal-title" id="myModalLabel">查询结果</h4>
                        </div>
                        <div class="modal-body">
                            <form class="form-horizontal" id="new_customer_form">
                                <div class="form-group">
                                    <label  class="col-sm-2 control-label">简历编号</label>
                                    <div class="col-sm-10"><span id="rId"></span></div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">学生学号</label>
                                    <div class="col-sm-10"><span id="sId"></span></div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">姓名</label>
                                    <div class="col-sm-10"><span id="name"></span></div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">应聘职位</label>
                                    <div class="col-sm-10"><span id="apply"></span></div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">社会阅历</label>
                                    <div class="col-sm-10"><span id="society"></span></div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">自我评价</label>
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



<script src="${pageContext.request.contextPath}/js/dataTables/jquery.dataTables.js"></script>
<script src="${pageContext.request.contextPath}/js/dataTables/dataTables.bootstrap.js"></script>
<script>
    $(document).ready(function () {
        $('#dataTables').dataTable({
            "bPaginate": true,  //是否显示分页
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
       
    });
</script>
<script>
    function deleted(row) {
            $.ajax({
                type:"get",
                url:"${pageContext.request.contextPath}/enterprise/delete.action",
                data:{"rId":row},
                
            });
    }
</script>
</body>
</html>