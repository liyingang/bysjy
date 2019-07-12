<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1,user-scalable=0">
		<title>企业注册</title>
		<link href="css/font-awesome.min.css" rel="stylesheet">
		<link href="css/jui.css" rel="stylesheet">
		<link href="css/css.css" rel="stylesheet">
		<link rel="stylesheet" href="css/jquery.idcode.css"/>
		<script src="js/jquery-1.12.4.js"></script>
		<script src="js/jquery.idcode.js"></script>
		<style>
			.yzm-span{
				position: absolute;
				left: 252px;
				top: 5px;
			}
			#p1{
				margin-top: 50px;
				font-size: 50px;
				}
			#p2{
				margin-top: 50px;
				font-size: 30px;
				}
		</style>
	</head>
	<body>
		<div class="css-wrapper">
			<div class="css-toprow">
				<div class="container">
				</div>
			</div>
			<div class="css-out-content">

				<div class="css-main-u">
					<div class="css-log-banner">
						<div class="container">
							<div class="css-text">
								<p id="p1">毕 业 生<br />就 业 系 统 </p>
								<p id="p2">在 这 里<br />连 接<br />职 场 精 英</p>
							</div>
							<div class="css-conbox">
								<p class="css-title">企业注册</p>
								<div class="css-main">
									<form action="#" method="get" onsubmit="return check()">
										<div class="css-input-group">
											<div class="css-input-group">
												<div class="css-tit">账号</div>
												<div class="css-group">
													<input placeholder="请输入帐号" name="eId" id="e_id" type="text">
												</div>
											</div>
											<div class="css-input-group">
												<div class="css-tit">密码</div>
												<div class="css-group">
													<input placeholder="请输入密码" name="pwd" id="epwd" type="password">
												</div>
											</div>
											
										<div class="css-input-group">
										<div class="css-tit">企业名称</div>
										<div class="css-group">
											<input placeholder="请输入企业名称" name="name" id="ename" type="text">
										</div>
									</div>
									
										<div class="css-input-group">
										<div class="css-tit">联系方式</div>
										<div class="css-group">
											<input placeholder="请输入联系方式" name="tel" id="etel" type="text">
										</div>
									</div>
									
									<div class="css-input-group">
										<div class="css-tit">单位法人</div>
										<div class="css-group">
											<input placeholder="请输入单位法人" name="legal" id="elegal" type="text">
										</div>
									</div>
									
									<div class="css-input-group">
										<div class="css-tit">电子邮箱</div>
										<div class="css-group">
											<input placeholder="请输入电子邮箱" name="email" id="email" type="email">
										</div>
									</div>
									
										<div class="css-input-group">
										<div class="css-tit">企业地址</div>
										<div class="css-group">
											<input placeholder="请输入企业地址" name="addr" id="eaddr" type="text">
										</div>
									</div>
											<div class="css-btn">
												<button type="submit" class="btn css-btn-block">立即注册</button>
											</div>
									</div>	
								</form>
							</div>
						</div>
					</div>
				</div>
			
			</div>
		</div>
		<div class="css-footer">
			<ul class="css-list-inline css-corplink">
			</ul>
			<p><a href="#"></a>苏ICP备12345678号 地址：南京市江宁区弘景大道99号金陵科技学院 邮编：211110</p>
			<p>Copyright 2019 版权所有 江苏省南京市金陵科技学院 All Rights Reserved &nbsp;技术支持:<a href="#"
				 target="_blank">毕业生就业系统二人组</a></p>
		</div>
		</div>
		<script>
    function check(){
        var id = $("#e_id").val();
        var psw = $("#epwd").val();
        var form=$("form");
        if(id==="" || psw===""||id==null||pwd==null){
            alert("账号或密码不能为空！");
            return false;
        }
       
      return true;
      
    }
    </script>
	</body>
</html>
