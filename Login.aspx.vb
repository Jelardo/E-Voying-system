Imports System.Data.SqlClient
Imports Microsoft.VisualBasic
Partial Class Login
    Inherits System.Web.UI.Page
    Dim dr As SqlDataReader
    Dim bl As BL
    Dim dal As New DAL

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        Dim sql As String = "select * from Voters where VoterUsername = '" & txt_UserName.Text & "' and VoterPassword='" & txt_pass.Text & "' "
        dr = dal.execute_select(sql)
        If dr.Read Then
            If dr(4) = 0 Then
                Session("user") = dr(3)
                Response.Redirect("Vote.aspx")

            Else
                Label1.Text = "Sorry, You already voted"

            End If
        Else
            Label1.Text = "Invalid login (Please check your Username and password)"

        End If
    End Sub

End Class