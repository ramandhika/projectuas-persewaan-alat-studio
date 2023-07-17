﻿<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="insertKarya.aspx.vb" Inherits="insertKarya" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <h2 class="text-center mb-4 mt-4">Form Tambah Data Karyawan</h2>
    <asp:Label ID="lbPesan" runat="server" CssClass="text-center mt-3 mb-3 fw-bolder"></asp:Label>
    <div class="input-group row justify-content-center">
        <div class="col-7">
            <div class="form-group input-group mb-3">
                <label for="tbnama" class="input-group-text ">Kode Karyawan :</label>
                <asp:TextBox ID="tbKode" runat="server" Cssclass="form-control" placeholder="Kode Karyawan"></asp:TextBox>
            </div>
            <div class="form-group input-group mb-3">
                <label for="tbnama" class="input-group-text ">Nama Karyawan :</label>
                <asp:TextBox ID="tbNama" runat="server" Cssclass="form-control" placeholder="Nama Karyawan"></asp:TextBox>
            </div>
            <div class="form-group input-group mb-3">
                <label for="tbnama" class="input-group-text ">Username :</label>
                <asp:TextBox ID="tbUser" runat="server" Cssclass="form-control" placeholder="Username"></asp:TextBox>
            </div>
            <div class="form-group input-group mb-3">
                <label for="tbnama" class="input-group-text ">Password :</label>
                <asp:TextBox ID="tbPass" runat="server" Cssclass="form-control" placeholder="Password"></asp:TextBox>
            </div>
            <div class="d-flex justify-content-center mb-4 mt-4">
                <asp:Button ID="btSimpan" runat="server" Text="Simpan" CssClass="btn btn-primary ms-2" /> 
                <asp:Button ID="btKembali" runat="server" Text="Kembali" CssClass="btn btn-secondary ms-3" />
            </div>
        </div>
        <hr />
        <div id="dataKarya" runat="server">

        </div>
    </div>
        <p>
            &nbsp;
        </p>
    </form>
</asp:Content>
