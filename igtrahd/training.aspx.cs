using NakshatraCeramics.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace igtrahd
{
    public partial class training : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            if (name.Text != "")
            {
                try
                {
                    int a = DBCommunication.InsertTrainingInq(0, name.Text, address.Text, phone.Text, fax.Text, email.Text, areaofinterest.SelectedValue, qualification.SelectedValue, otherdetail.Text, reference.Text, currentstatus.SelectedValue);
                }
                catch (Exception)
                {

                    throw;
                }

                name.Text = "";
                phone.Text = "";
                fax.Text = "";
                email.Text = "";
                areaofinterest.SelectedIndex = 0;
                qualification.Text = "";
                otherdetail.Text = "";
                reference.Text = "";
                currentstatus.SelectedIndex = 0;



                lbSucess.Text = "Record has been submitted";
            }
        }
    }
}