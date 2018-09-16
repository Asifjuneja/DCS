<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_home.aspx.cs" Inherits="adminSide_admin_home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Home Page</title>
    <link href="~/css/main.css" rel="stylesheet" />
    <link href="~/css/style.css" rel="stylesheet" />
    <link href="~/css/font-awesome.min.css" rel="stylesheet" />
    <link href="~/css/css/bootstrap.min.css" rel="stylesheet" />
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
        <div class="container">
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
                            <li><a href="#">Home</a></li>
                            <li><a href="admin_stud.aspx">Manage Students</a></li>
                            <li>
                                <asp:Button ID="btnprofile" CssClass="btn btn-default btn-outline btn-circle" ForeColor="White"  runat="server" Text="Profile" />
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
            <br />
            <h2><b>To Give Opportunities To And Uplift The Students Of Rural And Tribal Areas Of North Gujarat And Push Them Into The Main Stream Of IT Era</b></h2>
            <br />
        </div>
        <img class="img-responsive" src="../images/homebg.png" />
        <br />
        <br />
        <p style="font-family: 'Tw Cen MT'" class="lead">
            The Department of Computer Science is one of the department of Hem. North Gujarat University. This is located at historical place PATAN (North Gujarat). It is 120 KM from the Ahmedabad. The institute has round shape built up area. The institute have 6 computer labs with wall mounted Multimedia Projector and each lab have 40 PC with high end state of art configuration. The classrooms have capacity to seat 90 students and each class has wall-mounted Multimedia Projector for continuous teaching and interaction. The institute has a conference hall for small group discussions and meetings.
        </p>

        <h1>INFRASTRUCTURE FACILITIES</h1>
        <p>
            The North Gujarat University was carved out of Gujarat University whose Headquarter is at Ahmedabad. On bifurcation, the North Gujarat University inherited no physical assets from its parent University. It had, therefore, to start its existence ab-initio so far as its local habitation was concerned. PATAN, a historical town in northern part of Gujarat, was officially designated as the Head-Quarter town of the University. The town happens to have composite campus of four affiliated colleges. The managing council of the colleges was kind enough to put at the disposal of the infant University its two hostel buildings on rent to accommodate its offices. Thus began the University to operate and serve 41 colleges scattered over the three erstwhile districts of Banaskantha, Mehsana and Sabarkantha allotted in its jurisdiction. Along with the two hostel buildings the University rented a hall, called the Gandhi Memorial hall, to house its library. The aim was to start building up a nucleus library for the future post-graduate departments of the university. This was an act of foresight of the first functionaries of the University. The University simultaneously moved the State Government to acquire land admeasuring about 185 acres from farmers. It also requested the State Government to transfer its seed farm land admeasuring about 35 acres to the University. However, this entailed considerable delay owing to litigation in the State High Court and then in the Supreme court. Following the supreme court judgment acquisition of the land has been possible. As a result over the years the university has been able to get land as follows. Government land 35.00 acres Land acquired from the farmers 177.50 acres.The university will in due course acquire land admeasuring 7.50 acres from one farmer. Total land available = 212.50 acres. In addition to this the University has also received a property worth Rs.10/- lakhs by way of donation from the Gramodhyog Mandal, Patan. At present the University Employment Bureau is housed in that building. Our proposals to the State Government for further assistance in materializing plans for more constructions in phased manner, are under active consideration.
        </p>

        <br />
        <br />
        <br />            <nav class="navbar navbar-inverse ">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="#">2018</a>
                    </div>
                </div>
            </nav>
        </div>
    </form>
</body>
</html>
