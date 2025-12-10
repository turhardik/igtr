using NakshatraCeramics.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace igtrahd.AdminPanel
{
    public partial class RTIList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) LoadRTI();
        }

        private void LoadRTI()
        {
            rptRTI.DataSource = DBCommunication.SelectRTI();
            rptRTI.DataBind();
        }

        protected void DeleteRTI(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(((LinkButton)sender).CommandArgument);
            DBCommunication.DeleteRTI(id);
            LoadRTI();
        }

    }
}