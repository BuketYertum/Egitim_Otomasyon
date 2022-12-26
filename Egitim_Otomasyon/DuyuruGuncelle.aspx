<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="DuyuruGuncelle.aspx.cs" Inherits="DuyuruGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">



    <form id="Form1" runat="server">


        <div class="form-group">

             <div>
                <asp:Label for="txtDuyuruId" runat="server" Text="Label">Duyuru Id</asp:Label>
                <asp:TextBox ID="txtDuyuruId" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtDuyuruBaslik" runat="server" Text="Label">Duyuru Başlık</asp:Label>
                <asp:TextBox ID="txtDuyuruBaslik" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TextArea1" runat="server" Text="Label">Duyuru İçerik</asp:Label>
                <textarea id="TextArea1" runat="server" cols="20" rows="6" class="form-control"></textarea>
            </div>
            <br />

        </div>

        <asp:Button ID="Button1" runat="server" CssClass="btn bg-primary" Text="Güncelle" OnClick="Button1_Click" />


    </form>





</asp:Content>

