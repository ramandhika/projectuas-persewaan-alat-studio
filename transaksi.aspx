<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="transaksi.aspx.vb" Inherits="transaksi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <asp:Label ID="lbPesan" runat="server" CssClass="text-center mt-3 mb-3 fw-bolder"></asp:Label>
    <h2 class="my-4 text-center">Form Penyewaan</h2>
        <div class="form-group input-group mb-3">
            <label for="tbkodepenyewa" class="input-group-text ">Kode Penyewa :</label>
            <asp:TextBox ID="tbkodepenyewa" runat="server" Cssclass="form-control" placeholder="Kode Penyewa"></asp:TextBox>
        </div>
        <div class="form-group input-group mb-3">
            <label for="tbnama" class="input-group-text ">Nama Penyewa :</label>
            <asp:TextBox ID="tbnama" runat="server" Cssclass="form-control" placeholder="Nama Penyewa"></asp:TextBox>
        </div>
        <div class=" mb-3">
            <label for="tbKalender" class="">Tanggal Sewa:</label>
            <div class="row">
              <div class="col-md-6">
                <asp:TextBox ID="tbStartDate" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                <label for="tbEndDate" class="">Tanggal Kembali:</label>
                <asp:TextBox ID="tbEndDate" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
              </div>
              <div class="col-md-6">
                <label for="tbJumlahHari" class="">Jumlah Hari:</label>
                <asp:TextBox ID="tbJumlahHari" runat="server" CssClass="form-control w-25" placeholder="Hari" TextMode="Number"></asp:TextBox>
              </div>
            </div>
        </div>
        <div class="mb-3">
                <label for="ddKartu" class="">Jaminan</label>
                <asp:DropDownList ID="ddKartu" runat="server" CssClass="form-control mb-1 w-25">
                    <asp:ListItem Value="">Pilih Jaminan</asp:ListItem>
                    <asp:ListItem Value="KTP">KTP (Kartu Tanda Penduduk)</asp:ListItem>
                    <asp:ListItem Value="SIM">SIM (Surat Izin Mengemudi)</asp:ListItem>
                    <asp:ListItem Value="KTM">KTM (Kartu Tanda Mahasiswa)</asp:ListItem>
                </asp:DropDownList>
                <asp:TextBox ID="tbKartu" runat="server" Cssclass="form-control w-50" placeholder="NIK/No SIM/NIM"></asp:TextBox>
        </div>
        <div class="form-group input-group mb-3">
            <label for="ddKarya" class="input-group-text ">Karyawan</label>
            <asp:DropDownList ID="ddKarya" runat="server" CssClass="form-control">
                <asp:ListItem>Daftar Karyawan</asp:ListItem>
            </asp:DropDownList>
        </div>
        <hr />
        <h3 class="mt-4 text-center">Daftar Alat Studio</h3>
        <div class="form-group input-group">
            <asp:DropDownList ID="ddBarang" runat="server" CssClass="form-control ms-0" AutoPostBack="True">
                <asp:ListItem>Pilih Alat Studio yang Tersedia</asp:ListItem>
            </asp:DropDownList>
        </div>
        <asp:Label ID="Label1" runat="server" CssClass="text-center mt-3 mb-3 fw-bolder"></asp:Label>
        <asp:Table ID="tblDatBarang" runat="server" CssClass="table table-hover table-striped mt-3">
            <asp:TableRow runat="server" TableSection="TableHeader">
                <asp:TableCell runat="server">Kode</asp:TableCell>
                <asp:TableCell runat="server">Nama Kuliah</asp:TableCell>
                <asp:TableCell runat="server">Sks</asp:TableCell>
                <asp:TableCell runat="server">Aksi</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">112233</asp:TableCell>
                <asp:TableCell runat="server">Pemrograman Web</asp:TableCell>
                <asp:TableCell runat="server">4</asp:TableCell>
                <asp:TableCell runat="server"><a href="#" class="btn btn-danger btn-sm"><i class="fa-regular fa-trash-can"></i></a></asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <asp:Button ID="btSimpan" runat="server" Text="Simpan" CssClass="btn btn-primary ms-2" />
        <asp:Button ID="btBaru" runat="server" Text="Baru" CssClass="btn btn-outline-success ms-0" />
    </form>
</asp:Content>

