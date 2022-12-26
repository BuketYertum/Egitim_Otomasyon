using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Istatistikler : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSetTableAdapters.DataTable1TableAdapter dt = new DataSetTableAdapters.DataTable1TableAdapter();
        TextBox1.Text = "TOPLAM ÖĞRENCİ SAYISI : " + dt.İstatistikOgrSayisi().ToString();
        TextBox2.Text = "TOPLAM ÖĞRETMEN SAYISI : " + dt.İstatistikOgrtSayisi().ToString();
        TextBox3.Text = "TOPLAM DERS SAYISI : " + dt.İstatistikDersSayisi().ToString();
        TextBox4.Text = "MATEMATİKTE EN BAŞARILI ÖĞRENCİ : " + dt.İstatistikMatNot().ToString();
        TextBox5.Text = "MATEMATİK SINAV1 ORTALAMASI : " + dt.İstatistikMatOrt().ToString();
        TextBox6.Text = "MATEMATİK DERSİNDEN KALAN ÖĞRENCİ SAYISI : " + dt.İstatistikMatKalanOgr().ToString();
    }
}