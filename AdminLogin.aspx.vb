Imports System.Data.SqlClient
Imports Microsoft.VisualBasic
Partial Class AdminLogin
    Inherits System.Web.UI.Page
    Dim dr As SqlDataReader
    Dim bl As BL
    Dim dal As New DAL

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        Dim sql As String = "select * from Admin where AdminUsername = '" & txt_UserName.Text & "' and AdminPassword='" & txt_pass.Text & "' "
        dr = dal.execute_select(sql)
        If dr.Read Then
            Session("Admin") = dr(1)
            Response.Redirect("Admin.aspx")
        Else
            Label1.Text = "Invalid login (Please check your Username and password)"
        End If
    End Sub
End Class