Imports Microsoft.VisualBasic
Partial Class ManageCandidates
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Me.MultiView1.ActiveViewIndex = 0

    End Sub
    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Me.MultiView1.ActiveViewIndex = 1
    End Sub
    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Me.MultiView1.ActiveViewIndex = 2
    End Sub
    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        Dim Can As New Candidate
        Dim bl As New BL
        Dim dal As New DAL
        Try

            Can.Candidate_ID = TextBox12.Text
            Can.NAtionality_ID = TextBox13.Text
            Can.Candidate_Name = TextBox14.Text
            Can.Bio_Info = TextBox15.Text
            Can.IMG = TextBox16.Text
            Can.Residence_Area_ID = TextBox17.Text
            Can.Constituency_Area_ID = TextBox18.Text

            Dim i As Integer = bl.AddCandidate(Can)
            If i > -1 Then
                Me.TextBox12.Text = ""
                Me.TextBox13.Text = ""
                Me.TextBox14.Text = ""
                Me.TextBox15.Text = ""
                Me.TextBox16.Text = ""
                Me.TextBox17.Text = ""
                Me.TextBox18.Text = ""

                Response.Redirect("ManageCandidates.aspx")
                Response.Write("Candidate Has been added")
                Me.TextBox12.Focus()
            Else
                Response.Write("Candidate Add Unsuccessfull")

            End If
        Catch ex As Exception
            Label1.Text = "Invalid data entry, please check the data you entered"
        End Try
    End Sub
    Protected Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click
        Try
            Dim bl As New BL
            Dim C As Candidate
            C = bl.GetCandidateID(Me.txtID.Text)
            txtID.Text = C.Candidate_ID
            TextBox3.Text = C.NAtionality_ID
            TextBox4.Text = C.Candidate_Name
            TextBox5.Text = C.Bio_Info
            TextBox6.Text = C.IMG
            TextBox7.Text = C.Residence_Area_ID
            TextBox19.Text = C.Constituency_Area_ID
            btnUpdate.Enabled = True
            TextBox3.Enabled = True
            TextBox4.Enabled = True
            TextBox5.Enabled = True
            TextBox6.Enabled = True
            TextBox7.Enabled = True
            TextBox19.Enabled = True
        Catch ex As Exception
            Label1.Text = "Invalid data entry, please check the data you entered"
        End Try
    End Sub
    Protected Sub btnUpdate_Click(sender As Object, e As EventArgs) Handles btnUpdate.Click
        Try
            Dim Can As New Candidate
            Dim bl As New BL
            Can.Candidate_ID = txtID.Text
            Can.NAtionality_ID = TextBox3.Text
            Can.Candidate_Name = TextBox4.Text
            Can.Bio_Info = TextBox5.Text
            Can.IMG = TextBox6.Text
            Can.Residence_Area_ID = TextBox7.Text
            Can.Constituency_Area_ID = TextBox19.Text
            Dim i As Integer = bl.UpdateCandidate(Can)
            If i > -1 Then
                Response.Write("Candidate Has been updated")
                Me.txtID.Text = ""
                Me.TextBox3.Text = ""
                Me.TextBox4.Text = ""
                Me.TextBox5.Text = ""
                Me.TextBox6.Text = ""
                Me.TextBox7.Text = ""
                Me.TextBox19.Text = ""
                TextBox3.Enabled = False
                TextBox4.Enabled = False
                TextBox5.Enabled = False
                TextBox6.Enabled = False
                TextBox7.Enabled = False
                TextBox19.Enabled = False
                Me.txtID.Focus()
                btnUpdate.Enabled = False
                Response.Redirect("ManageCandidates.aspx")
            Else
                Response.Write("Candidate didn't update")
            End If
        Catch ex As Exception
            Label1.Text = "Invalid data entry, please check the data you entered"
        End Try
    End Sub
    Protected Sub Button6_Click(sender As Object, e As EventArgs) Handles Button6.Click
        Try
            Dim bl As New BL
            Dim i As Integer
            i = bl.DeleteCandidate(Me.TextBox1.Text)
            If i > 0 Then
                Me.TextBox1.Text = ""
                Me.TextBox2.Text = ""
                Me.TextBox8.Text = ""
                Me.TextBox9.Text = ""
                Me.TextBox10.Text = ""
                Me.TextBox11.Text = ""
                Me.TextBox20.Text = ""
                Button6.Enabled = False
                Response.Redirect("ManageCandidates.aspx")
                Response.Write("Candidate has been deleted")

            Else
                Response.Write("candidate didn't delete")

            End If
        Catch ex As Exception
            Label1.Text = "Invalid data entry, please check the data you entered"
        End Try
    End Sub
    Protected Sub Button7_Click(sender As Object, e As EventArgs) Handles Button7.Click

        Try
            Dim bl As New BL
            Dim C As Candidate
            C = bl.GetCandidateID(Me.TextBox1.Text)
            TextBox1.Text = C.Candidate_ID
            TextBox2.Text = C.NAtionality_ID
            TextBox8.Text = C.Candidate_Name
            TextBox9.Text = C.Bio_Info
            TextBox10.Text = C.IMG
            TextBox11.Text = C.Residence_Area_ID
            TextBox20.Text = C.Constituency_Area_ID
            Button6.Enabled = True
        Catch ex As Exception
            Label1.Text = "Invalid data entry, please check the data you entered"
        End Try
    End Sub
End Class