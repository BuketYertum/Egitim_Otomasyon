<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.master" AutoEventWireup="true" CodeFile="OgrenciMesajOlustur.aspx.cs" Inherits="OgrenciMesajOlustur" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">




    <form id="Form1" runat="server">


        <div class="form-group">

            <div>
                <asp:Label for="txtGonderen" runat="server" Text="Label">GONDEREN</asp:Label>
               <asp:TextBox ID="txtGonderen" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtAlıcı" runat="server" Text="Label">ALICI</asp:Label>
                <asp:TextBox ID="txtAlıcı" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtMesajBaslik" runat="server" Text="Label">MESAJ BAŞLIK</asp:Label>
                <asp:TextBox ID="txtMesajBaslik" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
             <div>
                <asp:Label for="txtMesajIcerik" runat="server" Text="Label">MESAJ IÇERIK</asp:Label>
                <textarea id="txtMesajIcerik" runat="server" cols="20" rows="6" class="form-control"></textarea>
            </div>
            <br />

        </div>

        <asp:Button ID="Button1" runat="server" CssClass="btn bg-primary" Text="MESAJ GÖNDER" OnClick="Button1_Click" />


    </form>









</asp:Content>

