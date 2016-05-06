<%@ Page Title="" Language="VB" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="false" CodeFile="Vote.aspx.vb" Inherits="Vote" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row container-kamn">
        <img src="Images/Vote/Slide.jpg" class="blog-post" alt="Feature-img" align="right" width="100%" hight="500px">
    </div>
    <br>
    <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover table" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="CandidateID" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="CandidateID" HeaderText="CandidateID" ReadOnly="True" SortExpression="CandidateID" />
            <asp:BoundField DataField="CandidateName" HeaderText="CandidateName" SortExpression="CandidateName" />
            <asp:ImageField DataImageUrlField="Image" HeaderText="Image" ItemStyle-Height="100px" ItemStyle-Width="100px">
                <ControlStyle Height="150px" Width="150px" />
                <ItemStyle Height="100px" Width="100px" />
            </asp:ImageField>
            <asp:BoundField DataField="BioInfo" HeaderText="BioInfo" SortExpression="BioInfo" />
            <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="Vote" ShowHeader="True" Text="Vote">
                <ControlStyle CssClass="btn btn-primary btn-md" />
            </asp:ButtonField>
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
    <br />
    <br />
    <center>
    &nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Parliament E-VotingConnectionString %>" SelectCommand="SELECT Candidates.CandidateID, Candidates.CandidateName, Candidates.Image, Candidates.BioInfo FROM Candidates INNER JOIN Citizens ON Candidates.NationalityID = Citizens.NationalityID AND Candidates.ResidenceAreaID = Citizens.ResidenceAreaID AND Candidates.ConstituencyAreaID = Citizens.ConstituencyAreaID INNER JOIN ResidenceArea ON Candidates.ResidenceAreaID = ResidenceArea.ResidenceAreaID AND Citizens.ResidenceAreaID = ResidenceArea.ResidenceAreaID INNER JOIN ConstituencyArea ON Candidates.ConstituencyAreaID = ConstituencyArea.ConstituencyAreaID AND Citizens.ConstituencyAreaID = ConstituencyArea.ConstituencyAreaID INNER JOIN Voters ON Citizens.NationalityID = Voters.NationalityID"></asp:SqlDataSource>
    </center>
</asp:Content>