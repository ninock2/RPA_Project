    using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class MojeRezervacije : System.Web.UI.Page
{
    protected void Page_PreInit(object sender, EventArgs e)
    {
        if (Session["USER_ADMIN"] != null)
        {
            Page.MasterPageFile = "/Administrator.master";

        }
        else if (Session["USER_ID"] != null)
        {
            Page.MasterPageFile = "/Uporabnik.master";
        }

    }

    public string connectionString = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string Uporabnik_ID = Session["USER_ID"].ToString();
            string qSelect = "SELECT * FROM RezervacijeKnjig WHERE Uporabnik_ID =" + Uporabnik_ID;

            RezervacijeKnjig.SelectCommand = qSelect;
            GridView1.DataSource = RezervacijeKnjig;
            GridView1.DataBind();
        }


    }
}