<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AdminLogin.aspx.vb" Inherits="AdminLogin" %>

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
                    <br/>
                        <p>
                            <center><asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label></center>
                        </p>
                        <div class="form-login">

                            <asp:TextBox ID="txt_UserName" runat="server" class="form-control input-sm chat-input" placeholder="Username" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_UserName" ErrorMessage="Username Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <br />
                            <asp:TextBox ID="txt_pass" runat="server" class="form-control input-sm chat-input" placeholder="Password" Height="30px" TextMode="Password" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_pass" ErrorMessage="Password Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <br>
                            <div class="wrapper">
                                <span class="group-btn">
                                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                                    <center><asp:Button ID="Button1" runat="server" Text="Login" class="btn btn-primary btn-md" /></center>

                                </span>
                            </div>
                </div>
            </div>
        </div>
    </form>

    <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="js/wow.min.js"></script>
    <script>
      new WOW().init();
    </script>
    <script>
        function goBack()
        {
            window.history.back();
        }
</script>
</body>
</html>