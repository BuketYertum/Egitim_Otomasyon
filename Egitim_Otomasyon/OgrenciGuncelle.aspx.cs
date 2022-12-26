using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OgrenciGuncelle : System.Web.UI.Page
{

    int id;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false) 
        { 
            try //fotograf içi null oldugunda hata döndürmemesi için try catch de denedim.GEÇİÇİ BİR ÇÖZÜM.
            {
                id = Convert.ToInt32(Request.QueryString["OGRID"].ToString());
                txtOgrId.Text = id.ToString();

                DataSetTableAdapters.TBL_OGRENCITableAdapter dt = new DataSetTableAdapters.TBL_OGRENCITableAdapter();
                txtOgrAd.Text = dt.OgrenciSec(id)[0].OGRAD;
                txtOgrSoyad.Text = dt.OgrenciSec(id)[0].OGRSOYAD;
                txtOgrTelefon.Text = dt.OgrenciSec(id)[0].OGRTELEFON;
                txtOgrMail.Text = dt.OgrenciSec(id)[0].OGRMAIL;
                txtOgrSifre.Text = dt.OgrenciSec(id)[0].OGRSIFRE;
                txtOgrFotograf.Text = dt.OgrenciSec(id)[0].OGRFOTOGRAF;
            }
            catch (Exception)
            {

                txtOgrFotograf.Text = "Link Girin";
            }
        }



    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBL_OGRENCITableAdapter dt = new DataSetTableAdapters.TBL_OGRENCITableAdapter();
        dt.OgrenciGuncelle(txtOgrAd.Text, txtOgrSoyad.Text, txtOgrTelefon.Text, txtOgrMail.Text, txtOgrSifre.Text, txtOgrFotograf.Text,Convert.ToInt32(txtOgrId.Text));
        Response.Redirect("Default.aspx");
    }
}