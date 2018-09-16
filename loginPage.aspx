﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="loginPage.aspx.cs" Inherits="loginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login To Continue</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="icon" type="image/png" href="images/icons/favicon.ico" />
    <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css" />
    <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css" />
    <link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css" />
    <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css" />
    <link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css" />
    <link rel="stylesheet" type="text/css" href="css/util.css" />
    <link rel="stylesheet" type="text/css" href="css/main.css" />
    <link href="css/loader/loader-1.css" rel="stylesheet" />
</head>
<body>
    <div id="loader"></div>
    <div class="limiter">
        <div class="container-login100">
            <div class="wrap-login100">
                <form class="login100-form validate-form p-l-55 p-r-55 p-t-178" runat="server">
                    <span class="login100-form-title">Log In <a href="adminSide/a1.aspx">.</a>
                    </span>

                    <div class="wrap-input100 validate-input m-b-16" data-validate="Please enter Email">
                        <asp:TextBox ID="txtname" CssClass="input100" placeholder="UserName" runat="server"></asp:TextBox>
                        <span class="focus-input100"></span>
                    </div>

                    <div class="wrap-input100 validate-input" data-validate="Please enter password">
                        <asp:TextBox ID="txtpassword" CssClass="input100" placeholder="Password" TextMode="Password" runat="server"></asp:TextBox>
                        <span class="focus-input100"></span>
                    </div>

                    <div class="text-right p-t-13 p-b-23">
                        <span class="txt1">Forgot
                        </span>

                        <a href="forgotPage.aspx" class="txt2">Username / Password?
                        </a>
                    </div>

                    <div class="container-login100-form-btn">
                        <asp:Button ID="btnlogin" OnClick="btnlogin_Click" CssClass="login100-form-btn" runat="server" Text="Log In" />
                    </div>
                    <div>
                        <asp:Label ID="l1" ForeColor="Red" Visible="false" runat="server" Text="Label"></asp:Label>
                        <br />
                    </div>

                    <div class="flex-col-c p-t-170 p-b-40">
                        <span class="txt1 p-b-9">Don’t have an account?
                        </span>

                        <a href="registerPage.aspx" class="txt3">Sign up now
                        </a>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
    <script src="vendor/animsition/js/animsition.min.js"></script>
    <script src="vendor/bootstrap/js/popper.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="vendor/select2/select2.min.js"></script>
    <script src="vendor/daterangepicker/moment.min.js"></script>
    <script src="vendor/daterangepicker/daterangepicker.js"></script>
    <script src="vendor/countdowntime/countdowntime.js"></script>
    <script src="js/main.js"></script>

</body>

</html>