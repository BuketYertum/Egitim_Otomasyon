<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.master" AutoEventWireup="true" CodeFile="OgrenciGuncelle2.aspx.cs" Inherits="OgrenciGuncelle2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">




     <form id="Form1" runat="server">

    <div class="form-group">

       
            <div>
                 <asp:Label ID="Label2" runat="server" CssClass="form-control" Text="Label">NUMARA</asp:Label>
                <asp:TextBox ID="txtnumara" runat="server" CssClass="form-control" Enabled="false" BackColor="#c0c0c0 "></asp:TextBox>
            </div>
            <br />
            <div>
               
                <asp:Label ID="Label5" runat="server" CssClass="form-control" Text="Label">ŞİFRE</asp:Label>
                <asp:TextBox ID="txtsifre" runat="server" CssClass="form-control" BackColor="#c0c0c0" ></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label6" runat="server" CssClass="form-control" Text="Label">ŞİFRE TEKRAR</asp:Label>
                <asp:TextBox ID="txtsifretekrar" runat="server" CssClass="form-control" BackColor="#c0c0c0" ></asp:TextBox>
            </div>
            <br />

        </div>

            <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="Şifre Güncelle" OnClick="Button1_Click" />

   </form>






</asp:Content>

