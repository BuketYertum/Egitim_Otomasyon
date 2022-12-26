using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DuyuruGuncelle : System.Web.UI.Page
{
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false) 
        { 
            id = Convert.ToInt32(Request.QueryString["DUYURUID"].ToString());
            DataSetTableAdapters.TBL_DUYURULARTableAdapter dt = new DataSetTableAdapters.TBL_DUYURULARTableAdapter();
            
            txtDuyuruId.Text = id.ToString();
            txtDuyuruBaslik.Text = dt.DuyuruSec(id)[0].DUYURUBASLIK;
            TextArea1.Value = dt.DuyuruSec(id)[0].DUYURUICERIK;
           
        }

    }

 
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBL_DUYURULARTableAdapter dt = new DataSetTableAdapters.TBL_DUYURULARTableAdapter();
        dt.DuyuruGuncelle(txtDuyuruBaslik.Text, TextArea1.Value, Convert.ToInt32(txtDuyuruId.Text));
        Response.Redirect("DuyuruListesi.aspx");
    }
}