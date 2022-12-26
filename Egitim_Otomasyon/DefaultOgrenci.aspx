<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.master" AutoEventWireup="true" CodeFile="DefaultOgrenci.aspx.cs" Inherits="DefaultOgrenci" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">

      <form id="Form1" runat="server">

    <div class="form-group">


            <div>
                <asp:TextBox ID="txtnumara" runat="server" CssClass="form-control" BackColor="#c0c0c0" Enabled="false">NUMARA</asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="txtadsoyad" runat="server" CssClass="form-control" BackColor="#c0c0c0" Enabled="false">AD SOYAD</asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="txtmail" runat="server" CssClass="form-control" BackColor="#c0c0c0" Enabled="false">MAIL</asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="txttel" runat="server" CssClass="form-control" BackColor="#c0c0c0" Enabled="false">TELEFON</asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="txtsifre" runat="server" CssClass="form-control" BackColor="#c0c0c0" Enabled="false">ŞİFRE</asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="txtfoto" runat="server" CssClass="form-control" BackColor="#c0c0c0" Enabled="false">FOTOĞRAF</asp:TextBox>
            </div>
            <br />

        </div>

            <asp:Button ID="Button1" runat="server" CssClass="btn bg-primary" Text="Güncelle" OnClick="Button1_Click" />

   </form>


</asp:Content>

