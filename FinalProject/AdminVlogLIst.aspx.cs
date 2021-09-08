using System;
using System.Collections.Generic;
using System.Configuration;
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

        }
    }
}