<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>登录</title>
    <link href="${pageContext.request.contextPath}/css/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/jui.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/css.css" rel="stylesheet">
    <link  href="${pageContext.request.contextPath}/css/jquery.idcode.css" rel="stylesheet"/>
    <link rel="shortcut icon" href="#" />
    <style>
        .yzm-span{
            position: absolute;
            left: 252px;
            top: 5px;
        }
        #span2{
            margin-left: 50px;
        }
        #p1{
            margin-top: 50px;
            font-size: 50px;
        }
        #p2{
            margin-top: 50px;
            font-size: 30px;
        }
        .err{
            color: red;
            text-align: center;
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
                        <p class="css-title">用户登录</p>
                        <span class="err">${msg}</span>
                        <div class="css-main">
                            <form id="form"  method="post" onsubmit="return check()">
                                <div class="css-input-group">
                                    <div class="css-input-group">
                                        <div class="css-tit">账号</div>
                                        <div class="css-group">
                                            <input placeholder="请输入帐号" name="id" id="id" type="text">
                                        </div>
                                    </div>
                                    <div class="css-input-group">
                                        <div class="css-tit">密码</div>
                                        <div class="css-group">
                                            <input placeholder="请输入密码" name="pwd" id="pwd" type="password">
                                        </div>
                                    </div>
                                    <div class="css-input-group css-yzm">
                                        <div class="css-tit">验证码</div>
                                        <div class="css-group">
                                            <input placeholder="请输入验证码"  type="text" id="Txtidcode">
                                        </div> 	<span id="idcode" class="yzm-span"></span>
                                    </div>
                                    <div class="css-input-group">
                                        <div class="css-tit">类型</div>
                                        <div class="css-group">
                                            <select id="select">
                                                <option value="1">毕业生</option>
                                                <option value="2">企业</option>
                                                <option value="3">管理员</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="css-btn">
                                        <button type="submit" class="btn  css-btn-block" id="btns">用户登录</button><br /> <br />
                                    </div>	</div>
                            </form>
                            <div>
                                <span id="span2">没有账号？立即注册</span>
                                <input type="button" value="企业注册" class="btn" onclick="window.open('registerEnt.action')"  />
                            </div>

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
<script src="${pageContext.request.contextPath}/js/jquery-1.12.4.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.idcode.js"></script>
<script>
    ($.idcode.setCode());
    function check(){
        var sno = $("#id").val();
        var psw = $("#pwd").val();
        var IsBy = $.idcode.validateCode();
        var ch=$("#select").val();
        var form=$("form");
        if(sno==="" || psw===""){
            alert("账号或密码不能为空！");
            return false;
        }
        if(!IsBy){
            alert("验证码错误！");
            return false;
        }
        switch(ch) {
            case "1" : $(form).attr("action","login1.action");break;
            case "2" : $(form).attr("action","login2.action");break;
            case "3" : $(form).attr("action","login3.action");break;
        }
        return true;
    }
</script>
</body>
</html>

