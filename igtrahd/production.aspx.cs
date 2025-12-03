using NakshatraCeramics.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace igtrahd
{
    public partial class production : System.Web.UI.Page
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
                  int a =   DBCommunication.InsertProductionInq(0,organisation.Text, designation.Text, name.Text, address.Text, phone.Text, fax.Text, email.Text, interestarea.Text, message.Text, referance.Text);
                }
                catch (Exception)
                {

                    throw;
                }

                organisation.Text = "";
                designation.Text = "";
                name.Text = "";
                address.Text = "";
                phone.Text = "";
                fax.Text = "";
                email.Text = "";
                interestarea.Text = "";
                message.Text = "";
                referance.Text = "";
                lbSucess.Text = "Record has been submitted";
            }
        }
    }
}