using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NotGuncelle : System.Web.UI.Page
{

    int nid;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {

       
        nid = Convert.ToInt32(Request.QueryString["NOTID"].ToString());

        DataSetTableAdapters.OgrNotlarTableAdapter dt = new DataSetTableAdapters.OgrNotlarTableAdapter();
        txtOgrId.Text = dt.NotGetir2(nid)[0].OGRENCIID.ToString();
        txtOgrAdSoyad.Text = dt.NotGetir2(nid)[0].OGRENCIADSOYAD.ToString();
        txtDersAd.Text = dt.NotGetir2(nid)[0].DERSAD.ToString();
        txtSınav1.Text = dt.NotGetir2(nid)[0].SINAV1.ToString();
        txtSınav2.Text = dt.NotGetir2(nid)[0].SINAV2.ToString();
        txtSınav3.Text = dt.NotGetir2(nid)[0].SINAV3.ToString();
        txtOrtalama.Text = dt.NotGetir2(nid)[0].ORTALAMA.ToString();
        txtDurum.Text = dt.NotGetir2(nid)[0].DURUM.ToString();
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        double sınav1, sınav2, sınav3;
        double ort;
        sınav1 = Convert.ToInt32(txtSınav1.Text);
        sınav2 = Convert.ToInt32(txtSınav2.Text);
        sınav3 = Convert.ToInt32(txtSınav3.Text);
        ort = (sınav1 + sınav2 + sınav3) / 3;
        txtOrtalama.Text = ort.ToString("0.00");//virgülden sonra iki basamağı almak için 0.00
        if (ort >= 50)
        {
            txtDurum.Text = "True";
        }
        else
        {
            txtDurum.Text = "False";
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        nid = Convert.ToInt32(Request.QueryString["NOTID"].ToString());
        DataSetTableAdapters.OgrNotlarTableAdapter dt = new DataSetTableAdapters.OgrNotlarTableAdapter();
        dt.NotGuncelle(byte.Parse(txtSınav1.Text), byte.Parse(txtSınav2.Text), byte.Parse(txtSınav3.Text), decimal.Parse(txtOrtalama.Text),bool.Parse(txtDurum.Text), nid);
        Response.Redirect("NotListesi.aspx");
    }
}