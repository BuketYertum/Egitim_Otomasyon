using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DersGuncelle : System.Web.UI.Page
{
    int id;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            try //fotograf içi null oldugunda hata döndürmemesi için try catch de denedim.GEÇİÇİ BİR ÇÖZÜM.
            {
                id = Convert.ToInt32(Request.QueryString["DERSID"].ToString());
                txtDersId.Text = id.ToString();

                DataSetTableAdapters.TBL_DERSLERTableAdapter dt = new DataSetTableAdapters.TBL_DERSLERTableAdapter();
                txtDersAd.Text = dt.DersGetir(id)[0].DERSAD;

            }
            catch (Exception)
            {

                txtDersAd.Text = "deneme";
            }

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBL_DERSLERTableAdapter dt = new DataSetTableAdapters.TBL_DERSLERTableAdapter();
        dt.DersGuncelle(txtDersAd.Text, Convert.ToInt32(txtDersId.Text));
        Response.Redirect("DersListesi.aspx");
    }
}