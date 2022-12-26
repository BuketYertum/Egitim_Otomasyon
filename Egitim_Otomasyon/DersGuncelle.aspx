<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="DersGuncelle.aspx.cs" Inherits="DersGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">



    <form id="Form1" runat="server">


        <div class="form-group">

            <div>
                <asp:Label for="txtDersId" runat="server" Text="Label">DERS ID</asp:Label>
                <asp:TextBox ID="txtDersId" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtDersAd" runat="server" Text="Label">DERS ADI</asp:Label>
                <asp:TextBox ID="txtDersAd" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
           

            
        </div>

        
        <asp:Button ID="Button1" runat="server" CssClass="btn bg-primary" Text="GÜNCELLE" OnClick="Button1_Click"/>

    </form>




</asp:Content>

