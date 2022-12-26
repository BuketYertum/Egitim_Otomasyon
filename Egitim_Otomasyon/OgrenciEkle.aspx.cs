using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class OgrenciEkle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBL_OGRENCITableAdapter dt = new DataSetTableAdapters.TBL_OGRENCITableAdapter();
        dt.OgrenciEkle(txtOgrAd.Text, txtOgrSoyad.Text, txtOgrTelefon.Text, txtOgrMail.Text, txtOgrSifre.Text, txtOgrFotograf.Text);
        Response.Redirect("Default.aspx");//yönlendir.
    }
}