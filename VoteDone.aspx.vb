
Partial Class VoteDone
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Redirect("Home.aspx")
    End Sub
End Class