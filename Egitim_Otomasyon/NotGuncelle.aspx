<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="NotGuncelle.aspx.cs" Inherits="NotGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">



     <form id="Form1" runat="server">


        <div class="form-group">


           <div>
                <asp:Label for="DropDownList1" runat="server" Text="Label">Ders Adı</asp:Label>
               <asp:TextBox ID="txtDersAd" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtOgrId" runat="server" Text="Label">Öğrenci ID</asp:Label>
                <asp:TextBox ID="txtOgrId" runat="server" CssClass="form-control" ></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtOgrAdSoyad" runat="server" Text="Label">Öğrenci Adı Soyadı</asp:Label>
                <asp:TextBox ID="txtOgrAdSoyad" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtSınav1" runat="server" Text="Label">Sınav 1</asp:Label>
                <asp:TextBox ID="txtSınav1" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtSınav2" runat="server" Text="Label">Sınav 2</asp:Label>
                <asp:TextBox ID="txtSınav2" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtSınav3" runat="server" Text="Label">Sınav 3</asp:Label>
                <asp:TextBox ID="txtSınav3" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
             <div>
                <asp:Label for="txtOrtalama" runat="server" Text="Label">Ortalama</asp:Label>
                <asp:TextBox ID="txtOrtalama" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtDurum" runat="server" Text="Label">Durum</asp:Label>
                <asp:TextBox ID="txtDurum" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />

        </div>
       
          <asp:Button ID="Button2" runat="server" CssClass="btn btn-primary" Text="Hesapla" OnClick="Button2_Click" />
         <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="Güncelle" OnClick="Button1_Click" />

    </form>






</asp:Content>

