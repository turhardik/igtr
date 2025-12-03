using NakshatraCeramics.DAL;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace igtrahd.AdminPanel
{
    public partial class ManageNewsEvents : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(Convert.ToString(System.Web.HttpContext.Current.Session["UserID"])))
            {
                System.Web.HttpContext.Current.Response.Redirect("~/AdminLogin.aspx");
            }
            if (!IsPostBack)
            {
                RadioButtonList1.SelectedValue = "FILE";
                FIFile.Enabled = true;
                txtURL.Enabled = false;
            }
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (RadioButtonList1.SelectedValue == "FILE")
            {
                FIFile.Enabled = true;
                txtURL.Enabled = false;
            }
            else
            {
                FIFile.Enabled = false;
                txtURL.Enabled = true;
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (txtMain.Text != "")
            {
                string abc = "";
                if (RadioButtonList1.SelectedValue == "FILE")
                {
                    abc = FIFile.FileName;
                }
                else
                {
                    abc = txtURL.Text;
                }

                if (abc == "")
                {

                }
                else
                {
                    int a = DBCommunication.InsertNewsEvents(0, txtMain.Text, abc, RadioButtonList1.SelectedValue);

                    if (RadioButtonList1.SelectedValue == "FILE")
                    {
                        if (!Directory.Exists(Server.MapPath("~/NewsEvents/") + a))
                        {
                            Directory.CreateDirectory(Server.MapPath("~/NewsEvents/") + a);
                        }
                        if (!(File.Exists(MapPath("~\\NewsEvents\\" + a + "\\" + FIFile.FileName))))
                        {
                            FIFile.SaveAs(MapPath("~\\NewsEvents\\" + a + "\\" + FIFile.FileName));
                        }
                    }

                    txtMain.Text = "";
                    txtURL.Text = "";
                    RadioButtonList1.SelectedIndex = 0;
                    FIFile.Enabled = true;
                    txtURL.Enabled = false;
                }



            }
        }
    }
}