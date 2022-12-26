<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="Galeri.aspx.cs" Inherits="Galeri" %>

<%@ Register assembly="DevExpress.Web.v22.1, Version=22.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">






    <form id="form1" runat="server">
    <dx:ASPxImageGallery ID="ASPxImageGallery1" runat="server" DataSourceID="SqlDataSource1" ImageUrlField="OGRFOTOGRAF">
        <SettingsFolder ImageCacheFolder="~/Thumb/" />
    </dx:ASPxImageGallery>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DboEgitimConnectionString %>" SelectCommand="SELECT [OGRFOTOGRAF] FROM [TBL_OGRENCI]"></asp:SqlDataSource>

</form>








</asp:Content>

