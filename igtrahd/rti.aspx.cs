using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using NakshatraCeramics.DAL;

namespace igtrahd
{
    public partial class rti : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindRTIRepeater();
            }
        }

        private void BindRTIRepeater()
        {
            DataTable dt = DBCommunication.SelectActiveRTI();

            // Create Link column if it doesn't exist
            if (!dt.Columns.Contains("Link"))
                dt.Columns.Add("Link");

            foreach (DataRow row in dt.Rows)
            {
                string external = row["ExternalLink"].ToString();
                string file = row["FileName"].ToString();

                // Priority 1: ExternalLink
                if (!string.IsNullOrEmpty(external))
                {
                    row["Link"] = external;
                }
                // Priority 2: FileName (stored PDF)
                else if (!string.IsNullOrEmpty(file))
                {
                    row["Link"] = "/Uploads/RTI/" + file;  // adjust your path here
                }
                else
                {
                    row["Link"] = "#";  // fallback
                }
            }

            rptRTI.DataSource = dt;
            rptRTI.DataBind();
        }


        protected void rptRTI_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                DataRowView row = (DataRowView)e.Item.DataItem;

                HyperLink hl = (HyperLink)e.Item.FindControl("hlRTI");
                string link = row["Link"].ToString();

                hl.NavigateUrl = link;
                hl.Target = "_blank";

                string ext = System.IO.Path.GetExtension(link).ToLower();

                switch (ext)
                {
                    case ".pdf":
                        hl.Text = "View";
                        break;
                    case ".doc":
                    case ".docx":
                        hl.Text = "View";
                        break;
                    case ".xls":
                    case ".xlsx":
                        hl.Text = "View";
                        break;
                    case ".png":
                    case ".jpg":
                    case ".jpeg":
                        hl.Text = "View";
                        break;
                    default:
                        hl.Text = "View";
                        break;
                }
            }
        }


    }
}