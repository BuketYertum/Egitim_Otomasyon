<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="OgrenciGuncelle.aspx.cs" Inherits="OgrenciGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">


    <form id="Form1" runat="server">


        <div class="form-group">

            <div>
                <asp:Label for="txtOgrId" runat="server" Text="Label">Öğrenci ID</asp:Label>
                <asp:TextBox ID="txtOgrId" runat="server" CssClass="form-control" ></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtOgrAd" runat="server" Text="Label">Öğrenci Adı</asp:Label>
                <asp:TextBox ID="txtOgrAd" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtOgrSoyad" runat="server" Text="Label">Öğrenci Soyadı</asp:Label>
                <asp:TextBox ID="txtOgrSoyad" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtOgrTelefon" runat="server" Text="Label">Öğrenci Telefon</asp:Label>
                <asp:TextBox ID="txtOgrTelefon" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtOgrMail" runat="server" Text="Label">Öğrenci Mail</asp:Label>
                <asp:TextBox ID="txtOgrMail" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtOgrSifre" runat="server" Text="Label">Öğrenci Şifre</asp:Label>
                <asp:TextBox ID="txtOgrSifre" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
             <div>
                <asp:Label for="txtOgrFotograf" runat="server" Text="Label">Fotoğraf Linki</asp:Label>
                <asp:TextBox ID="txtOgrFotograf" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />

        </div>
       
         <asp:Button ID="Button1" runat="server" CssClass="btn alert-success" Text="Güncelle" OnClick="Button1_Click" />

    </form>

</asp:Content>

