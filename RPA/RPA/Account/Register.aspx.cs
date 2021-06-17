﻿using Microsoft.AspNet.Identity;
using System;
using System.Linq;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Account_Register : Page
{
    public string connectionString = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;

    protected void CreateUser_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand("SELECT ID FROM RegistriraniUserji WHERE UporabniskoIme = @UporabniskoIme", con);
        cmd.Parameters.AddWithValue("@UporabniskoIme", this.UserName.Text);
        con.Open();

        var result = cmd.ExecuteScalar();

        //Skalarno preverjanje ali uporabnik z tem imenom ze obstaja!
        if (result != null)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Validacija", "<script language='javascript'>alert('Uporabnik z tem imenom že obstaja!')</script>");

        }
        else
        {
            try
            {
                if (UserName.Text == "Admin")
                {
                    ClientScript.RegisterStartupScript(Page.GetType(), "Validacija", "<script language='javascript'>alert('Nedovoljeno uporabniško ime!')</script>");
                }
                else
                {
                    SqlConnection conn = new SqlConnection(connectionString);
                    conn.Open();
                    string insertQuery = "INSERT INTO RegistriraniUserji(UporabniskoIme,Geslo,Spol,Enaslov) VALUES (@UporabniskoIme,@Geslo,@Spol,@Enaslov)";
                    SqlCommand cmdd = new SqlCommand(insertQuery, conn);
                    cmdd.Parameters.AddWithValue("@UporabniskoIme", UserName.Text);
                    cmdd.Parameters.AddWithValue("@Geslo", Password.Text);
                    cmdd.Parameters.AddWithValue("@Spol", Gender.Text);
                    cmdd.Parameters.AddWithValue("@Enaslov", Email.Text);
                    cmdd.ExecuteNonQuery();

                    ClientScript.RegisterStartupScript(Page.GetType(), "Validacija", "<script language='javascript'>alert('Uspešno ste registrirali uporabnika!')</script>");



                    conn.Close();
                }
            }
            catch (Exception ex)
            {
                Response.Write("Napaka. " + ex.ToString());
            }
        }
    }
}