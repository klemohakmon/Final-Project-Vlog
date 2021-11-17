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
            GridView1.DataBind();
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

                SqlCommand cmd = new SqlCommand("select * from vlog_upload where  User_id=" + Session["User_id"], con);
                DataTable Dt = new DataTable();
                SqlDataAdapter Da = new SqlDataAdapter(cmd);
                Da.Fill(Dt);
                con.Close();
                GridView1.DataSource = Dt;
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }

        // go button click
        protected void Button4_Click(object sender, EventArgs e)
        {
            getVlogByID();
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
            updateVlogByID();
           // UpdateData();
        }
        // Delete button click
        protected void Button1_Click(object sender, EventArgs e)
        {
            deleteVlogByID();
        }

        //user definde functions

        
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
                    SqlCommand cmd = new SqlCommand("UPDATE vlog_upload set vlog_name=@vlog_name, language=@language, category=@category,vlog_description=@vlog_description, vlog_link=@vlog_link where vlog_id=" + TextBox1.Text.Trim() + " and  User_id=" + Session["User_id"], con);

                    cmd.Parameters.AddWithValue("@vlog_name", TextBox2.Text.Trim());
                    cmd.Parameters.AddWithValue("@language", DropDownList1.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@category", categories);
                    cmd.Parameters.AddWithValue("@vlog_description", TextBox5.Text.Trim());
                    cmd.Parameters.AddWithValue("@vlog_link", filepath+"");


                    cmd.ExecuteNonQuery();
                    con.Close();                   
                   // UpdateData();                  
                   // GridView1.DataBind();
                    //Response.Write("<script>alert('Vlog Updated successfully');</script>");
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
                    Response.Write("<script>alert('Vlog Delete Succesfully');</script>");
                    GridView1.DataBind();
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

        void getVlogByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from vlog_upload WHERE vlog_id ='" + TextBox1.Text.Trim() + "';", con);
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

                SqlCommand cmd = new SqlCommand("INSERT INTO vlog_upload(vlog_id,vlog_name,language,vlog_date_upload,category,vlog_description,vlog_link,User_id) values (@vlog_id,@vlog_name,@language,@vlog_date_upload,@category,@vlog_description,@vlog_link,@User_id)", con);
                cmd.Parameters.AddWithValue("@vlog_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@vlog_name", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@category", categories);
                cmd.Parameters.AddWithValue("@language", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@vlog_date_upload", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@vlog_description", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@vlog_link", filepath);
                cmd.Parameters.AddWithValue("@vUser_id",Session["User_id"].ToString().Trim());
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