<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact</title>
    <link href="css/main.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        .navbar-brand
        {
            position: relative;
            z-index: 2;
        }

        .navbar-nav.navbar-right .btn
        {
            position: relative;
            z-index: 2;
            padding: 4px 20px;
            margin: 10px auto;
        }

        .navbar .navbar-collapse
        {
            position: relative;
        }

            .navbar .navbar-collapse .navbar-right > li:last-child
            {
                padding-left: 22px;
            }

        .navbar .nav-collapse
        {
            position: absolute;
            z-index: 1;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            margin: 0;
            padding-right: 120px;
            padding-left: 80px;
            width: 100%;
        }

        .navbar.navbar-default .nav-collapse
        {
            background-color: #f8f8f8;
        }

        .navbar.navbar-inverse .nav-collapse
        {
            background-color: #222;
        }

        .navbar .nav-collapse .navbar-form
        {
            border-width: 0;
            box-shadow: none;
        }

        .nav-collapse > li
        {
            float: right;
        }

        .btn.btn-circle
        {
            border-radius: 50px;
        }

        .btn.btn-outline
        {
            background-color: transparent;
        }

        @media screen and (max-width: 767px)
        {
            .navbar .navbar-collapse .navbar-right > li:last-child
            {
                padding-left: 15px;
                padding-right: 15px;
            }

            .navbar .nav-collapse
            {
                margin: 7.5px auto;
                padding: 0;
            }

                .navbar .nav-collapse .navbar-form
                {
                    margin: 0;
                }

            .nav-collapse > li
            {
                float: none;
            }
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse-4">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Department Of Computer Science</a>
                </div>
                <div class="collapse navbar-collapse" id="navbar-collapse-4">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="home.aspx">Home</a></li>
                        <li><a href="about.aspx">About</a></li>
                        <li><a href="#">Contact us</a></li>
                        <li>
                            <asp:Button ID="btnprofile" OnClick="btnprofile_Click" CssClass="btn btn-default btn-outline btn-circle" ForeColor="White" runat="server" Text="Profile" />
                        </li>
                        <li>
                            <asp:Button ID="btnlogout" CssClass="btn btn-default btn-outline btn-circle" ForeColor="White" runat="server" OnClick="btnlogout_Click" Text="Logout" />
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <br />
        <br />
        <h1>contact</h1>


        <img class="img-responsive" src="images/contact.png" /><br />


        <br />
        <br />
        <br />
        <br />
        <div class="container">
            <h2><b>Department of Computer Science</b></h2>

            <h3>H. North Gujarat University,</h3>
            <h3>University Road,</h3>
            <h3>Patan-384265,</h3>
            <h3>Gujarat, INDIA.</h3>
            <br />
            <br />
            <br />
            <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Phone : +91 2766 220932, 222745, 230529, 230743, 233648
            Ext. 400, 399</h4>
            <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Email : hod_computer@ngu.ac.in</h4>
        </div>


        <br />
        <br />
        <nav class="navbar navbar-inverse ">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">2018</a>
                </div>
            </div>
        </nav>
    </form>
</body>
</html>
