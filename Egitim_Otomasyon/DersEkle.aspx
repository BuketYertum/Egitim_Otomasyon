<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="DersEkle.aspx.cs" Inherits="DersEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">


     <form id="Form1" runat="server">


        <div class="form-group">

            <div>
                <asp:Label for="txtDersAd" runat="server" Text="Label">DERS ADI</asp:Label>
                <asp:TextBox ID="txtDersAd" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
           

            <asp:Button ID="Button1" runat="server" CssClass="btn bg-primary" Text="Oluştur" OnClick="Button1_Click1"/>
        </div>

        


    </form>



</asp:Content>

