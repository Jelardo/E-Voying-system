<%@ Page Title="" Language="VB" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="false" CodeFile="Results.aspx.vb" Inherits="Results" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    
    <center>
    <br /><br>
        <asp:Button ID="Button1" runat="server" Text="All the Votes" class="btn btn-primary btn-md" />
        <asp:Button ID="Button2" runat="server" Text="Vote Results" class="btn btn-primary btn-md" />
    <br/><br>
    </center>
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <div class="col-md-offset-4 col-md-4">
                <br>
                 <center><h1>Votes</h1></center>
                <br>
                    </div>
    <asp:GridView ID="GridView1" CssClass="table table-hover" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="CitizenNationalityID" DataSourceID="SqlDataSource1" CellPadding="4" AllowSorting="True" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="ElectionID" HeaderText="ElectionID" SortExpression="ElectionID" />
            <asp:BoundField DataField="CandidateID" HeaderText="CandidateID" SortExpression="CandidateID" />
            <asp:BoundField DataField="CitizenNationalityID" HeaderText="CitizenNationalityID" SortExpression="CitizenNationalityID" ReadOnly="True" />
            <asp:BoundField DataField="CandidateName" HeaderText="CandidateName" SortExpression="CandidateName" />
            <asp:BoundField DataField="ResidenceName" HeaderText="ResidenceName" SortExpression="ResidenceName" />
            <asp:BoundField DataField="ConstituencyAreaName" HeaderText="ConstituencyAreaName" SortExpression="ConstituencyAreaName" />
            <asp:BoundField DataField="ElectionStartDate" HeaderText="ElectionStartDate" SortExpression="ElectionStartDate" />
            <asp:BoundField DataField="ElectionEndsDate" HeaderText="ElectionEndsDate" SortExpression="ElectionEndsDate" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#2461BF" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Parliament E-VotingConnectionString %>" SelectCommand="SELECT Votes.ElectionID, Votes.CandidateID, Votes.CitizenNationalityID, Candidates.CandidateName, ResidenceArea.ResidenceName, ConstituencyArea.ConstituencyAreaName, ElectionSession.ElectionStartDate, ElectionSession.ElectionEndsDate FROM Votes INNER JOIN Candidates ON Votes.CandidateID = Candidates.CandidateID INNER JOIN ResidenceArea ON Candidates.ResidenceAreaID = ResidenceArea.ResidenceAreaID INNER JOIN ConstituencyArea ON Candidates.ConstituencyAreaID = ConstituencyArea.ConstituencyAreaID INNER JOIN ElectionSession ON Votes.ElectionID = ElectionSession.ElectionID"></asp:SqlDataSource>


            </asp:View>
            <asp:View ID="View2" runat="server">
                <div class="col-md-offset-4 col-md-4">
                <br>
                 <center><h1>Results</h1></center>
                <br>
                <asp:GridView ID="GridView2" CssClass="table table-hover" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" CellPadding="4" AllowSorting="True" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="CandidateID" HeaderText="CandidateID" SortExpression="CandidateID" />
            <asp:BoundField DataField="CandidateName" HeaderText="CandidateName" SortExpression="CandidateName" />
            <asp:BoundField DataField="VotesResult" HeaderText="VotesResult" SortExpression="VotesResult" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#2461BF" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Parliament E-VotingConnectionString %>" SelectCommand="SELECT Results.CandidateID, Candidates.CandidateName, Results.VotesResult FROM Candidates INNER JOIN Results ON Candidates.CandidateID = Results.CandidateID"></asp:SqlDataSource>
    </div>
            </asp:View>

        </asp:MultiView>
      
    
</asp:Content>