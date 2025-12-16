using NakshatraCeramics.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace igtrahd.AdminPanel
{
    public partial class ListTeam : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                rptAdminTeam.DataSource = DBCommunication.SelectActiveTeamIGTR();
                rptAdminTeam.DataBind();
            }
        }
    }
}