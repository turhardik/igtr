using NakshatraCeramics.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace igtrahd.AdminPanel
{
    /// <summary>
    /// The recruiter list.
    /// </summary>
    public partial class RecruiterList : System.Web.UI.Page
    {
        /// <summary>
        /// Page_S the load.
        /// </summary>
        /// <param name="sender">The sender.</param>
        /// <param name="e">The e.</param>
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                BindGrid();
        }

        void BindGrid()
        {
            gvRecruiters.DataSource = DBCommunication.GetRecruiters();
            gvRecruiters.DataBind();
        }

        /// <summary>
        /// gvs the recruiters_ row command.
        /// </summary>
        /// <param name="sender">The sender.</param>
        /// <param name="e">The e.</param>
        protected void gvRecruiters_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);

            if (e.CommandName == "edit")
            {
                Response.Redirect("EditRecruiter.aspx?ID=" + id);
            }
            else if (e.CommandName == "delete")
            {
                DBCommunication.DeleteRecruiter(id);
                BindGrid();
            }
        }

    }
}