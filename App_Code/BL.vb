Imports Microsoft.VisualBasic
Imports System.Data.SqlClient

Public Class BL
    Dim dal As DAL
    Dim bl As BL

    Sub New()
        Dim conn As String = "Data Source=DESKTOP-94P088P\JELARDO;Initial Catalog=Parliament E-Voting;Persist Security Info=True;User ID=sa;Password=Tearsofme1"
        dal = New DAL(conn)

    End Sub

    Function AddCandidate(C As Candidate) As Integer
        Dim sql As String
        sql = "insert into Candidates values( " & C.Candidate_ID & "," & C.NAtionality_ID & ",'" & C.Candidate_Name & "','" & C.Bio_Info & "','" & C.IMG & "'," & C.Residence_Area_ID & "," & C.Constituency_Area_ID & ")"
        Return dal.createSqlCommand(sql)

    End Function

    Function GetCandidateID(id As Integer) As Candidate
        Dim dr As SqlDataReader
        Dim sql As String
        sql = "select CandidateID,NationalityID,CandidateName,BioInfo,Image,ResidenceAreaID,ConstituencyAreaID from Candidates where CandidateID=" & id
        dr = dal.createSelectCommand(sql)
        Dim C As New Candidate
        If dr.Read Then
            C.Candidate_ID = dr(0)
            C.NAtionality_ID = dr(1)
            C.Candidate_Name = dr(2)
            C.Bio_Info = dr(3)
            C.IMG = dr(4)
            C.Residence_Area_ID = dr(5)
            C.Constituency_Area_ID = dr(6)
        End If
        Return C

    End Function

    Function UpdateCandidate(C As Candidate) As Integer
        Dim sql As String
        sql = "update Candidates set " & "CandidateID=" & C.Candidate_ID & ",NationalityID=" & C.NAtionality_ID & ",CandidateName='" & C.Candidate_Name & "',BioInfo='" & C.Bio_Info & "',Image='" & C.IMG & "',ResidenceAreaID=" & C.Residence_Area_ID & ",ConstituencyAreaID=" & C.Constituency_Area_ID & "where CandidateID=" & C.Candidate_ID
        Return dal.createSqlCommand(sql)

    End Function

    Function DeleteCandidate(C As Integer) As Integer
        Dim sql As String
        sql = "delete from Candidates where CandidateID=" & C
        Return dal.createSqlCommand(sql)

    End Function

End Class