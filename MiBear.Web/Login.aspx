<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MiBear.Web.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <title>MiBear登录</title>
    <meta name="keywords" content="" />
    <meta name="description" content="" />

    <script src="js/jquery.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/bootbox.min.js" type="text/javascript"></script>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />

    <script type="text/javascript">
        function Login() {
            var loginName = $('#txtLoginName').val();
            var loginPwd = $('#txtLoginPwd').val();

            $.ajax({
                type: 'post', cache: false, dataType: 'json',
                url: 'Service/Login.ashx',
                data: { 'action': 'UserLogin', 'loginName': loginName, 'loginPwd': loginPwd },
                success: function (data) {
                    if (data.success) {
                        window.location.href = 'Index.aspx';
                    } else {
                        bootbox.alert(data.msg);
                    }
                }
            });
        }

        //回车事件
        document.onkeydown = function (e) {
            var ev = document.all ? window.event : e;
            if (ev.keyCode == 13) {
                $('#btnLogin').click();//处理事件 
            }
        }
    </script>
</head>
<body class="gray-bg">
    <div class="middle-box text-center loginscreen  animated fadeInDown">
        <div>
            <div>
                <h1 class="logo-name"></h1>
            </div>
            <h3>欢迎使用 MiBear</h3>

            <form class="m-t" role="form" action="index.html">
                <div class="form-group">
                    <input id="txtLoginName" type="text" class="form-control" placeholder="用户名" />
                </div>
                <div class="form-group">
                    <input id="txtLoginPwd" type="password" class="form-control" placeholder="密码" />
                </div>
                <button id="btnLogin" type="button" class="btn btn-primary block full-width m-b" onclick="Login()">登 录</button>
                <p class="text-muted text-center">
                    <a href="login.html#"><small>忘记密码了？</small></a> | <a href="register.html"><small>注册一个新账号</small></a>
                </p>
            </form>
        </div>
    </div>
</body>
</html>
