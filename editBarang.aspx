<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="editBarang.aspx.vb" Inherits="editBarang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <h2 class="text-center mb-4 mt-4">Form Edit Data Barang Studio</h2>
    <asp:Label ID="lbPesan" runat="server" CssClass="text-center mt-3 mb-3 fw-bolder"></asp:Label>
    <div class="input-group row justify-content-center">
        <div class="col-7">
            <div class="form-group input-group mb-3">
                <label for="tbnama" class="input-group-text ">Kode Barang</label>
                <asp:TextBox ID="tbKode" runat="server" Cssclass="form-control" placeholder="Kode Barang" ReadOnly="true"></asp:TextBox>
            </div>
            <div class="form-group input-group mb-3">
                <label for="tbnama" class="input-group-text ">Nama Barang</label>
                <asp:TextBox ID="tbNama" runat="server" Cssclass="form-control" placeholder="Nama Barang"></asp:TextBox>
            </div>
            <div class="form-group input-group mb-3">
                <label for="tbStok" class="input-group-text ">Stok Barang</label>
                <asp:TextBox ID="tbStok" runat="server" Cssclass="form-control" placeholder="Stok Barang"></asp:TextBox>
            </div>
            <div class="form-group input-group mb-3">
                <label for="tbHarga" class="input-group-text ">Harga Sewa Per-hari</label>
                <asp:TextBox ID="tbHarga" runat="server" Cssclass="form-control" placeholder="Harga Sewa Per-hari"></asp:TextBox>
            </div>
            <div class="d-flex justify-content-center mb-4 mt-4">
                <asp:Button ID="btUpdate" runat="server" Text="Update" CssClass="btn btn-warning ms-2" /> 
                <asp:Button ID="btKembali" runat="server" Text="Kembali" CssClass="btn btn-outline-secondary ms-3" />
            </div>
        </div>
    </div>
        <p>
            &nbsp;
        </p>
    </form>
</asp:Content>

