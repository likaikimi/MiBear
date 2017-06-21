%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MiBear.Web.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <title>MiBear!</title>

    <!-- jQuery-->
    <script src="Vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="Vendors/bootstrap/dist/js/bootstrap.min.js" type="text/javascript"></script>
    <link href="Vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" />
    <!-- bootbox -->
    <script src="Vendors/others/bootbox.min.js" type="text/javascript"></script>
    <!-- Font Awesome -->
    <link href="Vendors/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <!-- NProgress -->
    <link href="Vendors/nprogress/nprogress.css" rel="stylesheet" />
    <!-- Animate.css -->
    <link href="Vendors/animate.css/animate.min.css" rel="stylesheet" />

    <!-- Build Theme Style -->
    <link href="Vendors/build/css/custom.min.css" rel="stylesheet" />

    <!-- Custom Theme Script -->
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

<body class="login">
    <div>
        <a class="hiddenanchor" id="signup"></a>
        <a class="hiddenanchor" id="signin"></a>

        <div class="login_wrapper">
            <div class="animate form login_form">
                <section class="login_content">
                    <form>
                        <h1>Login Form</h1>
                        <div>
                            <input id="txtLoginName" type="text" class="form-control" placeholder="loginname" required="" />
                        </div>
                        <div>
                            <input id="txtLoginPwd" type="password" class="form-control" placeholder="password" required="" />
                        </div>
                        <div>
                            <input id="btnLogin" type="button" class="btn btn-default submit" value="登录" onclick="Login()" />
                            <a class="reset_pass" href="#">忘记密码?</a>
                        </div>

                        <div class="clearfix"></div>

                        <div class="separator">
                            <p class="change_link">
                                New to site?
                  <a href="#signup" class="to_register">Create Account </a>
                            </p>

                            <div class="clearfix"></div>
                            <br />

                            <div>
                                <h1><i class="fa fa-paw"></i>MiBear!</h1>
                                <p>©2016 All Rights Reserved. MiBear!</p>
                            </div>
                        </div>
                    </form>
                </section>
            </div>

            <div id="register" class="animate form registration_form">
                <section class="login_content">
                    <form>
                        <h1>Create Account</h1>
                        <div>
                            <input type="text" class="form-control" placeholder="Username" required="" />
                        </div>
                        <div>
                            <input type="email" class="form-control" placeholder="Email" required="" />
                        </div>
                        <div>
                            <input type="password" class="form-control" placeholder="Password" required="" />
                        </div>
                        <div>
                            <a class="btn btn-default submit" href="index.html">Submit</a>
                        </div>

                        <div class="clearfix"></div>

                        <div class="separator">
                            <p class="change_link">
                                Already a member ?
                  <a href="#signin" class="to_register">Log in </a>
                            </p>

                            <div class="clearfix"></div>
                            <br />

                            <div>
                                <h1><i class="fa fa-paw"></i>MiBear!</h1>
                                <p>©2016 All Rights Reserved. MiBear!</p>
                            </div>
                        </div>
                    </form>
                </section>
            </div>
        </div>
    </div>
</body>
</html>
