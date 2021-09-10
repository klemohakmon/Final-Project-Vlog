using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class AdminVlogLIst : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }
          // go button click
        protected void LinkButton4_Click(object sender, EventArgs e)
        {

        }
        // Add button click
        protected void Button2_Click(object sender, EventArgs e)
        {
            addNewVlog();
        }
        // Update button click
        protected void Button3_Click(object sender, EventArgs e)
        {

        }
        // Delete button click
        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        //user definde functions       

        void addNewVlog()
        {
            try
            {
                string genres = ""; // this is for the Category
                foreach (int i in ListBox1.GetSelectedIndices())
                {
                    genres = genres + ListBox1.Items[i] + ",";
                }
                genres = genres.Remove(genres.Length - 1);

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO vlog_upload(vlog_id,vlog_name,language,vlog_date_upload,category,vlog_description,vlog_link) values (@vlog_id,@vlog_name,@language,@vlog_date_upload,@category,@vlog_description,@vlog_link)", con);
                cmd.Parameters.AddWithValue("@vlog_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@vlog_name", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@language", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@vlog_date_upload", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@category", ListBox1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@vlog_description", TextBox5.Text.Trim());
                

            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        
    }
}