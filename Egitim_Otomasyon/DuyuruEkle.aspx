<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="DuyuruEkle.aspx.cs" Inherits="DuyuruEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">



    <form id="Form1" runat="server">


        <div class="form-group">

            <div>
                <asp:Label for="DropDownList1" runat="server" Text="Label">Öğretmen</asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"></asp:DropDownList>
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

        <asp:Button ID="Button1" runat="server" CssClass="btn bg-primary" Text="Oluştur" OnClick="Button1_Click1" />


    </form>







</asp:Content>

