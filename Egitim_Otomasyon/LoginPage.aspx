<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" Inherits="LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />


    <link href="Dosyalar1/bootstrap.min.css" rel="stylesheet" />
    <%--Css dosyasını ekledim--%>

    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 583px;
            margin-top: 0px;
        }

        .auto-style2 {
            color: #000000;
            font-size: large;
        }

        .auto-style3 {
            color: #FFFFFF;
        }
        .auto-style4 {
            color: #000000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="background-image: url('bg.jpg')" class="auto-style1" submitdisabledcontrols="False">
        
        <br />
        <div style="width: 700px; margin: auto;">

            <h2 style="margin: auto" class="text-center"><span class="auto-style2" style="border-bottom-style: double; font-style: oblique;">NOT SİSTEMİ GİRİŞ EKRANI</span><span class="auto-style4">&nbsp;</span></h2>
            <br />
            <br />
           

            <div style="margin: auto" class="text-center">
                <asp:Image ID="Image1" runat="server" Height="100px" Width="100px" ImageUrl="~/ogravatar.png" />
            </div>
            <br />
            

            <div>
                <asp:Label for="txtkullanici" runat="server" CssClass="auto-style3" ForeColor="Black">KULLANICI ADI </asp:Label>
                <asp:TextBox ID="txtkullanici" runat="server" CssClass="form-control" Font-Bold="True" ForeColor="Black"></asp:TextBox>
            </div>
            <br />

            <div>
                <asp:Label for="txtsifre" runat="server" CssClass="auto-style3" ForeColor="Black">ŞİFRE </asp:Label>
                <asp:TextBox ID="txtsifre" runat="server" CssClass="form-control" TextMode="Password" Font-Bold="True"></asp:TextBox>
            </div>
            <br />
             <br />

            <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Öğrenci Giriş Yap" Width="700px" OnClick="Button1_Click"/>
            <br />
                  <br />
            <asp:Button ID="Button5" runat="server" CssClass="btn btn-primary" Text="Öğretmen Giriş Yap" Width="700px" BackColor="#009999" OnClick="Button5_Click1"/>
            <br />
                  <br />

            <asp:Button ID="Button3" runat="server" CssClass="btn btn-warning" Text="İptal Et" Width="230px" OnClick="Button3_Click" />
            <asp:Button ID="Button2" runat="server" CssClass="btn btn-danger" Text="Şifremi Unuttum" Width="230px" OnClick="Button2_Click" />
            <asp:Button ID="Button4" runat="server" CssClass="btn btn-info" Text="Yardım" Width="230px" OnClick="Button4_Click" />

        </div>
    </form>
</body>
</html>
