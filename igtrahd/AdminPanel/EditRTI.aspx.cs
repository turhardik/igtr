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
    public partial class EditRTI : System.Web.UI.Page
    {
        string FileName = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["ID"] != null)
                {
                    lblTitle.Text = "Edit RTI";
                    LoadData(Convert.ToInt32(Request.QueryString["ID"]));
                }
            }
        }

        private void LoadData(int ID)
        {
            DataTable dt = DBCommunication.SelectRTIByID(ID);

            if (dt.Rows.Count > 0)
            {
                txtTitle.Text = dt.Rows[0]["Title"].ToString();
                txtLink.Text = dt.Rows[0]["ExternalLink"].ToString();
                chkIsActive.Checked = Convert.ToBoolean(dt.Rows[0]["IsActive"]);
                ViewState["FileName"] = dt.Rows[0]["FileName"].ToString();
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            int ID = Request.QueryString["ID"] == null ? 0 :
                     Convert.ToInt32(Request.QueryString["ID"]);

            string Title = txtTitle.Text.Trim();
            string Link = txtLink.Text.Trim();
            bool IsActive = chkIsActive.Checked;

            // Handle File Upload
            if (fuPDF.HasFile)
            {
                FileName = DateTime.Now.Ticks + "_" + fuPDF.FileName;
                fuPDF.SaveAs(Server.MapPath("~/RTI/" + FileName));
            }
            else
            {
                FileName = Convert.ToString(ViewState["FileName"]);
            }

            DBCommunication.InsertUpdateRTI(ID, Title, FileName, Link, IsActive);

            Response.Redirect("RTIList.aspx");
        }

    }
}