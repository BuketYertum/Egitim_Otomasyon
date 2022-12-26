<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="DersListesi.aspx.cs" Inherits="DersListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">



     <table class="table table-bordered table-hover">
        <tr>
            <th scope="col">DERS ID</th>
            <th scope="col">DERS ADI</th>
            <th scope="col">İŞLEMLER</th>
        </tr>

        <tbody>

            <asp:Repeater ID="Repeater1" runat="server">
                <%--Veri Tabanından verileri çekmek için kullanıyorum.--%>

                <ItemTemplate>
                    <%-- Öge Şablonu--%>

                    <tr>
                        <td><%#Eval("DERSID")%></td>
                        <td><%#Eval("DERSAD")%></td>
                        <td>
                            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"~/DersGuncelle.aspx?DERSID="+Eval("DERSID")%>'   runat="server"  CssClass="btn btn-warning">GÜNCELLE</asp:HyperLink>
                            <asp:HyperLink ID="HyperLink2" NavigateUrl='<%#"~/DersSil.aspx?DERSID="+Eval("DERSID")%>' runat="server"  CssClass="btn btn-danger">SİL</asp:HyperLink>    
                        </td>
                       
                    </tr>

                </ItemTemplate>

            </asp:Repeater>
       
        </tbody>
    </table>

     <asp:HyperLink ID="HyperLink3"  runat ="server"  NavigateUrl="~/DersEkle.aspx"  CssClass="btn btn-success">DERS EKLE</asp:HyperLink>

</asp:Content>

