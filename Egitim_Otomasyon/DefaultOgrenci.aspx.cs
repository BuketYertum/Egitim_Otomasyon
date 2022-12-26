using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DefaultOgrenci : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtnumara.Text = Session["OGRNUMARA"].ToString(); //login sayfasında giriş yapılan ogr kullanıcı adına göre veri cekildi.

        DataSetTableAdapters.TBL_OGRENCITableAdapter dt = new DataSetTableAdapters.TBL_OGRENCITableAdapter();
        txtadsoyad.Text = "AD SOYAD : " + dt.OgrPaneliGetir(txtnumara.Text)[0].OGRAD;
        txtmail.Text = "MAİL : " +  dt.OgrPaneliGetir(txtnumara.Text)[0].OGRMAIL;
        txttel.Text = "TELEFON : " +  dt.OgrPaneliGetir(txtnumara.Text)[0].OGRTELEFON;
        txtsifre.Text = "ŞİFRE : " + dt.OgrPaneliGetir(txtnumara.Text)[0].OGRSIFRE;
        txtfoto.Text = "FOTOĞRAF : " + dt.OgrPaneliGetir(txtnumara.Text)[0].OGRFOTOGRAF;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("OgrenciGuncelle2.aspx?OGRNUMARA="+txtnumara.Text);
    }
}