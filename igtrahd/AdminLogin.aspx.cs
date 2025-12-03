using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using NakshatraCeramics.DAL;

namespace igtrahd
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lbmsg.Visible = false;
                Session["UserID"] = string.Empty;
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string loginId = Convert.ToString(Request.Form["txtLoginId"]).Trim();
            string password = Convert.ToString(Request.Form["txtPassword"]).Trim();
            DataTable usr = DBCommunication.CheckAndGetLoginDetails(loginId, password);
            if (usr.Rows.Count != 0)
            {
                lbmsg.Visible = false;
                Session["UserID"] = Convert.ToString(usr.Rows[0]["UserId"]);
                Session["UserName"] = Convert.ToString(usr.Rows[0]["UserName"]);
                Session["ContactNumber"] = Convert.ToString(usr.Rows[0]["ContactNumber"]);
                Session["EmailAddress"] = Convert.ToString(usr.Rows[0]["EmailAddress"]);
                Response.Redirect("AdminPanel/Dashboard.aspx");
            }
            else
            {
                lbmsg.Visible = true;
                lbmsg.Text = "Please enter valid username or password";
            }
        }
    }
}