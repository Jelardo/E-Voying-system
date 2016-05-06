<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Candidates.aspx.vb" Inherits="Candidates" %>

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


        <!--Header -->

        <div class="col-md-offset-11 col-md-1">
            <a href="Candidates.aspx" data-toggle="modal" data-target="#login-modal">
                <asp:Button ID="btn_login" runat="server" Text="Login" class="btn btn-primary btn-md" /></a>
            <asp:Button ID="btn_logout" runat="server" Text="Logout" class="btn btn-primary btn-md" />
        </div>
        <br />

        <nav id="navbar-section" class="navbar navbar-default navbar-static-top navbar-sticky" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>

                    <a class="navbar-brand wow fadeInDownBig" href="Home.aspx">
                        <img src="Images/Home/Logo.png" width="100" alt="Office"></a>
                </div>

                <div id="navbar-spy" class="collapse navbar-collapse navbar-responsive-collapse">
                    <ul class="nav navbar-nav pull-right">
                        <li <%--class="active"--%>>
                            <a href="Home.aspx">Home</a>
                        </li>
                        <li>
                            <a href="Candidates.Aspx">Candidates</a>
                        </li>
                        <li>
                            <a href="Vote.Aspx">Vote</a>
                        </li>
                        <li>
                            <a href="Team.aspx">Team</a>
                        </li>
                        <li>
                            <a href="AboutUs.aspx">About US</a>
                        </li>
                        <li>
                            <a href="ContactUs.aspx"><span>Contact US</span></a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="row container-kamn">
            <img src="Images/Candidates/Slide.jpg" class="blog-post" alt="Feature-img" align="right" width="100%" hight="500px">
        </div>
        <!-- End Header -->

        <!-- Main Container -->
        <div>
            <div class="col-md-offset-1 col-md-10">
            <center>
            <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover table col-md-11" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="CandidateName" SortExpression="CandidateName" ControlStyle-Width="200px" ItemStyle-Width="150px" HeaderText="Name" >
                    <ControlStyle Width="200px"></ControlStyle>
                    <ItemStyle Width="150px"></ItemStyle>

                    </asp:BoundField>
                    <asp:ImageField DataImageUrlField="Image" ControlStyle-Height="200px" ControlStyle-Width="200px" HeaderStyle-HorizontalAlign="Center" HeaderText="Image">
                    <ControlStyle Height="150px" Width="150px"></ControlStyle>
                    </asp:ImageField>

                    <asp:BoundField DataField="BioInfo" SortExpression="BioInfo" ItemStyle-Width="900px" HeaderText="BioInfo" >
                    <ItemStyle Width="900px"></ItemStyle>
                    </asp:BoundField>
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Parliament E-VotingConnectionString %>" SelectCommand="SELECT [CandidateName], [Image], [BioInfo]  FROM [Candidates]"></asp:SqlDataSource>
            </div>
        </div>
        </center>
        <!--End Main Container -->

        <!-- Footer -->
        <div class="col-md-12">
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
        </div>
        <!--End Footer -->

        <!--Login -->
    <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
    	  <div class="modal-dialog">
				<div class="loginmodal-container">
					<h1>Login to Your Account</h1><br>
                   
				   
                    <asp:TextBox ID="TextBox1" runat="server" name="user" placeholder="Username" TextMode="SingleLine" />
                    <asp:TextBox ID="TextBox2" runat="server" name="pass" placeholder="Password" TextMode="Password" />
                    
                    <center><asp:Button ID="Button1" runat="server" Text="Login" class="login loginmodal-submit" value="Login" Width="80px" /></center>
				  
					
			
				</div>
			</div>
		  </div>
    <!--End Login -->

    </form>

    <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="js/wow.min.js"></script>
    <script>
      new WOW().init();
    </script>
</body>
</html>