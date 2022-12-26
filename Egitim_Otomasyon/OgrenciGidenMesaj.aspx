<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.master" AutoEventWireup="true" CodeFile="OgrenciGidenMesaj.aspx.cs" Inherits="OgrenciGidenMesaj" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">




    
    <table class="table table-bordered table-hover">
        <tr>
            
            <th scope="col">ALICI</th>
            <th scope="col">BASLIK</th>
            <th scope="col">ICERIK</th>
            <th scope="col">TARIH</th>
        </tr>

        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">  <%--Veri Tabanından verileri çekmek için kullanıyorum.--%>
               
                <ItemTemplate>    <%-- Öge Şablonu--%>      

                    <tr>
                        <td><%#Eval("OGRADSOYAD")%></td>
                        <td><%#Eval("BASLIK")%></td>
                        <td><%#Eval("ICERIK")%></td>
                         <td><%#Eval("TARiH")%></td>
                    </tr>

                </ItemTemplate>

            </asp:Repeater>
        </tbody>
    </table>











</asp:Content>

