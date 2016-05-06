
Partial Class AdminMasterPage
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Session("Admin") Is Nothing Then
            Response.Redirect("AdminLogin.aspx")
        End If
    End Sub
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Session("Admin") = Nothing
        Response.Redirect("AdminLogin.aspx")
    End Sub
End Class