Imports System.Data.SqlClient
Imports Microsoft.VisualBasic
Partial Class Candidates
    Inherits System.Web.UI.Page
    Dim dr As SqlDataReader
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        If Session("user") IsNot Nothing Then
            btn_login.Visible = False
            btn_logout.Visible = True

        Else
            btn_login.Visible = True
            btn_logout.Visible = False

        End If
    End Sub


    Protected Sub btn_logout_Click(sender As Object, e As EventArgs) Handles btn_logout.Click
        Session("user") = Nothing
        Response.Redirect("Home.aspx")
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        Dim dal As New DAL
        Dim sql As String = "select * from Voters where VoterUsername = '" & TextBox1.Text & "' and VoterPassword='" & TextBox2.Text & "' "
        dr = dal.execute_select(sql)

        If dr.Read Then
            Session("user") = dr(1)
            Response.Redirect("Vote.aspx")

        Else
            MsgBox("Invalid login")

        End If
    End Sub
End Class
