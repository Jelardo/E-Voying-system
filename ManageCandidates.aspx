<%@ Page Title="" Language="VB" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="false" CodeFile="ManageCandidates.aspx.vb" Inherits="ManageCandidates" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <center>
    <br /><br />
    <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="CandidateID" DataSourceID="SqlDataSource1" CellPadding="4" AllowSorting="True" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="CandidateID" HeaderText="CandidateID" ReadOnly="True" SortExpression="CandidateID" />
            <asp:BoundField DataField="NationalityID" HeaderText="NationalityID" SortExpression="NationalityID" />
            <asp:BoundField DataField="CandidateName" HeaderText="CandidateName" SortExpression="CandidateName" />
            <asp:BoundField DataField="BioInfo" HeaderText="BioInfo" SortExpression="BioInfo" />
            <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
            <asp:BoundField DataField="ResidenceAreaID" HeaderText="ResidenceAreaID" SortExpression="ResidenceAreaID" />
            <asp:BoundField DataField="ConstituencyAreaID" HeaderText="ConstituencyAreaID" SortExpression="ConstituencyAreaID" />
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

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Parliament E-VotingConnectionString %>" DeleteCommand="DELETE FROM [Candidates] WHERE [CandidateID] = @CandidateID" InsertCommand="INSERT INTO [Candidates] ([CandidateID], [NationalityID], [CandidateName], [BioInfo], [Image], [ResidenceAreaID], [ConstituencyAreaID]) VALUES (@CandidateID, @NationalityID, @CandidateName, @BioInfo, @Image, @ResidenceAreaID, @ConstituencyAreaID)" SelectCommand="SELECT * FROM [Candidates]" UpdateCommand="UPDATE [Candidates] SET [NationalityID] = @NationalityID, [CandidateName] = @CandidateName, [BioInfo] = @BioInfo, [Image] = @Image, [ResidenceAreaID] = @ResidenceAreaID, [ConstituencyAreaID] = @ConstituencyAreaID WHERE [CandidateID] = @CandidateID">
        <DeleteParameters>
            <asp:Parameter Name="CandidateID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CandidateID" Type="Int32" />
            <asp:Parameter Name="NationalityID" Type="Int64" />
            <asp:Parameter Name="CandidateName" Type="String" />
            <asp:Parameter Name="BioInfo" Type="String" />
            <asp:Parameter Name="Image" Type="String" />
            <asp:Parameter Name="ResidenceAreaID" Type="Int32" />
            <asp:Parameter Name="ConstituencyAreaID" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="NationalityID" Type="Int64" />
            <asp:Parameter Name="CandidateName" Type="String" />
            <asp:Parameter Name="BioInfo" Type="String" />
            <asp:Parameter Name="Image" Type="String" />
            <asp:Parameter Name="ResidenceAreaID" Type="Int32" />
            <asp:Parameter Name="ConstituencyAreaID" Type="Int32" />
            <asp:Parameter Name="CandidateID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

        <center><asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label></center>

    <center>
    <div class="col-md-offset-4 col-md-4">
    <br /><br />
    <asp:Button ID="Button1" runat="server" Text="Insert" class="btn btn-primary btn-md" />
        <asp:Button ID="Button2" runat="server" Text="Update" class="btn btn-primary btn-md"/>
        <asp:Button ID="Button3" runat="server" Text="Delete" class="btn btn-primary btn-md" />
            <br><br />

    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="Insert" runat="server">
            <table class="table">     
                         <tr class="success">
                             <td style="height: 24px">CandidateID</td>
                             <td style="height: 24px"><asp:TextBox ID="TextBox12" runat="server" CssClass="txt"></asp:TextBox></td>
                         </tr>
                         <tr class="danger">
                             <td style="height: 24px">NationalityID</td>
                             <td style="height: 24px"><asp:TextBox ID="TextBox13" runat="server" CssClass="txt"></asp:TextBox></td>
                         </tr>
                           <tr class="info">
                             <td>CandidateName</td>
                             <td><asp:TextBox ID="TextBox14" runat="server" CssClass="txt"></asp:TextBox></td>
                         </tr>
                           <tr class="success">
                             <td>BioInfo</td>
                             <td><asp:TextBox ID="TextBox15" runat="server" CssClass="txt" TextMode="MultiLine"></asp:TextBox></td>
                         </tr>
                         <tr class="danger">
                             <td>Image</td>
                             <td><asp:TextBox ID="TextBox16" runat="server" CssClass="txt"></asp:TextBox></td>
                         </tr>
                         <tr class="info">
                             <td>ResidenceAreaID</td>
                             <td><asp:TextBox ID="TextBox17" runat="server" CssClass="txt"></asp:TextBox></td>
                         </tr>
                         <tr class="success">
                             <td>ConstituencyAreaID</td>
                             <td><asp:TextBox ID="TextBox18" runat="server" CssClass="txt"></asp:TextBox></td>
                         </tr>
                     </table>
