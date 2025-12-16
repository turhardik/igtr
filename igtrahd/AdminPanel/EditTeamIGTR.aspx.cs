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
    public partial class EditTeamIGTR : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack && Request.QueryString["id"] != null)
            {
                int id = Convert.ToInt32(Request.QueryString["id"]);
                hfID.Value = id.ToString();

                DataTable dt = DBCommunication.SelectTeamIGTRByID(id);
                if (dt.Rows.Count > 0)
                {
                    DataRow dr = dt.Rows[0];
                    txtName.Text = dr["Name"].ToString();
                    txtDesignation.Text = dr["Designation"].ToString();
                    txtAddress.Text = dr["Address"].ToString();
                    txtPhone.Text = dr["Phone"].ToString();
                    txtEmail.Text = dr["Email"].ToString();
                    chkActive.Checked = Convert.ToBoolean(dr["IsActive"]);
                }
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string photo = "";
            if (fuPhoto.HasFile)
            {
                photo = "~/Uploads/" + fuPhoto.FileName;
                fuPhoto.SaveAs(Server.MapPath(photo));
            }

            DBCommunication.InsertUpdateTeamIGTR(
                string.IsNullOrEmpty(hfID.Value) ? 0 : Convert.ToInt32(hfID.Value),
                txtName.Text,
                txtDesignation.Text,
                txtAddress.Text,
                txtPhone.Text,
                txtEmail.Text,
                photo,
                chkActive.Checked
            );

            Response.Redirect("ListTeamIGTR.aspx");
        }

    }
}