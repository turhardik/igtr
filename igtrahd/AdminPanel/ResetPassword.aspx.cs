using NakshatraCeramics.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lalaland.AdminPanel
{
    public partial class ResetPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(Convert.ToString(System.Web.HttpContext.Current.Session["UserID"])))
            {
                System.Web.HttpContext.Current.Response.Redirect("~/AdminLogin.aspx");
            }
          
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (txtNewPwd.Text == txtreNewPwd.Text)
            {
                DBCommunication.UpdatePassword(Convert.ToString(txtNewPwd.Text), Convert.ToInt32(Session["UserID"]));
                lbMsg.Text = "Password has been reset sucessfully";
            }
            else {
                lbMsg.Text = "Password Mismatch";
            }
        }
    }
}