<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">



    <table class="table table-bordered table-hover">
        <tr>
            <th scope="col">ID</th>
            <th scope="col">NUMARA</th>
            <th scope="col">AD</th>
            <th scope="col">SOYAD</th>
            <th scope="col">TELEFON</th>
            <th scope="col">MAİL</th>
            <th scope="col">ŞİFRE</th>
            <th scope="col">İŞLEMLER</th>
        </tr>

        <tbody>

            <asp:Repeater ID="Repeater1" runat="server">
                <%--Veri Tabanından verileri çekmek için kullanıyorum.--%>

                <ItemTemplate>
                    <%-- Öge Şablonu--%>

                    <tr>
                        <td><%#Eval("OGRID")%></td>
                         <td><%#Eval("OGRNUMARA")%></td>
                        <td><%#Eval("OGRAD")%></td>
                        <td><%#Eval("OGRSOYAD")%></td>
                        <td><%#Eval("OGRTELEFON")%></td>
                        <td><%#Eval("OGRMAIL")%></td>
                        <td><%#Eval("OGRSIFRE")%></td>
                        <td>
                            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"~/OgrenciGuncelle.aspx?OGRID="+Eval("OGRID")%>' runat="server"  CssClass="btn btn-warning">GÜNCELLE</asp:HyperLink>
                            <asp:HyperLink ID="HyperLink2" NavigateUrl='<%#"~/OgrenciSil.aspx?OGRID="+Eval("OGRID")%>' runat="server"  CssClass="btn btn-danger">SİL</asp:HyperLink>
                        </td>
                    </tr>


                </ItemTemplate>

            </asp:Repeater>



        </tbody>
    </table>







</asp:Content>




<%--<th scope="row">1</th>--%>