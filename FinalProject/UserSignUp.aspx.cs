﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class Sign_Up : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        // sign up button click event
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO Users " +
                "(Full_Name,Phone_Number,State,City,Zip_Code,Birth_Date," +
                "Full_Adrress,E_Mail,Password) values" +
                "(@Full_Name,@Phone_Number,@State,@City,@Zip_Code,@Birth_Date," +
                "@Full_Adrress,@E_Mail,@Password) ", con);

                cmd.Parameters.AddWithValue("@Full_Name",TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@Phone_Number",TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@State", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@City",TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@Zip_Code",TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@Birth_Date", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@Full_Adrress",TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@E_Mail",TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@Password",TextBox9.Text.Trim());

                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {

                throw;
            }
        }
    }
}