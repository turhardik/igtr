using NakshatraCeramics.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace igtrahd.AdminPanel
{
    public partial class ListNewsEvents : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(Convert.ToString(System.Web.HttpContext.Current.Session["UserID"])))
            {
                System.Web.HttpContext.Current.Response.Redirect("~/AdminLogin.aspx");
            }
            if (!IsPostBack)
            {
                Binddata();
            }
        }

        private void Binddata()
        {
            DataTable dt = DBCommunication.SelectNewsEvents();
            if (dt.Rows.Count != 0)
            {
                rptNewsEvents.DataSource = dt;
                rptNewsEvents.DataBind();
            }
        }

        protected void rptNewsEvents_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
               // ((LinkButton)e.Item.FindControl("lnkEdit")).PostBackUrl = "UpdateGallery.aspx?abc=" + ((LinkButton)e.Item.FindControl("lnkEdit")).CommandArgument;

                string type = ((HiddenField)e.Item.FindControl("hdType")).Value;
                string fileurl = ((HiddenField)e.Item.FindControl("hdFileURL")).Value;
                string hdid = ((HiddenField)e.Item.FindControl("hdID")).Value;
                string filename = "";
                if (type == "FILE")
                {
                    filename = "../NewsEvents/" + hdid + "/" + fileurl;
                }
                else {
                    filename = "http://" + fileurl;
                }

                ((HtmlAnchor)e.Item.FindControl("hlData")).HRef = filename;
            }
        }

        public void lbDelete_Click(object sender, EventArgs e)
        {
            LinkButton lb = (LinkButton)sender;
            int ImageID = Convert.ToInt32(lb.CommandArgument);
            DBCommunication.DeleteNewswithID(ImageID);
            Binddata();
        }
    }
}