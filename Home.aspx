<%@ Page Title="" Language="VB" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="false" CodeFile="Home.aspx.vb" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!-- Begin carousel-section -->
    <section id="carousel-section" class="section-global-wrapper">
        <div class="container-fluid-kamn">
            <div class="row">
                <div id="carousel-1" class="carousel slide">

                    <!-- Indicators -->
                    <ol class="carousel-indicators visible-lg">
                        <li data-target="#carousel-1" data-slide-to="0"></li>
                        <li data-target="#carousel-1" data-slide-to="1" class="active"></li>
                        <li data-target="#carousel-1" data-slide-to="2"></li>
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">


                        <!-- Begin Slide 1 -->
                        <div class="item">
                            <img src="Images/Home/Image2_slider.jpg" width="100%" hight="500px" alt="">
                        </div>
                        <!-- End Slide 1 -->

                        <!-- Begin Slide 2 -->
                        <div class="item active">
                            <img src="Images/Home/Image1_slider.jpg" width="100%" hight="500px" alt="">
                        </div>
                        <!-- End Slide 2 -->

                        <!-- Begin Slide 3 -->
                        <div class="item">
                            <img src="Images/Home/Image3_slider.jpg" width="100%" hight="500px" alt="">
                        </div>
                        <!-- End Slide 3 -->
                    </div>

                    <!-- Controls -->
                    <a class="left carousel-control" href="#carousel-1" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                    </a>
                    <a class="right carousel-control" href="#carousel-1" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                    </a>
                </div>
            </div>
        </div>
    </section>
    <!-- End carousel-section -->


    <!-- Begin services-section -->
    <section id="services" class="services-section section-global-wrapper">
        <div class="container">
            <div class="row">
                <div class="services-header">
                    <img src="Images/Home/P-Evoting.png" />
                    <p class="services-header-body"><em>We belive in our future </em></p>

                    <hr>
                </div>
            </div>




            <div class="row-fluid" id="yui_3_17_2_2_1452901427000_45">




                <div class="col-md-12  col-lg-offset-3">

                    <div class="span3 first">

                        <div class="col-sm-12 col-md-3">
                            <div class="thumbnail" style="height: 400px;">
                                <a href="http://nlms.uop.edu.jo/gp" target="_blank">
                                    <img class="img-responsive" style="height: 150px; width: auto;" src="Images/Home/Candidate.jpg" alt="" width="230" height="90"></a>
                                <div class="caption">
                                    <h2>Candidates</h2>
                                    <p>A <b>candidate</b>, or <b>nominee</b>, is the prospective recipient of an <a href="https://en.wikipedia.org/wiki/Award" title="Award">award</a> or honor.</p>
                                    <p>&nbsp;</p>
                                    <p><a class="btn btn-primary" style="color: #ffffff;" href="Candidates.aspx" target="_blank">More</a></p>
                                    <p>&nbsp;</p>
                                </div>
                            </div>
                        </div>

                    </div>






                    <div class="span3 first">
                        <div class="col-sm-12 col-md-3" style="left: 0px; top: 0px; height: 330px">
                            <div class="thumbnail" style="height: 400px;">
                                <a href="http://lms.uop.edu.jo/lms/course/view.php?id=122">
                                    <img class="img-responsive" style="text-align: center; height: 150px; width: auto;" src="Images/Home/Vote.jpg" alt="" width="230" height="90"></a>
                                <div class="caption">
                                    <h2 style="text-align: center;">Votes</h2>
                                    <p>The Parliament E-Voting supports citizens’ right to participate in free and fair elections.&nbsp;&nbsp;&nbsp; </p>
                                    <p>&nbsp;</p>
                                    <p><a class="btn btn-primary" style="color: #ffffff;" href="Vote.aspx">Vote</a></p>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>


            </div>

            <div><hr></div>
            <div class="col-md-12">

                <!-- Begin Services Row 1 -->
                <div class="row services-row services-row-head services-row-1">
                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                        <div class="services-group wow animated fadeInLeft" data-wow-offset="40">
                            <p class="services-icon"><span class="fa fa-android fa-5x"></span></p>
                            <h4 class="services-title">Android</h4>
                            <p class="services-body">Coming soon on our future work ;)</p>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                        <div class="services-group wow animated " data-wow-offset="40">
                            <p class="services-icon"><i class="fa fa-apple fa-5x"></i></p>
                            <h4 class="services-title">Apple</h4>
                            <p class="services-body">Coming soon on our future work ;)</p>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                        <div class="services-group wow animated fadeInRight" data-wow-offset="40">
                            <p class="services-icon"><span class="fa fa-windows fa-5x"></span></p>
                            <h4 class="services-title">Windows</h4>
                            <p class="services-body">Coming soon on our future work ;)</p>

                        </div>
                    </div>
                </div>
            </div>
    </section>
    <!-- End services-section -->

</asp:Content>