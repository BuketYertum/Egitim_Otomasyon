using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DuyuruEkle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        { 
            DataSetTableAdapters.TBL_OGRETMENTableAdapter dt = new DataSetTableAdapters.TBL_OGRETMENTableAdapter();
            DropDownList1.DataSource = dt.OgretmenListesi();
            DropDownList1.DataTextField = "OGRTADSOYAD"; //KULLANICIYA GÖZÜKEN.
            DropDownList1.DataValueField = "OGRTID"; //ARKA PLANDA TUTACAGI DEGER.
            DropDownList1.DataBind();
        }
    }

    

    protected void Button1_Click1(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBL_DUYURULARTableAdapter dt = new DataSetTableAdapters.TBL_DUYURULARTableAdapter();
        dt.DuyuruEkle(txtDuyuruBaslik.Text, TextArea1.Value.ToString(), Convert.ToInt32(DropDownList1.SelectedValue));
        Response.Redirect("DuyuruListesi.aspx");
    }
}