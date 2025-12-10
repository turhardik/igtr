using NakshatraCeramics.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace igtrahd
{
    public partial class placement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindPlacementOfficer();
                BindRecruiters();
            }
        }

        private void BindPlacementOfficer()
        {
            DataTable dt = DBCommunication.SelectPlacementDetails();
            rptPlacement.DataSource = dt;
            rptPlacement.DataBind();
        }

        private void BindRecruiters()
        {
            DataTable dt = DBCommunication.GetRecruiters(); // Example: returns 6 rows

            // Create a table to store pairs
            DataTable dtPairs = new DataTable();
            dtPairs.Columns.Add("LeftCompany");
            dtPairs.Columns.Add("RightCompany");

            // Loop through the recruiters 2 at a time
            for (int i = 0; i < dt.Rows.Count; i += 2)
            {
                DataRow row = dtPairs.NewRow();

                // LEFT COLUMN
                row["LeftCompany"] = dt.Rows[i]["RecruiterName"].ToString();

                // RIGHT COLUMN (only if exists)
                if (i + 1 < dt.Rows.Count)
                    row["RightCompany"] = dt.Rows[i + 1]["RecruiterName"].ToString();
                else
                    row["RightCompany"] = ""; // for odd number of records

                dtPairs.Rows.Add(row);
            }

            rptRecruiters.DataSource = dtPairs;
            rptRecruiters.DataBind();
        }


    }
}