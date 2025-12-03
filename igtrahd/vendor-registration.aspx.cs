using NakshatraCeramics.DAL;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace igtrahd
{
    public partial class vendor_registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txtVName.Text != "")
            {
                try
                {

                    string jobs = "";
                    foreach (ListItem li in chkJob.Items)
                    {
                        if (li.Selected)
                        {
                            jobs += li.Value + ",";
                        }
                    }
                    if (jobs != "")
                        jobs = jobs.Remove(jobs.Length - 1, 1);

                    string fname = FileUpload1.FileName;
                    int VID = DBCommunication.InsertVandor(0, txtVName.Text, txtAddress.Text, txtPhone.Text, txtEmail.Text, txtBranch.Text, txtECCNo.Text, txtCTNo.Text, txtCTDate.Text, jobs, ddlCountry.SelectedValue, txtCity.Text, txtFax.Text, txtWebsite.Text, txtSTNo.Text, txtSTDate.Text, txtCntName.Text, txtMobile.Text, txtDesignation.Text, txtEmail.Text, fname);

                    if (!Directory.Exists(Server.MapPath("~/VDocuments/") + VID))
                    {
                        Directory.CreateDirectory(Server.MapPath("~/VDocuments/") + VID);
                    }
                    if (!(File.Exists(MapPath("~\\VDocuments\\" + VID + "\\" + fname))))
                    {
                        FileUpload1.SaveAs(MapPath("~\\VDocuments\\" + VID + "\\" + fname));
                    }

                }
                catch (Exception)
                {

                    throw;
                }

                foreach (ListItem li in chkJob.Items)
                {
                   
                        li.Selected = false;
                   
                }
                txtVName.Text = "";
                txtAddress.Text = "";
                txtPhone.Text = "";
                txtEmail.Text = "";
                txtBranch.Text = "";
                txtECCNo.Text = "";
                txtCTNo.Text = "";
                txtCTDate.Text = "";
                ddlCountry.SelectedIndex = 0;
                txtCity.Text = "";
                txtFax.Text = "";
                txtWebsite.Text = "";
                txtSTNo.Text = "";
                txtSTDate.Text = "";
                txtCntName.Text = "";
                txtMobile.Text = "";
                txtDesignation.Text = "";
                txtEmail.Text = "";

                lbSucess.Text = "Record has been submitted";
            }
        }
    }
}