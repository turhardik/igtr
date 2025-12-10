using NakshatraCeramics.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace igtrahd.AdminPanel
{
    public partial class AddRecruiter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        /// <summary>
        /// btns the save_ click.
        /// </summary>
        /// <param name="sender">The sender.</param>
        /// <param name="e">The e.</param>
        protected void btnSave_Click(object sender, EventArgs e)
        {
            DBCommunication.InsertUpdateRecruiter(0, txtRecruiterName.Text, chkIsActive.Checked);
            Response.Redirect("RecruiterList.aspx");
        }

    }
}