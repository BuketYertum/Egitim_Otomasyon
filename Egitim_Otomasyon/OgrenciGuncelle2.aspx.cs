using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OgrenciGuncelle2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtnumara.Text = Request.QueryString["OGRNUMARA"];
        if (Page.IsPostBack == false)
        { 
                   
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if(txtsifre.Text == txtsifretekrar.Text)
        {
            DataSetTableAdapters.TBL_OGRENCITableAdapter dt = new DataSetTableAdapters.TBL_OGRENCITableAdapter();
            dt.OgrenciSifreGuncelle(txtsifre.Text, txtnumara.Text);
            Response.Redirect("DefaultOgrenci.aspx?OGRNUMARA=" + txtnumara.Text);

        }
        else
        {
            txtsifretekrar.Text = "Şifreler aynı değil!   Tekrar Giriniz..";
        }

       
    }
}