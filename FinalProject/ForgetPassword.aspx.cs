using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using.System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Net.Mail;
using MailMessage = System.Net.Mail.MailMessage;
using System.Net;
using System.Drawing;

namespace FinalProject
{
    public partial class ForgetPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButPassword_Click(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "SELECT email,password from members_tbl where email=@email";
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            sqlcomm.Parameters.AddWithValue("@email", TxtEmail.Text);
            sqlconn.Open();
            SqlDataReader sdr = sqlcomm.ExecuteReader();
            if (sdr.Read())
            {
                string full_name = sdr["email"].ToString();
                string password = sdr["password"].ToString();
                MailMessage mm = new MailMessage("klemohakmon@gmail.com", TxtEmail.Text);
                mm.Subject = " Your Password !";
                mm.Body = string.Format("Hello : <h1>{0}</hr> is your email <br/> your password is <h1>(1)</h1>", full_name, password);
                mm.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp,gmail.com";
                smtp.EnableSsl = true;
                NetworkCredential nc = new NetworkCredential();
                nc.UserName = "klemohakmon@gmail.com";
                nc.Password = "123";
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = nc;
                smtp.Port = 587;
                smtp.Send(mm);
                Labmsg.Text = "Your Password has been send to " + TxtEmail.Text;
                Labmsg.ForeColor = Color.Green;
            }
            else
            {
                Labmsg.Text = TxtEmail.Text = "This Email Is Not Exists In Our DataBase!";
                Labmsg.ForeColor = Color.Red;
            }
        }
    }
}