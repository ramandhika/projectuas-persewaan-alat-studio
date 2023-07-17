﻿Imports System.Data.SqlClient
Partial Class insertKarya
    Inherits System.Web.UI.Page

    'Deklarasi Koneksi
    Dim cn As SqlConnection = Nothing
    Dim cnsql As String = ConfigurationManager.ConnectionStrings("consql").ConnectionString

    Protected Sub btSimpan_Click(sender As Object, e As EventArgs) Handles btSimpan.Click
        cn = New SqlConnection(cnsql)

        Try
            cn.Open()
            Dim sql As String = "INSERT INTO Karyawan(KODEKarya,Nama,Username, Password)"
            sql = sql & " VALUES ('" & tbKode.Text & "','" & tbNama.Text & "','" & tbUser.Text & "','" & tbPass.Text & "') "
            'Response.Write(sql)

            'buat obyek command untuk mengeksekusi perintah sql
            Dim cmd As SqlCommand = New SqlCommand(sql, cn)
            Dim jmlrec As Integer = cmd.ExecuteNonQuery
            If jmlrec > 0 Then
                lbPesan.Text = "<div class='alert alert-success' role='alert'>Proses Simpan Data Karyawan Berhasil!</div>"
                Response.AddHeader("REFRESH", "3;URL=insertKarya.aspx")
            Else
                lbPesan.Text = "<div class='alert alert-danger' role='alert'>Proses Simpan Data Karyawan Gagal!</div>"
            End If
            'Response.Write("Koneksi AMANN !1!1!1")
        Catch ex As Exception
            lbPesan.Text = "<div class='alert alert-danger' role='alert'>Koneksi Mati!</div>"
        Finally
            cn.Close()
            cn = Nothing
            tbNama.Text = ""
            tbKode.Text = ""
            tbPass.Text = ""
            tbUser.Text = ""
        End Try
    End Sub

    Protected Sub btKembali_Click(sender As Object, e As EventArgs) Handles btKembali.Click
        Response.Redirect("home.aspx")
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        cn = New SqlConnection(cnsql)
        Try
            cn.Open()
            Dim sql As String = "SELECT KODEKarya, Nama, Username FROM Karyawan"
            Dim cmd As SqlCommand = New SqlCommand(sql, cn)
            Dim data As SqlDataReader = cmd.ExecuteReader
            Dim tmp As String = "<table class='table table-striped table-dark mt-3' style='width: 1100px;'>"
            tmp = tmp & "<tr class='text-center'><th>Kode Karyawan</th>"
            tmp = tmp & "<th class='text-start'>Nama Karyawan</th>"
            tmp = tmp & "<th>Username</th>"
            tmp = tmp & "<th colspan=2 class='text-center w-25'>Aksi</th></tr>"

            If data.HasRows Then
                While (data.Read)
                    tmp = tmp & "<tr>"
                    tmp = tmp & "<td class='text-center'>" & data.GetString(0) & "</td>"
                    tmp = tmp & "<td>" & data.GetString(1) & "</td>"
                    tmp = tmp & "<td class='text-center'>" & data.GetString(2) & "</td>"
                    tmp = tmp & "<td align='center'><a href=editKarya.aspx?kode=" & data.GetString(0) & " class='btn btn-sm btn-warning fw-bold'><i class='fa-regular fa-pen-to-square'></i> EDIT</a></td>"
                    tmp = tmp & "<td align='center'><a href=deleteKarya.aspx?kode=" & data.GetString(0) & " class='btn btn-sm btn-danger fw-bold'><i class='fa-regular fa-trash-can'></i> HAPUS</a></td>"
                    tmp = tmp & "</tr>"
                End While
                tmp = tmp & "</table>"
                dataKarya.InnerHtml = tmp
            End If
        Catch ex As Exception
            Response.Write("Ada Kesalahan akses database :" & ex.Message)
        Finally
            cn.Close()
            cn = Nothing
        End Try
    End Sub
End Class
