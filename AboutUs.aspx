<%@ Page Title="" Language="VB" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="false" CodeFile="AboutUs.aspx.vb" Inherits="AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <!-- Main Container -->
    <div class="row container-kamn">
        <img src="Images/AboutUs/slide.jpg" class="blog-post" alt="Feature-img" align="right" width="100%">
    </div>

    <div id="banners"></div>
    <div class="container">
        <div class="row">
            <div class="side-left col-sm-4 col-md-4">
                <h3 class="lead">Tasks of Organizational Units </h3>
                <hr>
                <p>
                    The Secretariat-General is the executive arm of the IEC’ Board and it is headed by a full-time secretary-general who is appointed by a decision of the Board along with a Royal decree. The Royal decree was issued on June 12, 2012 to approve the decision made by the Board of Commissioners to appoint Dr. Ali Al Darabkeh as the Secretary-General of the IEC.
                    The Secretariat-General is tasked with developing and implementing the plans, programs, and procedures necessary to fulfill the IEC mandate and realize its goals. An organizational structure was developed for the Secretariat-General according to the following pillars: 
                    <br /><br /><br />
                    Highlighting the IEC’s tasks through the main units that form the organizational structure.<br />
                    Building the organizational structure in a manner that ensures the execution of the regular tasks and responsibilities of the IEC and lays down the foundation for carrying out seasonal tasks that are mainly related to electoral activities.<br />
                    <br />
                    Providing a flexible organizational structure that can systematically respond to the IEC’s needs for expansion during elections. This can be done through including in the structure temporary work teams that are activated when there are electoral activities. This should be done according to a decision from the Board of Commissioners six months ahead of the date of general elections or the decision to set the date of by-elections. The work of these teams will end with the conclusion of electoral activities. They will include representatives of the relevant organizational units.
                    <br /><br />
                </p>
            </div>

            <div class="col-sm-8 col-md-8">
                <h3 class="lead" id="anchor1">Overview of the IEC </h3>
                <hr>
                <p>
                    Jordan’s Independent Election Commission (IEC) was created under the Electoral Law No. 11 of 2012. The IEC is an autonomous legal entity that is financially and administratively independent. The IEC is tasked with the supervision and administration of all phases of parliamentary elections as well as other elections called for by the Council of Ministers. The IEC shall take all necessary measures to administer fair, impartial, and transparent elections based on the principles of justice, equal opportunity, and the rule of law. IEC is composed of:<br>
                    <br />
                    1. A Board of Commissioners composed of a chairman and four members who are appointed by Royal Decree for a &nbsp;&nbsp;&nbsp; non-renewable period of 6 years.<br />
                    <br />
                    2. An executive branch (General Secretariat) which is managed by the Secretary-General, who is appointed by a &nbsp;&nbsp;&nbsp;&nbsp;decision made by the Board of Commissioners. The decision shall be endorsed by Royal Decree.<br />
                    <br /><br>
                    According to article (12) of the law, the Board of Commissioners shall perform the following tasks:
                    <br /><br />
                    1. Formulate the general policy of the IEC.
                    <br /><br />
                    2. Set the election date after the King issues the order to hold the elections of the House of Representatives.<br />
                    <br />
                    3. Set the timeline and necessary plans and programs to conduct the electoral process in a fair, transparent, and &nbsp;&nbsp;&nbsp;&nbsp;impartial manner.<br />
                    <br />
                    4. Undertake the necessary measures for the registration of voters and candidates according to the provisions of &nbsp;&nbsp;&nbsp;&nbsp;the Election Law, including the necessary procedures to review and update the list of voters, and streamline the &nbsp;&nbsp;&nbsp;&nbsp;process of filing objections in that regard.
                    <br /><br />
                    5. Publish the lists of voters and candidates on the IEC’s website and any other means of publication specified in &nbsp;&nbsp;&nbsp;&nbsp;the Election Law.<br />
                    <br />
                    6. Establish the rules and procedures for electoral campaigns and publicity and monitor them according to executive &nbsp;&nbsp;&nbsp;&nbsp;instructions.<br />
                    <br />
                    7. Raise voters' awareness of the importance of participating in the political life, including electoral processes./<br />
                    <br />
                    8. Appoint chairpersons and members of any committees that are needed to conduct the parliamentary election &nbsp;&nbsp;&nbsp;&nbsp;process in accordance with the provisions of the Election law.<br />
                    <br />
                    9. Approve the specifications of the ballot box, the ballot paper, and the official seal of the voting committee.<br />
                    <br />
                    10. Set the criteria for approving representatives of candidates at the polling and counting centers.<br />
                    <br />
                    11. Approve representatives of civil society organizations, media, and any local and international observers to &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;monitor and observe the parliamentary election process in accordance with executive instructions.<br />
                    <br />
                    12. Extend the voting period in accordance with the provisions of the Election Law.<br />
                    <br />
                    13. Set executive instructions for publishing the preliminary results and streamline the filing of objections to the &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;results in accordance with the provisions of the Election Law.<br />
                    <br />
                    14. Announce the final results of the elections.
                    <br /><br />
                    15. Issue a detailed final report for all stages of each parliamentary election process, submit it to the King, and &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;publish it in the Official Gazette.<br />
                    <br />
                    16. Approve the annual report on the work and activities of the IEC and submit a copy of it to the Council of &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ministers and to the Parliament.<br />
                    <br />
                    17. Approve contracts and agreements to which the IEC is party. Form temporary committees for specific tasks to &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;assist it in the performance of the IEC’s tasks and responsibilities.<br />
                    <br />
                    18. Propose the necessary draft laws for the work of the IEC.<br />
                    <br />
                    19. Any tasks or authorities that are stipulated in this law or in any other legislation.<br />
                    <br />
                </p>
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

