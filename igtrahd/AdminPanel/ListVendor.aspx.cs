using NakshatraCeramics.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminPanel
{
    public partial class ListVendor : System.Web.UI.Page
    {
        #region Style Constants
        private const string BODY_WITH_BORDER = "font-family:\"Trebuchet MS\", sans-serif;border:solid 0.5pt;";
        private const string BOLD = "font-weight:bold;";
        private const string REPORT_HEADER = "font-weight:bold; text-align:right;background:#99CCFF;";
        private const string REPORT_HEADER_LEFT = "font-weight:bold; text-align:left;background:#99CCFF;";
        private const string REPORT_HEADER_CENTER = "font-weight:bold; text-align:middle;background:#99CCFF;";
        private const string REPORT_RECRUITER_HEADER_LEFT = "font-weight:bold; text-align:left;background: silver;font-size: 13px; border-right: solid 0pt;";
        private const string REPORT_CELL = "text-align:right;vertical-align:top;";
        private const string REPORT_CELL_LEFT = "text-align:left;vertical-align:top;";
        private const string GREEN_TEXT = "color:Green;";
        private const string BLUE_TEXT = "color:Blue;";
        private const string RED_TEXT = "color:Red;";
        #endregion
        protected void Page_Load(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(Convert.ToString(System.Web.HttpContext.Current.Session["UserID"])))
            {
                System.Web.HttpContext.Current.Response.Redirect("~/AdminLogin.aspx");
            }
            if (!IsPostBack)
            {
                GetData();
            }
        }

        private void GetData()
        {
            DataTable dt = DBCommunication.SelectVandor();
            if (dt.Rows.Count != 0)
            {
                rptVendor.DataSource = dt;
                rptVendor.DataBind();
            }
            else
            {

                string abcc = "No Records Found";

            }

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            DataTable dt = DBCommunication.SelectVandor();
            if (dt != null)
            {
                if (dt.Rows.Count != 0)
                {
                    DataView dv = dt.DefaultView;
                    //apply the sort on CustomerSurname column
                    dv.Sort = "InsertDate desc";
                    //save our newly ordered results back into our datatable
                    dt = dv.ToTable();

                    StringBuilder htmlReportBuilder = new StringBuilder();
                    htmlReportBuilder.Append("<html><body style='" + BODY_WITH_BORDER + "'>");
                    htmlReportBuilder.Append("<table>");

                    htmlReportBuilder.Append("<tr>");
                    htmlReportBuilder.Append("<td style='" + REPORT_HEADER_LEFT + "'>#</td>");
                    htmlReportBuilder.Append("<td style='" + REPORT_HEADER_LEFT + "'> Vendor Name</td>");
                    htmlReportBuilder.Append("<td style='" + REPORT_HEADER_LEFT + "'>Address</td>");
                    htmlReportBuilder.Append("<td style='" + REPORT_HEADER_LEFT + "'>Phone</td>");
                    htmlReportBuilder.Append("<td style='" + REPORT_HEADER_LEFT + "'>Email</td>");
                    htmlReportBuilder.Append("<td style='" + REPORT_HEADER_LEFT + "'>List of Branches </td>");
                    htmlReportBuilder.Append("<td style='" + REPORT_HEADER_LEFT + "'>E.C.C. No	</td>");
                    htmlReportBuilder.Append("<td style='" + REPORT_HEADER_LEFT + "'>Central Tax Number</td>");
                    htmlReportBuilder.Append("<td style='" + REPORT_HEADER_LEFT + "'>Date</td>");
                    htmlReportBuilder.Append("<td style='" + REPORT_HEADER_LEFT + "'>Kind of Job</td>");
                    htmlReportBuilder.Append("<td style='" + REPORT_HEADER_LEFT + "'>Country</td>");
                    htmlReportBuilder.Append("<td style='" + REPORT_HEADER_LEFT + "'>City</td>");
                    htmlReportBuilder.Append("<td style='" + REPORT_HEADER_LEFT + "'>Fax</td>");
                    htmlReportBuilder.Append("<td style='" + REPORT_HEADER_LEFT + "'>Web site</td>");
                    htmlReportBuilder.Append("<td style='" + REPORT_HEADER_LEFT + "'>Sales Tax Number</td>");
                    htmlReportBuilder.Append("<td style='" + REPORT_HEADER_LEFT + "'>Date</td>");
                    htmlReportBuilder.Append("<td style='" + REPORT_HEADER_LEFT + "'>Person Name</td>");
                    htmlReportBuilder.Append("<td style='" + REPORT_HEADER_LEFT + "'>Mobile</td>");
                    htmlReportBuilder.Append("<td style='" + REPORT_HEADER_LEFT + "'>Designation</td>");
                    htmlReportBuilder.Append("<td style='" + REPORT_HEADER_LEFT + "'>Email</td>");
                    htmlReportBuilder.Append("<td style='" + REPORT_HEADER_LEFT + "'>Reg Date</td>");
                    htmlReportBuilder.Append("</tr>");

                    int i = 1;
                    foreach (DataRow dr in dt.Rows)
                    {

                        htmlReportBuilder.Append("<tr>");


                        htmlReportBuilder.Append("<td style='" + REPORT_CELL_LEFT + "'>");
                        htmlReportBuilder.Append(Convert.ToString(i));
                        htmlReportBuilder.Append("</td>");


                        htmlReportBuilder.Append("<td style='" + REPORT_CELL_LEFT + "'>");
                        htmlReportBuilder.Append(Convert.ToString(dr["VendorName"]));
                        htmlReportBuilder.Append("</td>");

                        htmlReportBuilder.Append("<td style='" + REPORT_CELL_LEFT + "'>");
                        htmlReportBuilder.Append(Convert.ToString(dr["Address"]));
                        htmlReportBuilder.Append("</td>");

                        htmlReportBuilder.Append("<td style='" + REPORT_CELL_LEFT + "'>");
                        htmlReportBuilder.Append(Convert.ToString(dr["Phone"]));
                        htmlReportBuilder.Append("</td>");

                        htmlReportBuilder.Append("<td style='" + REPORT_CELL_LEFT + "'>");
                        htmlReportBuilder.Append(Convert.ToString(dr["Email"]));
                        htmlReportBuilder.Append("</td>");

                        htmlReportBuilder.Append("<td style='" + REPORT_CELL_LEFT + "'>");
                        htmlReportBuilder.Append(Convert.ToString(dr["Branches"]));
                        htmlReportBuilder.Append("</td>");



                        htmlReportBuilder.Append("<td style='" + REPORT_CELL_LEFT + "'>");
                        htmlReportBuilder.Append(Convert.ToString(dr["ECCNo"]));
                        htmlReportBuilder.Append("</td>");

                        htmlReportBuilder.Append("<td style='" + REPORT_CELL_LEFT + "'>");
                        htmlReportBuilder.Append(Convert.ToString(dr["CentralTaxNo"]));
                        htmlReportBuilder.Append("</td>");

                        htmlReportBuilder.Append("<td style='" + REPORT_CELL_LEFT + "'>");
                        htmlReportBuilder.Append(Convert.ToString(dr["CTDate"]));
                        htmlReportBuilder.Append("</td>");

                        htmlReportBuilder.Append("<td style='" + REPORT_CELL_LEFT + "'>");
                        htmlReportBuilder.Append(Convert.ToString(dr["JobType"]));
                        htmlReportBuilder.Append("</td>");

                        htmlReportBuilder.Append("<td style='" + REPORT_CELL_LEFT + "'>");
                        htmlReportBuilder.Append(Convert.ToString(dr["Country"]));
                        htmlReportBuilder.Append("</td>");

                        htmlReportBuilder.Append("<td style='" + REPORT_CELL_LEFT + "'>");
                        htmlReportBuilder.Append(Convert.ToString(dr["City"]));
                        htmlReportBuilder.Append("</td>");

                        htmlReportBuilder.Append("<td style='" + REPORT_CELL_LEFT + "'>");
                        htmlReportBuilder.Append(Convert.ToString(dr["Fax"]));
                        htmlReportBuilder.Append("</td>");

                        htmlReportBuilder.Append("<td style='" + REPORT_CELL_LEFT + "'>");
                        htmlReportBuilder.Append(Convert.ToString(dr["Website"]));
                        htmlReportBuilder.Append("</td>");



                        htmlReportBuilder.Append("<td style='" + REPORT_CELL_LEFT + "'>");
                        htmlReportBuilder.Append(Convert.ToString(dr["SalesTaxNo"]));
                        htmlReportBuilder.Append("</td>");




                        htmlReportBuilder.Append("<td style='" + REPORT_CELL_LEFT + "'>");
                        htmlReportBuilder.Append(Convert.ToString(dr["SalesTaxDate"]));
                        htmlReportBuilder.Append("</td>");




                        htmlReportBuilder.Append("<td style='" + REPORT_CELL_LEFT + "'>");
                        htmlReportBuilder.Append(Convert.ToString(dr["PersonName"]));
                        htmlReportBuilder.Append("</td>");



                        htmlReportBuilder.Append("<td style='" + REPORT_CELL_LEFT + "'>");
                        htmlReportBuilder.Append(Convert.ToString(dr["Mobile"]));
                        htmlReportBuilder.Append("</td>");



                        htmlReportBuilder.Append("<td style='" + REPORT_CELL_LEFT + "'>");
                        htmlReportBuilder.Append(Convert.ToString(dr["Designation"]));
                        htmlReportBuilder.Append("</td>");


                        htmlReportBuilder.Append("<td style='" + REPORT_CELL_LEFT + "'>");
                        htmlReportBuilder.Append(Convert.ToString(dr["CntEmail"]));
                        htmlReportBuilder.Append("</td>");



                        htmlReportBuilder.Append("<td style='" + REPORT_CELL_LEFT + "'>");
                        htmlReportBuilder.Append(Convert.ToString(dr["InsertDate"]));
                        htmlReportBuilder.Append("</td>");







                        htmlReportBuilder.Append("</tr>");

                        i++;
                    }


                    string fileName = "";
                    if (String.IsNullOrEmpty(fileName))
                        fileName = "VandorReg" + DateTime.Now.ToString("yyyyMMdd-HHmmss") + ".xls";
                    Response.ClearContent();
                    Response.AddHeader("content-disposition", "attachment; filename=" + fileName);
                    Response.ContentType = "application/excel";
                    Response.Charset = "utf-8";
                    Response.Write(htmlReportBuilder.ToString());
                    Response.End();
                }
            }
        }
    }
}