using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class Welcome : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"] == null)
                {
                    LinkButton1.Visible = true; // user login link button
                    LinkButton2.Visible = true; // sign up link button

                    LinkButton3.Visible = false; // logout link button
                    LinkButton7.Visible = false; // hello user link button

                    LinkButton5.Visible = false; // user vlog list link button
                    LinkButton6.Visible = true; // admin login link button


                    LinkButton12.Visible = false; // Movie inventory link button
                    LinkButton11.Visible = false; // Admin Member Managment link button

                }
                else if (Session["role"].Equals("Member"))
                {
                    LinkButton1.Visible = false; // user login link button
                    LinkButton2.Visible = false; // sign up link button
                    LinkButton3.Visible = true; // logout link button
                    LinkButton7.Visible = true; // hello user link button
                    LinkButton7.Text = "Hello" + Session["full_name"].ToString();

                    LinkButton6.Visible = false; // admin login link button
                    LinkButton5.Visible = true; // user vlog list link button

                    LinkButton12.Visible = false; // Movie inventory link button
                    LinkButton11.Visible = false; // Admin Member Managment link button
                }
                else if(Session["role"].Equals("Admin"))
                {
                    LinkButton1.Visible = false; // user login link button
                    LinkButton2.Visible = false; // sign up link button

                    LinkButton3.Visible = true; // logout link button
                    LinkButton5.Visible = false; // user vlog list link button
                    LinkButton7.Visible = true; // hello user link button
                    LinkButton7.Text = "Hello Admin";

                    LinkButton6.Visible = false; // admin login link button


                    LinkButton12.Visible = true; // Movie inventory link button
                    LinkButton11.Visible = false; // Admin Member Managment link button
                }



            }
            catch (Exception)
            {
              
            }

        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminLogin.aspx");
        }
        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserVlogList.aspx");
        }
        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminVlogLIst.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminMemberManagment.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserLogin.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
                Response.Redirect("UserSignUp.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewVlogs.aspx");
        }

        // Logout button
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["User_id"] = "";
            Session["fullname"] = "";
            Session["role"] = "";


            LinkButton1.Visible = true; // user login link button
            LinkButton2.Visible = true; // sign up link button

            LinkButton3.Visible = false; // logout link button
            LinkButton7.Visible = false; // hello user link button

            LinkButton6.Visible = true; // admin login link button


            LinkButton12.Visible = false; // Movie inventory link button
            LinkButton11.Visible = false; // Admin Member Managment link button
            Response.Redirect("HomePage.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
           
            if(Session["role"].Equals("Admin"))
            {
                Response.Redirect("AdminMemberManagment.aspx");
            }
            else
            {
                Response.Redirect("HomePage.aspx");
               // Response.Redirect("AdminVlogList.aspx");
            }
        }
    }
 }
