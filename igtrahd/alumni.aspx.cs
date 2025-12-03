using NakshatraCeramics.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace igtrahd
{
    public partial class alumni : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Asubmit_Click(object sender, EventArgs e)
        {
            if (astudentname.Text != "")
            {
                try
                {
                    int a = DBCommunication.InsertAlumini(0, astudentname.Text, aaddress.Text, acity.Text, acountry.Text, aphoneno.Text, aworkingaddress.Text, Convert.ToDecimal(aemperience.Text), aemail.Text, astudentno.Text, acourse.Text, apassingmonth.Text, Convert.ToInt32(apassingyear.Text));
                }
                catch (Exception)
                {

                    throw;
                }

                astudentname.Text = "";
                aaddress.Text = "";
                acity.Text = "";
                acountry.Text = "";
                aphoneno.Text = "";
                aworkingaddress.Text = "";
                aemperience.Text = "";
                aemail.Text = "";
                astudentno.Text = "";
                acourse.Text = "";
                apassingmonth.Text = "";
                apassingyear.Text = "";
                lbSucess.Text = "Record has been submitted";
            }
        }
    }
}