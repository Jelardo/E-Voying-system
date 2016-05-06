Imports Microsoft.VisualBasic
Imports System.Data.SqlClient

Public Class DAL
    Dim cnn As SqlConnection
    Dim cmd As SqlCommand
    Dim dr As SqlDataReader

    Sub New(connectionString As String)
        cnn = New SqlConnection(connectionString)

    End Sub
    Public Sub New()
        cnn = New SqlConnection("Data Source=DESKTOP-94P088P\JELARDO;Initial Catalog=Parliament E-Voting;Persist Security Info=True;User ID=sa;Password=Tearsofme1")
    End Sub

    Private Sub open_connection()
        cnn.Open()
    End Sub

    Public Function execute_select(ByVal sql As String) As SqlDataReader
        open_connection()
        cmd = New SqlCommand(sql, cnn)
        dr = cmd.ExecuteReader

        Return dr
    End Function

    Public Function execute_DML(ByVal sql As String) As Integer
        open_connection()
        cmd = New SqlCommand(sql, cnn)
        Dim i As Integer = cmd.ExecuteNonQuery
        Return i

    End Function

    Sub openConnection()
        cnn.Open()
    End Sub

    Function createSelectCommand(sql As String) As SqlDataReader
        openConnection()
        cmd = New SqlCommand(sql, cnn)
        Return cmd.ExecuteReader

    End Function

    Function createSqlCommand(sql As String) As Integer
        openConnection()
        cmd = New SqlCommand(sql, cnn)
        Return cmd.ExecuteNonQuery
        close_connection()

    End Function

    Public Sub close_connection()
        cnn.Close()
    End Sub

End Class