using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
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
            if (checkIfVlogExists())
            {
                Response.Write("<script>alert('Vlog Already Exist, try some other Vlog ID');</script>");
            }
            else
            {
                addNewVlog();
            }
            
        }
        // Update button click
        protected void Button3_Click(object sender, EventArgs e)
        {

        }
        // Delete button click
        protected void Button1_Click(object sender, EventArgs e)
        {

        }


        bool checkIfVlogExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from vlog_upload where vlog_id = '" + TextBox1.Text.Trim() + "' OR Vlog Name'" + TextBox2.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }


        //user definde functions       

        void addNewVlog()
        {
            try
            {
                string categories = ""; // this is for the Category to choose a fue categories
                foreach (int i in ListBox1.GetSelectedIndices())
                {
                    categories = categories + ListBox1.Items[i] + ",";
                }
                categories = categories.Remove(categories.Length - 1);

                string filepath = "/Vlog_inventory/vlog8.jpg";
                string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(Server.MapPath("Vlog_inventory/" + filename));
                filepath = "/Vlog_inventory/" + filename;

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO vlog_upload(vlog_id,vlog_name,language,vlog_date_upload,category,vlog_description,vlog_link) values (@vlog_id,@vlog_name,@language,@vlog_date_upload,@category,@vlog_description,@vlog_link)", con);
                cmd.Parameters.AddWithValue("@vlog_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@vlog_name", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@category", categories);
                cmd.Parameters.AddWithValue("@language", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@vlog_date_upload", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@vlog_description", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@vlog_link",filepath);
                cmd.ExecuteNonQuery(); 
                con.Close();
                Response.Write("<script>alert('Vlog added successfully.');</script>");
                GridView1.DataBind();
            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}