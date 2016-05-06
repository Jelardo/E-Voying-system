<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <!-- meta data & title -->
        <meta charset="utf-8">
        <title>P E-voting</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,300">
        <link href='http://fonts.googleapis.com/css?family=PT+Sans' rel='stylesheet' type='text/css'>
        <link href="http://fonts.googleapis.com/css?family=Raleway" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.css">
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/css/animate.min.css">
        <link rel="stylesheet" type="text/css" media="all" href="assets/css/style-projects.css">
        

        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="assets/ico/favicon.ico">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">
   
        <link href="assets/css/Login.css" rel="stylesheet" />


</head>
<body>
    <form id="form1" runat="server">
        <div id="navbar-spy" class="collapse navbar-collapse navbar-responsive-collapse">
            <ul class="nav navbar-nav pull-left">
                <li onclick="goBack()" <%--class="active"--%>>
                    <span style="cursor: pointer; color: #000080;"><a><b>Back</b></a></span>
                </li>

            </ul>
        </div>
        <br />
        <br />
        <br />
        <br />
        <br />

        <div class="container">
            <div class="row">
                <div class="col-md-offset-5 col-md-3">
                    <h4>
                        <center>Sign in to your account. </center>
                    </h4>
                    <br>
                        <p>
                            <center><asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label></center>
                        </p>
                        <div class="form-login">

                            <asp:TextBox ID="txt_UserName" runat="server" class="form-control input-sm chat-input" placeholder="Username" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_UserName" ErrorMessage="Username Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </br>
                    <asp:TextBox ID="txt_pass" runat="server" class="form-control input-sm chat-input" placeholder="Password" Height="30px" TextMode="Password" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_pass" ErrorMessage="Password Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </br>
            <div class="wrapper">
                <span class="group-btn">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                    <center><asp:Button ID="Button1" runat="server" Text="Login" class="btn btn-primary btn-md" /></center>
                </span>
            </div>
                </div>
            </div>
        </div>
        </div>   
    </form>
    <br />
    <br />
    <br />
    <br />
    <br />

    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <h3><i class="fa fa-map-marker"></i>Contact:</h3>
                    <p class="footer-contact">
                        Amman, Jordan<br>
                        Phone: 078888xxxx Fax: 06/592xxxx<br>
                        Email: 201220637@uopstd.jo<br>
                        Email: 201220456@uopstd.jo<br>
                        Email: 201220301@uopstd.jo<br>
                    </p>
                </div>
                <div class="col-md-4">
                    <h3><i class="fa fa-external-link"></i>Links</h3>
                    <p><a href="http://uop.edu.jo">University of petra</a></p>
                    <p><a href="http://lms.uop.edu.jo">Univeristy of petra moodle</a></p>
                    <p><a href="http://w3schools.com">w3schools</a></p>

                </div>
                <div class="col-md-4">
                    <h3><i class="fa fa-heart"></i>Socialize</h3>
                    <div id="social-icons">
                        <a href="https://plus.google.com" class="btn-group google-plus">
                            <i class="fa fa-google-plus"></i>
                        </a>
                        <a href="https://www.linkedin.com" class="btn-group linkedin">
                            <i class="fa fa-linkedin-square"></i>
                        </a>
                        <a href="http://twitter.com" class="btn-group twitter">
                            <i class="fa fa-twitter"></i>
                        </a>
                        <a href="http://facebook.com" class="btn-group facebook">
                            <i class="fa fa-facebook"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <div class="copyright text center">
        <p>&copy; Copyright 2016, <a href="http://www.uop.edu.jo">Petra University</a>. made by Petra university students</p>
    </div>


    <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="js/wow.min.js"></script>
    <script>
        new WOW().init();
    </script>
    <script>
        function goBack() {
            window.history.back();
        }
    </script>
</body>
</html>