using System;
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
    public partial class UserLogin : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
         // user login
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from members_tbl where member_id = '" + TextBox1.Text.Trim() + "' AND password ='" +TextBox2.Text.Trim() +"'", con); 
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                      
                    Session["User_id"] = dr["User_id"].ToString();
                    Session["full_name"] = dr["full_name"].ToString();
                    Session["role"] = "Member";
                    Response.Write("<script>alert('Login Successful');window.location='HomePage.aspx';</Script>");
                 
                    Response.Redirect("UserProfile.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid credentials');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }     
        }
    }
}