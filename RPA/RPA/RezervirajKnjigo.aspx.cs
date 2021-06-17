using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

public partial class RezervirajKnjigo : Page
{
    public string connectionString = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;

    protected void Page_PreInit(object sender, EventArgs e)
    {
        //Session.RemoveAll();
        if (Session["USER_ADMIN"] != null)
        {
            Page.MasterPageFile = "/Administrator.master";

        }
        else if (Session["USER_ID"] != null)
        {
            Page.MasterPageFile = "/Uporabnik.master";
        }

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }


    protected void GridView1_RezervirajKnjigo(object sender, EventArgs e)
    {

        string IDuporabnika = Session["USER_ID"].ToString();
        string uporabniskoIme = Session["USER_NAME"].ToString();
        string IDknjige = GridView1.SelectedRow.Cells[1].Text;
        string naslovKnjige = GridView1.SelectedRow.Cells[2].Text;
        string pisateljKnjige = GridView1.SelectedRow.Cells[3].Text;


        string query = "INSERT INTO RezervacijeKnjig VALUES(@Uporabnik_ID, @Uporabnisko_ime, @Knjiga_ID, @Naslov_knjige, @Pisatelj_knjige)";

        using (SqlConnection conn = new SqlConnection(connectionString))
        {
            using (SqlCommand cmd = new SqlCommand(query))
            {
                cmd.Parameters.AddWithValue("@Uporabnik_ID", IDuporabnika);
                cmd.Parameters.AddWithValue("@Uporabnisko_ime", uporabniskoIme);
                cmd.Parameters.AddWithValue("@Knjiga_ID", IDknjige);
                cmd.Parameters.AddWithValue("@Naslov_knjige", naslovKnjige);
                cmd.Parameters.AddWithValue("@Pisatelj_knjige", pisateljKnjige);

                cmd.Connection = conn;
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
            }
        }
        Knjige.DataBind();
        Response.Redirect(Request.RawUrl, true);
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        Knjige.DataBind();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtbosNaslov.Text = GridView1.SelectedRow.Cells[2].Text;
        txtboxPisatelj.Text = GridView1.SelectedRow.Cells[3].Text;
        txtboxLetoIzdaje.Text = GridView1.SelectedRow.Cells[4].Text;
        txtboxNaVoljo.Text = GridView1.SelectedRow.Cells[5].Text;

    }
}