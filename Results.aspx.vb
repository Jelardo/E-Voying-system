
Partial Class Results
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Me.MultiView1.ActiveViewIndex = 0
    End Sub
    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Me.MultiView1.ActiveViewIndex = 1
    End Sub
End Class
