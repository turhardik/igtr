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
    public partial class ListPlacementDetails : System.Web.UI.Page
    {
        /// <summary>
        /// Page_S the load.
        /// </summary>
        /// <param name="sender">The sender.</param>
        /// <param name="e">The e.</param>
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (String.IsNullOrEmpty(Convert.ToString(Session["UserID"])))
            //{
            //    Response.Redirect("~/AdminLogin.aspx");
            //}

            if (!IsPostBack)
            {
                BindPlacementDetails();
            }
        }

        /// <summary>
        /// Binds the placement details.
        /// </summary>
        private void BindPlacementDetails()
        {
            // Fetch data from database
            DataTable dt = DBCommunication.SelectPlacementDetails();

            if (dt != null && dt.Rows.Count > 0)
            {
                rptPlacement.DataSource = dt;
                rptPlacement.DataBind();
            }
        }

        /// <summary>
        /// rpts the placement_ item command.
        /// </summary>
        /// <param name="source">The source.</param>
        /// <param name="e">The e.</param>
        protected void rptPlacement_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);

            if (e.CommandName == "DeleteRow")
            {
                DBCommunication.DeletePlacement(id);
                BindPlacementDetails();
            }
            else if (e.CommandName == "EditRow")
            {
                Response.Redirect("EditPlacement.aspx?ID=" + id);
            }
        }
    }
}