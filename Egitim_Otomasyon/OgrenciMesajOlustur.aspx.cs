using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OgrenciMesajOlustur : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtGonderen.Text = Session["OGRNUMARA"].ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBL_MESAJLARTableAdapter dt = new DataSetTableAdapters.TBL_MESAJLARTableAdapter();
        dt.MesajGonder(txtGonderen.Text, txtAlıcı.Text,txtMesajBaslik.Text, txtMesajIcerik.Value.ToString());
        Response.Redirect("OgrenciGidenMesaj.aspx");
    }
}