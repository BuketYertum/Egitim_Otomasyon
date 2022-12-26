<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="Grafikler.aspx.cs" Inherits="Grafikler" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<%@ Register assembly="DevExpress.XtraCharts.v22.1.Web, Version=22.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.XtraCharts.Web" tagprefix="dx" %>
<%@ Register assembly="DevExpress.XtraCharts.v22.1, Version=22.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.XtraCharts" tagprefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 582px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <form id="form1" runat="server">
     <table class="table table-bordered table-hover">
        <tr>
            <td class="auto-style1">
                <dx:WebChartControl ID="WebChartControl5" runat="server" CrosshairEnabled="True" Height="300px" PaletteName="Metro" Width="450px">
                    <DiagramSerializable>
                        <dx:XYDiagram>
                            <AxisX VisibleInPanesSerializable="-1">
                            </AxisX>
                            <AxisY VisibleInPanesSerializable="-1">
                            </AxisY>
                        </dx:XYDiagram>
                    </DiagramSerializable>
                    <SeriesSerializable>
                        <dx:Series LegendTextPattern="{A}" Name="Ögretmen">
                        </dx:Series>
                    </SeriesSerializable>
                </dx:WebChartControl>
            </td>
            <td>
                <dx:WebChartControl ID="WebChartControl4" runat="server" CrosshairEnabled="True" Height="300px" PaletteName="Verve" Width="450px">
                    <SeriesSerializable>
                        <dx:Series LegendTextPattern="{A}" Name="Notlar">
                            <ViewSerializable>
                                <dx:DoughnutSeriesView>
                                </dx:DoughnutSeriesView>
                            </ViewSerializable>
                        </dx:Series>
                    </SeriesSerializable>
                </dx:WebChartControl>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <dx:WebChartControl ID="WebChartControl1" runat="server" CrosshairEnabled="True" Height="300px" PaletteName="Marquee" Width="450px">
                    <DiagramSerializable>
                        <dx:SimpleDiagram3D RotationMatrixSerializable="1;0;0;0;0;0.5;-0.866025403784439;0;0;0.866025403784439;0.5;0;0;0;0;1">
                        </dx:SimpleDiagram3D>
                    </DiagramSerializable>
                    <SeriesSerializable>
                        <dx:Series LegendTextPattern="{A}" Name="Cinsiyet">
                            <ViewSerializable>
                                <dx:Pie3DSeriesView>
                                </dx:Pie3DSeriesView>
                            </ViewSerializable>
                        </dx:Series>
                    </SeriesSerializable>
                </dx:WebChartControl>
            </td>
            <td>
                <dx:WebChartControl ID="WebChartControl2" runat="server" CrosshairEnabled="True" Height="300px" PaletteName="Orange" Width="450px">
                    <DiagramSerializable>
                        <dx:XYDiagram>
                            <AxisX VisibleInPanesSerializable="-1">
                            </AxisX>
                            <AxisY VisibleInPanesSerializable="-1">
                            </AxisY>
                        </dx:XYDiagram>
                    </DiagramSerializable>
                    <SeriesSerializable>
                        <dx:Series Name="Dersler">
                        </dx:Series>
                    </SeriesSerializable>
                </dx:WebChartControl>
            </td>
        </tr>
    </table>
</form>
</asp:Content>

