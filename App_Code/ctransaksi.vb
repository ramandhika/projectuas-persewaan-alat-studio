Imports Microsoft.VisualBasic

Public Class ctransaksi
    Private KodeBarang As String
    Private NamaBarang As String
    Private StokBarang As Integer
    Private HargaSewa As Integer

    Public Sub New()
        ' Constructor kosong
        KodeBarang = ""
        NamaBarang = ""
        StokBarang = 0
        HargaSewa = 0
    End Sub

    Public Sub setSewa(ByVal kode As String, ByVal nama As String, ByVal stok As Integer, ByVal harga As Integer)
        KodeBarang = kode
        NamaBarang = nama
        StokBarang = stok
        HargaSewa = harga
    End Sub

    Public Function getKdebar() As String
        Return KodeBarang
    End Function

    Public Function getNambar() As String
        Return NamaBarang
    End Function

    Public Function getStok() As Integer
        Return StokBarang
    End Function

    Public Function getHrgbar() As Integer
        Return HargaSewa
    End Function
End Class
