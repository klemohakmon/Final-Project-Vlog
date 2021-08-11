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
    public partial class Sign_Up : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        // sign up button click event
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkMemberExsists())
            {
                Response.Write("<script>alert('Member Already  Exist with this Member ID, Pls try other ID ');</script>");

            }
            else
            {
                signUpNewMember();
            }
            
        }



        //user defined method
        bool checkMemberExsists() 
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from Users where User_id = '" + TextBox8.Text.Trim() +"';", con);
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


        void signUpNewMember()
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
                "Full_Adrress,E_Mail,Password,Member_id) values" +
                "(@Full_Name,@Phone_Number,@State,@City,@Zip_Code,@Birth_Date," +
                "@Full_Adrress,@E_Mail,@Password,@Member_id) ", con);

                cmd.Parameters.AddWithValue("@Full_Name", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@Phone_Number", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@State", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@City", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@Zip_Code", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@Birth_Date", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@Full_Adrress", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@E_Mail", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@Password", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@Member_id", TextBox8.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Sign Up Successful. Go to User Login To Login');</script>");



            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }
    }
}