<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.master" AutoEventWireup="true" CodeFile="OgrenciDuyuruListesi.aspx.cs" Inherits="OgrenciDuyuruListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">



     <table class="table table-bordered table-hover">
        <tr>
            <th scope="col">ID</th>
            <th scope="col">BAŞLIK</th>
            <th scope="col">İÇERİK</th>
            <th scope="col">ÖĞRETMEN</th>
        </tr>

        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">  <%--Veri Tabanından verileri çekmek için kullanıyorum.--%>
               
                <ItemTemplate>    <%-- Öge Şablonu--%>      

                    <tr>
                        <td><%#Eval("DUYURUID")%></td>
                        <td><%#Eval("DUYURUBASLIK")%></td>
                        <td><%#Eval("DUYURUICERIK")%></td>
                        <td><%#Eval("OGRTADSOYAD")%></td>
                    </tr>

                </ItemTemplate>

            </asp:Repeater>
        </tbody>
    </table>










</asp:Content>

