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
    public partial class sub_gallery : System.Web.UI.Page
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
            DataTable dt1 = new DataTable();
            if (Convert.ToString(Request.QueryString["abc"]) != null)
            {
                int GalleryID = Convert.ToInt32(Request.QueryString["abc"]);

                DataSet ds = DBCommunication.GetAllGalleryImagesByID(GalleryID);

                if (ds.Tables.Count > 0)
                {
                     dt1 = ds.Tables[0];
                }
                if (ds.Tables.Count > 1)
                {
                    DataTable dt2 = ds.Tables[1];
                    dt1.Merge(dt2);
                }

                if (dt1.Rows.Count != 0)
                {
                    Repeater1.DataSource = dt1;
                    Repeater1.DataBind();
                }
            }
        }
    }
}