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
        private string global_filepath;

        protected void Page_Load(object sender, EventArgs e)
        {

            getUserData();
            UpdateData();
            getvlogData();
            getvlogvideos();

        }
        protected void UpdateData()
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("select * from vlog_upload where vlog_id ='" + TextBox1.Text.Trim() + "'", con);
                DataTable Dt = new DataTable();
                SqlDataAdapter Da = new SqlDataAdapter(cmd);
                Da.Fill(Dt);
                con.Close();
                GridView2.DataSource = Dt;
                GridView2.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            getVlogByID();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            updateVlogByID();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            deleteVlogByID();
        }

        void deleteVlogByID()
        {
            if (checkIfVlogExists())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("DELETE from vlog_upload where vlog_id ='" + TextBox1.Text.Trim() + "'", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    UpdateData();
                    Response.Write("<script>alert('Vlog Delete Succesfully');</script>");

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid Member ID');</script>");
            }
        }
        void updateVlogByID()
        {
            if (checkIfVlogExists())
            {
                try
                {
                    string categories = "";
                    foreach (int i in ListBox1.GetSelectedIndices())
                    {
                        categories = categories + ListBox1.Items[i] + ",";
                    }
                    categories = categories.Remove(categories.Length - 1);


                    string filepath = "/Vlog_inventory/vlog8.jpg";
                    string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);

                    if (filename == "" || filename == null)
                    {
                        filepath = global_filepath;
                    }
                    else
                    {
                        FileUpload1.SaveAs(Server.MapPath("Vlog_inventory/" + filename));
                        filepath = "/Vlog_inventory/" + filename;
                    }


                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("UPDATE vlog_upload set vlog_name=@vlog_name, language=@language, category=@category,vlog_description=@vlog_description, vlog_link=@vlog_link where vlog_id='" + TextBox1.Text.Trim() + "'", con);

                    cmd.Parameters.AddWithValue("@vlog_name", TextBox2.Text.Trim());
                    cmd.Parameters.AddWithValue("@language", DropDownList1.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@category", categories);
                    cmd.Parameters.AddWithValue("@vlog_description", TextBox5.Text.Trim());
                    cmd.Parameters.AddWithValue("@vlog_link", filepath + "");


                    cmd.ExecuteNonQuery();
                    con.Close();
                    UpdateData();
                    Response.Write("<script>alert('Vlog Updated successfully');</script>");
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid Vlog ID');</script>");
            }
        }

        void getVlogByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from vlog_upload WHERE vlog_id = '" + TextBox1.Text.Trim() + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox2.Text = dt.Rows[0]["vlog_name"].ToString();
                    TextBox3.Text = dt.Rows[0]["vlog_date_upload"].ToString();
                    TextBox5.Text = dt.Rows[0]["vlog_description"].ToString();
                    DropDownList1.SelectedValue = dt.Rows[0]["language"].ToString().Trim();


                    ListBox1.ClearSelection();
                    string[] category = dt.Rows[0]["category"].ToString().Trim().Split(',');
                    for (int i = 0; i < category.Length; i++) // check if the category is choose
                    {
                        for (int j = 0; j < ListBox1.Items.Count; j++)
                        {
                            if (ListBox1.Items[j].ToString() == category[i])
                            {
                                ListBox1.Items[j].Selected = true;
                            }
                        }
                    }
                    global_filepath = dt.Rows[0]["vlog_link"].ToString();

                  
                }
                else
                {
                    Response.Write("<script>alert('invalid Vlog ID');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
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
                SqlCommand cmd = new SqlCommand("SELECT * from vlog_upload where vlog_id ='" + TextBox1.Text.Trim() + "' OR vlog_name='" + TextBox2.Text.Trim() + "';", con);
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

        void getUserData()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from members_tbl", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                members_tbl.DataSource = dt;
                members_tbl.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }

        void getvlogData()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from vlog_upload",con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                vlog_upload.DataSource = dt;
                vlog_upload.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }

        void getvlogvideos()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from vlog_upload", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                GridView2.DataSource = dt;
                GridView2.DataBind();
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