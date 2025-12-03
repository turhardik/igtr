using NakshatraCeramics.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace igtrahd.AdminPanel
{
    public partial class ListGallery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(Convert.ToString(System.Web.HttpContext.Current.Session["UserID"])))
            {
                System.Web.HttpContext.Current.Response.Redirect("~/AdminLogin.aspx");
            }
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

        protected void Repeater1_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {

            //string PTYpe = GetPropertyTypes();

            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                ((LinkButton)e.Item.FindControl("lnkEdit")).PostBackUrl = "UpdateGallery.aspx?abc=" + ((LinkButton)e.Item.FindControl("lnkEdit")).CommandArgument ;
            }

        }

        public void imgDelete_Click(object sender, EventArgs e)
        {
            ImageButton lb = (ImageButton)sender;
            int ImageID = Convert.ToInt32(lb.CommandArgument);
            DBCommunication.DeleteGallery(ImageID);
            BindData();
        }
      
    }
}