using NakshatraCeramics.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace igtrahd.AdminPanel
{
    public partial class UpdateGallery : System.Web.UI.Page
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
            if (Convert.ToString(Request.QueryString["abc"]) != null)
            {
                int GalleryID = Convert.ToInt32(Request.QueryString["abc"]);
                hdGalleryID.Value = Request.QueryString["abc"];
                DataSet ds = DBCommunication.EditGallery(GalleryID);

                DataTable dt = ds.Tables[0];
                if (dt.Rows.Count > 0)
                {
                    txtGalName.Text = Convert.ToString(dt.Rows[0]["Name"]);
                    hdMainImage.Value = Convert.ToString(dt.Rows[0]["MainImage"]);
                    ImgFImg.ImageUrl = "../Gallery/" + GalleryID + "/" + hdMainImage.Value;

                }

                if (ds.Tables.Count > 1)
                {
                    if (ds.Tables[1].Rows.Count != 0)
                    {
                        rptImages.DataSource = ds.Tables[1];
                        rptImages.DataBind();
                    }
                }
            }
        }
        public void imgDelete_Click(object sender, EventArgs e)
        {
            ImageButton lb = (ImageButton)sender;
            int ImageID = Convert.ToInt32(lb.CommandArgument);
            DBCommunication.DeleteImagewithID(ImageID);
            BindData();
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (hdGalleryID.Value != "")
            {
                int GalleryID = Convert.ToInt32(hdGalleryID.Value);
                string MainImage = "";
                if (FImgmain.FileName != "" && FImgmain.FileName != null)
                {
                    MainImage = FImgmain.FileName;
                }
                else
                {
                    MainImage = hdMainImage.Value;
                }
                DBCommunication.UpdateGallery(GalleryID, txtGalName.Text, MainImage);


                if (!Directory.Exists(Server.MapPath("~/Gallery/") + GalleryID))
                {
                    Directory.CreateDirectory(Server.MapPath("~/Gallery/") + GalleryID);
                }
                if (!(File.Exists(MapPath("~\\Gallery\\" + GalleryID + "\\" + MainImage))))
                {
                    FImgmain.SaveAs(MapPath("~\\Gallery\\" + GalleryID + "\\" + MainImage));
                }

                if (FImg.HasFile)
                {
                    if (!(File.Exists(MapPath("~\\Gallery\\" + GalleryID + "\\" + FImg.FileName))))
                    {
                        for (int i =0; i < Request.Files.Count; i++)
                        {
                            HttpPostedFile PostedFile = Request.Files[i];
                            if (PostedFile.ContentLength > 0)
                            {
                                string FileName = System.IO.Path.GetFileName(PostedFile.FileName);
                                if (!(File.Exists(MapPath("~\\Gallery\\" + GalleryID + "\\" + FileName))))
                                {
                                    PostedFile.SaveAs(Server.MapPath("~\\Gallery\\" + GalleryID + "\\") + FileName);
                                    DBCommunication.InsertImageforGallery(FileName, GalleryID);
                                }
                            }
                        }
                    }
                }

                lbSuccess.Text = "Gallery Has beren updated Sucessfully";
                Response.Redirect("ListGallery.aspx");

            }
        }
    }
}