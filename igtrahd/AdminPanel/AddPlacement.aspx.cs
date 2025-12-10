using igtrahd.DAL;
using NakshatraCeramics.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace igtrahd.AdminPanel
{
    public partial class AddPlacement : System.Web.UI.Page
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
            int newID = 0; // For insert, ID = 0

            string name = txtName.Text.Trim();
            string contact = txtContact.Text.Trim();
            string email = txtEmail.Text.Trim();
            //  bool isActive = chkIsActive.Checked;
            bool isActive = true;

            // Call the DAL function
            int resultID = DBCommunication.InsertPlacementDetails(newID, name, contact, email, isActive);

            if (resultID > 0)
            {
                Response.Redirect("PlacementList.aspx");
            }
            else
            {
                lblMessage.Text = "Error while saving details!";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}