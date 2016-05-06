Imports System.Data.SqlClient
Imports Microsoft.VisualBasic
Partial Class Vote
    Inherits System.Web.UI.Page
    Dim dr As SqlDataReader
    Dim dal As DAL
    Dim cn As New SqlConnection("Data Source=DESKTOP-94P088P\JELARDO;Initial Catalog=Parliament E-Voting;Persist Security Info=True;User ID=sa;Password=Tearsofme1")
    Dim cm As New SqlCommand
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Session("user") Is Nothing Then
            Response.Redirect("Login.aspx")
        End If

    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged

        Dim CID As Integer = GridView1.SelectedRow.Cells(0).Text
        cn.Open()
        cm.Connection = cn
        cm.CommandText = "insert into Votes values (" & Session("user") & "," & CID & ", 1)"
        cm.ExecuteNonQuery()

        cm.CommandText = "update Voters set Voted= 'True' where NationalityID=" & Session("user")
        cm.ExecuteNonQuery()

        cm.CommandText = "update Results set VotesResult= VotesResult + 1 " & "where CandidateID=" & CID
        cm.ExecuteNonQuery()
        cn.Close()

        Session("user") = Nothing
        Response.Redirect("VoteDone.aspx")

    End Sub

End Class