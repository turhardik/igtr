using NakshatraCeramics.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace igtrahd.AdminPanel
{
    public partial class EditRecruiter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["ID"] != null)
                {
                    int id = Convert.ToInt32(Request.QueryString["ID"]);
                    LoadRecruiter(id);
                }
            }
        }

        /// <summary>
        /// Loads the recruiter.
        /// </summary>
        /// <param name="id">The id.</param>
        private void LoadRecruiter(int id)
        {
            DataTable dt = DBCommunication.GetRecruiterByID(id);

            if (dt.Rows.Count > 0)
            {
                txtRecruiterName.Text = dt.Rows[0]["RecruiterName"].ToString();
                chkIsActive.Checked = Convert.ToBoolean(dt.Rows[0]["IsActive"]);
            }
            else
            {
                Response.Redirect("RecruiterList.aspx");
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["ID"] != null)
            {
                int id = Convert.ToInt32(Request.QueryString["ID"]);
                string recruiterName = txtRecruiterName.Text.Trim();
                bool isActive = chkIsActive.Checked;

                DBCommunication.InsertUpdateRecruiter(id, recruiterName, isActive);

                Response.Redirect("RecruiterList.aspx");
            }
        }
    }
}