<asp:Button ID="Button4" runat="server" Text="Save" class="btn btn-primary btn-md"></asp:Button>
        </asp:View>

        <asp:View ID="Update" runat="server">
            <table class="table">
                         <tr class="success">
                             <td>CandidateID</td>
                             <td><asp:TextBox ID="txtID" runat="server" CssClass="txt"></asp:TextBox>
                             </td>
                         </tr>
                         <tr class="danger">
                             <td style="height: 24px">NationalityID</td>
                             <td style="height: 24px"><asp:TextBox ID="TextBox3" runat="server" CssClass="txt" Enabled="False"></asp:TextBox></td>
                         </tr>
                           <tr class="info">
                             <td>CandidateName</td>
                             <td><asp:TextBox ID="TextBox4" runat="server" CssClass="txt" Enabled="False"></asp:TextBox></td>
                         </tr>
                           <tr class="success">
                             <td>BioInfo</td>
                             <td><asp:TextBox ID="TextBox5" runat="server" CssClass="txt" Enabled="False" TextMode="MultiLine"></asp:TextBox></td>
                         </tr>
                         <tr class="danger">
                             <td>Image</td>
                             <td><asp:TextBox ID="TextBox6" runat="server" CssClass="txt" Enabled="False"></asp:TextBox></td>
                         </tr>
                         <tr class="info">
                             <td>ResidenceAreaID</td>
                             <td><asp:TextBox ID="TextBox7" runat="server" CssClass="txt" Enabled="False"></asp:TextBox></td>
                         </tr>
                         <tr class="success">
                             <td>ConstituencyAreaID</td>
                             <td><asp:TextBox ID="TextBox19" runat="server" CssClass="txt" Enabled="False"></asp:TextBox></td>
                         </tr>
                <tr>
                    <td colspan="2"><center><asp:Button ID="btnUpdate" runat="server" Text="Save" Enabled="False" class="btn btn-primary btn-md"></asp:Button>                 
                        <asp:Button ID="Button5" runat="server" Text="Get Candidate" class="btn btn-primary btn-md"></asp:Button></center>
                    </td>
                </tr>
                     </table>
        </asp:View>

        <asp:View ID="Delete" runat="server">
            <table class="table">
                         <tr class="success">
                             <td>CandidateID</td>
                             <td><asp:TextBox ID="TextBox1" runat="server" CssClass="txt"></asp:TextBox></td>
                         </tr>
                         <tr class="danger">
                             <td style="height: 24px">NationalityID</td>
                             <td style="height: 24px"><asp:TextBox ID="TextBox2" runat="server" CssClass="txt" Enabled="False"></asp:TextBox></td>
                         </tr>
                           <tr class="info">
                             <td>CandidateName</td>
                             <td><asp:TextBox ID="TextBox8" runat="server" CssClass="txt" Enabled="False"></asp:TextBox></td>
                         </tr>
                           <tr class="success">
                             <td>BioInfo</td>
                             <td><asp:TextBox ID="TextBox9" runat="server" CssClass="txt" Enabled="False" TextMode="MultiLine"></asp:TextBox></td>
                         </tr>
                         <tr class="danger">
                             <td>Image</td>
                             <td><asp:TextBox ID="TextBox10" runat="server" CssClass="txt" Enabled="False"></asp:TextBox></td>
                         </tr>
                         <tr class="info">
                             <td>ResidenceAreaID</td>
                             <td><asp:TextBox ID="TextBox11" runat="server" CssClass="txt" Enabled="False"></asp:TextBox></td>
                        </tr> 
                         <tr class="success">
                             <td>ConstituencyAreaID</td>
                             <td><asp:TextBox ID="TextBox20" runat="server" CssClass="txt" Enabled="False"></asp:TextBox></td>
                        </tr> 
                        <tr>                           
                             <td colspan="2"><center><asp:Button ID="Button6" runat="server" Text="Delete"  class="btn btn-primary btn-md" Enabled="False" ></asp:Button>
                             <asp:Button ID="Button7" runat="server" Text="Get Candidate" class="btn btn-primary btn-md" ></asp:Button></center></td>                          
                         </tr>
                     </table>
        </asp:View>
    </asp:MultiView>
            </center>

    </div>
       
</asp:Content>