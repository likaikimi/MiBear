<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MiBear.Web.Login2" %>

<!DOCTYPE html>

<head>
    <meta charset="utf-8" />
    <title>Metronic | Login Page</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta content="" name="description" />
    <meta content="" name="author" />

    <link rel="shortcut icon" href="media/image/favicon.ico" />

    <link href="media/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="media/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="media/css/style-metro.css" rel="stylesheet" type="text/css" />
    <link href="media/css/style.css" rel="stylesheet" type="text/css" />
    <link href="media/css/default.css" rel="stylesheet" type="text/css" id="style_color" />
    <link href="media/css/uniform.default.css" rel="stylesheet" type="text/css" />
    <link href="media/css/login.css" rel="stylesheet" type="text/css" />

    <script src="media/JScript/jquery-3.2.1.min.js"></script>
    <script src="media/JScript/bootstrap-3.3.7/js/bootstrap.min.js"></script>
    <script src="media/JScript/bootbox.min.js"></script>

    <script type="text/javascript">
        function Login() {
            var loginName = $('#txtLoginName').val();
            var loginPwd = $('#txtPassword').val();

            $.ajax({
                type: 'post', async: false, cache: false, dataType: 'json',
                url: 'Service/Login.ashx',
                data: { 'action': 'UserLogin', 'loginName': loginName, 'loginPwd': loginPwd },
                success: function (data) {
                    if (data.success) {
                        window.location.href = 'Index.aspx';
                    } else {
                        bootbox.alert({
                            message: data.msg,
                            buttons: {
                                ok: {
                                    label: '确定',
                                    className: 'btn btn-danger'
                                }
                            }
                        });
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
<body class="login">
    <!-- BEGIN LOGO -->
    <div class="logo">
        <img src="media/image/logo-big.png" alt="" />
    </div>
    <!-- END LOGO -->
    <!-- BEGIN LOGIN -->
    <div class="content">
        <!-- BEGIN LOGIN FORM -->
        <form class="login-form">
            <h3 class="form-title">Login to your account</h3>
            <div class="alert alert-error hide">
                <button class="close" data-dismiss="alert"></button>
                <span>Enter any username and password.</span>
            </div>
            <div class="control-group">
                <!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
                <label class="control-label visible-ie8 visible-ie9">Username</label>
                <div class="controls">
                    <div class="input-icon left">
                        <i class="fa fa-user"></i>
                        <input class="m-wrap" type="text" id="txtLoginName" name="txtLoginName" placeholder="Username" />
                    </div>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label visible-ie8 visible-ie9">Password</label>
                <div class="controls">
                    <div class="input-icon left">
                        <i class="fa fa-lock"></i>
                        <input class="m-wrap" type="password" id="txtPassword" name="txtPassword" placeholder="Password" />
                    </div>
                </div>
            </div>
            <div class="form-actions">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <label class="checkbox">
                    &nbsp;<input type="checkbox" name="remember" value="1" />
                    Remember me
                </label>
                <button type="button" class="btn green pull-right" onclick="Login()">
                    Login <i class="m-icon-swapright m-icon-white"></i>
                </button>
            </div>
        </form>
        <!-- END LOGIN FORM -->
    </div>
    <!-- END LOGIN -->
    <!-- BEGIN COPYRIGHT -->
    <div class="copyright">
        2013 &copy; Metronic. Admin Dashboard Template.
    </div>
    <!-- END COPYRIGHT -->
</body>
