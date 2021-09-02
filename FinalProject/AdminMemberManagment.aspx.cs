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
    public partial class AdminMemberManagment : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }
        // go button member id 
        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            getMemberByID();
        }

        // user defind function
        void getMemberByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from members_tbl where member_id = '" + TextBox1.Text.Trim() + "'", con); ;
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        TextBox2.Text = dr.GetValue(0).ToString();
                        TextBox8.Text = dr.GetValue(1).ToString();
                        TextBox3.Text = dr.GetValue(2).ToString();
                        TextBox4.Text = dr.GetValue(3).ToString();
                        TextBox6.Text = dr.GetValue(4).ToString();
                        TextBox9.Text = dr.GetValue(5).ToString();
                        TextBox7.Text = dr.GetValue(6).ToString();
                        TextBox5.Text = dr.GetValue(7).ToString();

                    }

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
        // Delete user Account
        protected void Button1_Click(object sender, EventArgs e)
        {
            DeleteMemberAccount();
        }

        void DeleteMemberAccount()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("DELETE from members_tbl where member_id =" + TextBox1.Text.Trim() + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('User Account Delete Succesfully');</script>");
                clearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {


                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        void clearForm()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox8.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox6.Text = "";
            TextBox9.Text = "";
            TextBox7.Text = "";
            TextBox5.Text = "";
        }
    }
}