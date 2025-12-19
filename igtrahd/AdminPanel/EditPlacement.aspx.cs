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
    public partial class EditPlacement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["ID"] == null)
                {
                    Response.Redirect("PlacementList.aspx");
                }

                int id = Convert.ToInt32(Request.QueryString["ID"]);
                LoadPlacementData(id);
            }
        }

        private void LoadPlacementData(int id)
        {
            DataTable dt = DBCommunication.SelectPlacementByID(id);

            if (dt.Rows.Count > 0)
            {
                txtName.Text = dt.Rows[0]["Name"].ToString();
                txtContact.Text = dt.Rows[0]["ContactNo"].ToString();
                txtEmail.Text = dt.Rows[0]["Email"].ToString();
                chkIsActive.Checked = Convert.ToBoolean(dt.Rows[0]["IsActive"]);
            }
            else
            {
                lblMessage.Text = "Record not found!";
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["ID"]);
            string name = txtName.Text.Trim();
            string contact = txtContact.Text.Trim();
            string email = txtEmail.Text.Trim();
            bool isActive = chkIsActive.Checked;

            int result = DBCommunication.UpdatePlacementDetails(id, name, contact, email, isActive);

            if (result > 0)
            {
                Response.Redirect("ListPlacementDetails.aspx");
            }
            else
            {
                lblMessage.Text = "Error updating details!";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}