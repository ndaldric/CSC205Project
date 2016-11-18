using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class families_list : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnViewSampsons_Click(object sender, EventArgs e)
    {
        Response.Redirect("Sampsons_List.aspx");
    }

    protected void btnViewHendersons_Click(object sender, EventArgs e)
    {
        Response.Redirect("Hendersons_List.aspx");
    }

    protected void btnViewMatthews_Click(object sender, EventArgs e)
    {
        Response.Redirect("Matthews_List.aspx");
    }

    protected void btnViewTrumps_Click(object sender, EventArgs e)
    {
        Response.Redirect("Trumps_List.aspx");
    }
}