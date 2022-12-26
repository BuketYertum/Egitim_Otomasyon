using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class LoginPage : System.Web.UI.Page
{

    SqlConnection bgl = new SqlConnection(@"Data Source=.;Initial Catalog=DboEgitim;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        bgl.Open();
        SqlCommand komut = new SqlCommand("Select *From TBL_OGRENCI where OGRNUMARA=@P1 and OGRSIFRE=@P2", bgl);
        komut.Parameters.AddWithValue("@p1", txtkullanici.Text);
        komut.Parameters.AddWithValue("@p2", txtsifre.Text);
        SqlDataReader dr = komut.ExecuteReader();
        if (dr.Read())
        {
            Session.Add("OGRNUMARA", txtkullanici.Text); //LOGİNDEKİ KULLANICI ADINI OTURUM DEĞERİ OLARAK EKLEDİM.
            Response.Redirect("DefaultOgrenci.aspx");
        }
        else 
        {
            txtsifre.Text=("Hatalı şifre !");
        }
        bgl.Close();
        
    }



    protected void Button5_Click1(object sender, EventArgs e)
    {
        bgl.Open();
        SqlCommand komut = new SqlCommand("Select *From TBL_OGRETMEN where OGRTNUMARA=@P1 and OGRTSIFRE=@P2", bgl);
        komut.Parameters.AddWithValue("@p1", txtkullanici.Text);
        komut.Parameters.AddWithValue("@p2", txtsifre.Text);
        SqlDataReader dr = komut.ExecuteReader();
        if (dr.Read())
        {
            Session.Add("OGRTNUMARA", txtkullanici.Text); //LOGİNDEKİ KULLANICI ADINI OTURUM DEĞERİ OLARAK EKLEDİM.
            Response.Redirect("Default.aspx");
        }
        else
        {
            txtsifre.Text = ("Hatalı şifre !");
        }
        bgl.Close();
    }




    protected void Button3_Click(object sender, EventArgs e)
    {
        txtkullanici.Text = "";
        txtsifre.Text = "";
    }

    protected void Button2_Click(object sender, EventArgs e)
    {

    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        
    }

  
}