<%@ Page Language="C#" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="about" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About Us</title>
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
                        <li><a href="#">About</a></li>
                        <li><a href="contact.aspx">Contact us</a></li>
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
        <h1>about</h1>
        <br />
        <br />
        <div class="row">

            <div class="col-md-4">
                <p>Well Built Building Insfrastructure</p>
                <img src="images/s2.png" />
            </div>



            <div class="col-md-4">
                <p>Well Expeirienced Faculties</p>
                <img src="images/s3.png" />
            </div>

            <div class="col-md-4">
                <p>Noise Free Atmosphere</p>
                <img src="images/s1.png" />
            </div>
            <br />
            <br />
            <div class="container">
                <p>


                    <h3>The Department of Computer Science of the Hemchandracharya North Gujarat University has been established in 1996.</h3>
                    <h3>We conduct following study Programmes.</h3>

                    1.<br />

                    <b>Ph. D. (Computer Science / Information Technology)</b><br />
                    Since 2003 	
                    <br />
                    <br />
                    <br />
                    2.<br />

                    <b>Master of Computer Application</b><br />
                    Since 2003
                    <br />
                    Fees Rs. 30,000 per annum
  	<br />
                    <br />
                    3.<br />
                    <b>Master of Computer Application (5 years Integrated Programme)</b>
                    <br />
                    From 2013<br />
                    Fees Rs. 28,000 per annum
  	<br />
                    <br />
                    4.<br />

                    <b>Master of Science (Computer Application & Information Technology)</b><br />
                    Since 2000
                    <br />
                    Fees Rs. 28,000 per annum<br />
                    <br />
                    5. 
                    <br />
                    <b>Post Graduate Diploma in Computer Application</b><br />
                    Since 1996<br />
                    Fees Rs. 15,000 per annum<br />
                </p>
            </div>

            <div class="container">
                <h2><b>» Computer Lab </b></h2>


                The Computer labs are equipped with branded personal computers supported by 11Mbps shared Broadband and 1 Gbps leased line for Internet connectivity. It is also equipped with a wide range of licensed system software and applications software. The entire campus is connected with Wi-Fi network.
            </div>

            <div class="container">
                <h2><b>» Cyber Café  </b></h2>


                The institute has a cyber café, this has 20 Computers all are connected with 11Mbps Broadband and it is free to use for student from 9:00AM to 5:00PM including Sundays & off days.
         <h3>Internet Connectivity</h3>

                @ 11Mbps Brodband connectivity from BSNL.

         @ 1Gbps Leased line connectivity from BSNL.

            </div>

            <div class="container">
                <h2><b>» Departmental Library </b></h2>

                The Department having the well furnished departmental library. It has the open access system facilities free use of books on the shelf. The book issue service is available to the students from 10:00 am to 5:00 pm on all working days.
             <br />
                ·         17747 Nos. of Books available (including text books)
             <br />
                ·         Ticket System available
             <br />
                ·         Open Access System
             <br />
                ·         Book Bank System
             <br />
                ·         Magazine (29 Nos.), Journals (13 Nos.)
             <br />
                ·         News Papers (12 Nos.), Dictionary (25 Nos.)
             <br />
                ·         Last Five Years Question Paper available
             <br />
                ·         CD,DVD and Project Reports
             <br />
                ·         All Subjects reference books, General Knowledge Books and Competitive Exam Books are available.
            </div>
            <div class="container">
                <img class="img-responsive" src="images/clgstud.png" /><br />
                <img class="img-responsive" src="images/clgstud1.png" />
            </div>
            <br />
            <div class="container">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/6VgiDuj6Mgo" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                <iframe width="560" height="315" src="https://www.youtube.com/embed/MsPUwfHTjsg" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
            </div>
        </div>
        <br />
        <br />
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">2018</a>
                </div>
            </div>
        </nav>
    </form>
</body>
</html>
