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
    public partial class gallery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindData();
            }
        }

        private void BindData()
        {
            DataTable dt = DBCommunication.ListGallery();

            if (dt.Rows.Count != 0)
            {
                Repeater1.DataSource = dt;
                Repeater1.DataBind();
            }
        }
    }
}