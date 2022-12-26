<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="DuyuruListesi.aspx.cs" Inherits="DuyuruListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">



    <table class="table table-bordered table-hover">
        <tr>
            <th scope="col">ID</th>
            <th scope="col">BAŞLIK</th>
            <th scope="col">İÇERİK</th>
            <th scope="col">ÖĞRETMEN</th>
            <th scope="col">İŞLEMLER</th>
        </tr>

        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">  <%--Veri Tabanından verileri çekmek için kullanıyorum.--%>
               
                <ItemTemplate>    <%-- Öge Şablonu--%>      

                    <tr>
                        <td><%#Eval("DUYURUID")%></td>
                        <td><%#Eval("DUYURUBASLIK")%></td>
                        <td><%#Eval("DUYURUICERIK")%></td>
                        <td><%#Eval("OGRTADSOYAD")%></td>
                        <td>
                            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"~/DuyuruGuncelle.aspx?DUYURUID="+Eval("DUYURUID")%>' runat="server"  CssClass="btn btn-warning">GÜNCELLE</asp:HyperLink>
                            <asp:HyperLink ID="HyperLink2" NavigateUrl='<%#"~/DuyuruSil.aspx?DUYURUID="+Eval("DUYURUID")%>' runat="server"  CssClass="btn btn-danger">SİL</asp:HyperLink>
                        </td>
                    </tr>

                </ItemTemplate>

            </asp:Repeater>
        </tbody>
    </table>







</asp:Content>

