using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OgrenciSil : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt32( Request.QueryString["OGRID"].ToString());  /*id yi bu sayfaya taşıyoruz*/

        DataSetTableAdapters.TBL_OGRENCITableAdapter dt = new DataSetTableAdapters.TBL_OGRENCITableAdapter();
        dt.OgrenciSil(id);
        Response.Redirect("Default.aspx"); /*bizi default sayfasına yönlendiricek*/
    }
}