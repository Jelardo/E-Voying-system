<%@ Page Title="" Language="VB" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="false" CodeFile="Team.aspx.vb" Inherits="Team" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!-- Header -->
    <div class="row container-kamn">
        <img src="Images/team/slide.jpg" width="100%" class="blog-post" alt="Feature-img" align="right" width="100%">
    </div>
    <!--End Header -->

    <!-- Main Container -->
    <div id="banners"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="blockquote-box blockquote-danger animated wow fadeInLeft clearfix">
                    <div class="square pull-left">
                        <img src="Images/team/member1.png" alt="Feature-img" height="80" width="100">
                    </div>
                    <h4>DR.Ahmad Shubaita
                    </h4>
                    <p>
                        Software Enginnering , UOP
                    </p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="blockquote-box blockquote-info animated wow ZoomIn fadeInLeft clearfix">
                    <div class="square pull-left">
                        <img src="Images/team/member4.png" alt="Feature-img" height="80" width="100">
                    </div>
                    <h4>Mohammad Jarrad
                    </h4>
                    <p>
                        Software Enginnering , UOP
                    </p>
                </div>
            </div>

            <div class="col-md-4">
                <div class="blockquote-box blockquote-primary animated wow ZoomIn clearfix">
                    <div class="square pull-left">
                        <img src="Images/team/member3.png" alt="Feature-img" height="80" width="100">
                    </div>
                    <h4>Roa'a Al-Mousa
                    </h4>
                    <p>
                        Software Enginnering , UOP
                    </p>
                </div>
            </div>

            <div class="col-md-4">
                <div class="blockquote-box blockquote-success animated wow fadeInRight clearfix">
                    <div class="square pull-left">
                        <img src="Images/team/member2.png" alt="Feature-img" height="80" width="100">
                    </div>
                    <h4>Ahmad Al-Khayat
                    </h4>
                    <p>
                        Computer Information system , UOP
                    </p>
                </div>
            </div>
            
        </div>
    </div>
    <!--End Main Container -->

    <!--Login -->
    <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
        <div class="modal-dialog">
            <div class="loginmodal-container">
                <h1>Login to Your Account</h1>
                <br>
                <form>
                    <input type="text" name="user" placeholder="Username">
                    <input type="password" name="pass" placeholder="Password">
                    <input type="submit" name="login" class="login loginmodal-submit" value="Login">
                </form>
            </div>
        </div>
    </div>
    <!--End Login -->

</asp:Content>

