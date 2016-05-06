Imports Microsoft.VisualBasic

Public Class Candidate
    Private CandidateID As Integer
    Private NationalityID As Int64
    Private CandidateName As String
    Private BioInfo As String
    Private Image As String
    Private ResidenceAreaID As Integer
    Private ConstituencyAreaID As Integer

    Property Candidate_ID As Integer
        Set(value As Integer)
            CandidateID = value
        End Set
        Get
            Return CandidateID
        End Get
    End Property
    Property NAtionality_ID As Int64
        Set(value As Int64)
            NationalityID = value
        End Set
        Get
            Return NationalityID
        End Get
    End Property

    Property Candidate_Name As String
        Set(value As String)
            CandidateName = value
        End Set
        Get
            Return CandidateName
        End Get
    End Property

    Property Bio_Info As String
        Set(value As String)
            BioInfo = value
        End Set
        Get
            Return BioInfo
        End Get
    End Property

    Property IMG As String
        Set(value As String)
            Image = value
        End Set
        Get
            Return Image
        End Get
    End Property

    Property Residence_Area_ID As Integer
        Set(value As Integer)
            ResidenceAreaID = value
        End Set
        Get
            Return ResidenceAreaID
        End Get
    End Property

    Property Constituency_Area_ID As Integer
        Set(value As Integer)
            ConstituencyAreaID = value
        End Set
        Get
            Return ConstituencyAreaID
        End Get
    End Property

End Class