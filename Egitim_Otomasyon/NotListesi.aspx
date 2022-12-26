<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="NotListesi.aspx.cs" Inherits="NotListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">



    <table class="table table-bordered table-hover">
        <tr>
            <th scope="col">ÖĞRENCİ ID</th>
            <th scope="col">AD SOYAD</th>
            <th scope="col">DERS ADI</th>
            <th scope="col">SINAV 1</th>
            <th scope="col">SINAV 2</th>
            <th scope="col">SINAV 3</th>
            <th scope="col">ORTALAMA</th>
            <th scope="col">DURUM</th>
        </tr>

        <tbody>

            <asp:Repeater ID="Repeater1" runat="server">
                <%--Veri Tabanından verileri çekmek için kullanıyorum.--%>

                <ItemTemplate>
                    <%-- Öge Şablonu--%>

                    <tr>
                       
                        <td><%#Eval("OGRENCIID")%></td>
                        <td><%#Eval("OGRENCIADSOYAD")%></td>
                        <td><%#Eval("DERSAD")%></td>
                        <td><%#Eval("SINAV1") %></td>
                        <td><%#Eval("SINAV2") %></td>
                        <td><%#Eval("SINAV3") %></td>
                        <td><%#Eval("ORTALAMA") %></td>
                        <td><%#Eval("DURUM") %></td>

                        <td>
                            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"~/NotGuncelle.aspx?NOTID="+Eval("NOTID")%>' runat="server" CssClass="btn btn-success">GÜNCELLE</asp:HyperLink>
                        </td>
                    </tr>


                </ItemTemplate>

            </asp:Repeater>



        </tbody>
    </table>













</asp:Content>

