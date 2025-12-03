using NakshatraCeramics.DAL;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace igtrahd.AdminPanel
{
    public partial class managegallery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(Convert.ToString(System.Web.HttpContext.Current.Session["UserID"])))
            {
                System.Web.HttpContext.Current.Response.Redirect("~/AdminLogin.aspx");
            }
            if (!IsPostBack)
            {
                lbSucess.Visible = false;
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            int GalleryID = 0;
            string MainImage = FImgmain.FileName;
            GalleryID = DBCommunication.InsertGalleryMaster(GalleryID,txtGalName.Text, MainImage);

            if (!Directory.Exists(Server.MapPath("~/Gallery/") + GalleryID))
            {
                Directory.CreateDirectory(Server.MapPath("~/Gallery/") + GalleryID);
            }

            if (!(File.Exists(MapPath("~\\Gallery\\" + GalleryID + "\\" + FImgmain.FileName))))
            {
                FImgmain.SaveAs(MapPath("~\\Gallery\\" + GalleryID + "\\" + FImgmain.FileName));
            }


            if (FImg.HasFile)
            {
                if (!(File.Exists(MapPath("~\\Gallery\\" + GalleryID + "\\" + FImg.FileName))))
                {
                    for (int i = 1; i < Request.Files.Count; i++)
                    {
                        HttpPostedFile PostedFile = Request.Files[i];
                        if (PostedFile.ContentLength > 0)
                        {
                            string FileName = System.IO.Path.GetFileName(PostedFile.FileName);
                            PostedFile.SaveAs(Server.MapPath("~\\Gallery\\" + GalleryID + "\\") + FileName);
                            DBCommunication.InsertImageforGallery(FileName, GalleryID);
                        }
                    }
                }
            }

            lbSucess.Visible = true;
            lbSucess.Text = "Gallery Saved Successfully";
        }
    }
}