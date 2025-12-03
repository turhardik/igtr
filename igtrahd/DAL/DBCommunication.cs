using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;

namespace NakshatraCeramics.DAL
{
    public class DBCommunication
    {
        public static void InsertContact(string Name, string DOB, string Email, string Mobile, string Location, string CarUsed)
        {
            int CntID = 0;
            SqlConnection conn = DBConnection.GetConnection();


            SqlCommand comm = new SqlCommand("InsertContact", conn);
            comm.CommandType = CommandType.StoredProcedure;


            comm.Parameters.AddWithValue("@p_Name", Name);
            comm.Parameters.AddWithValue("@p_DOB", DOB);
            comm.Parameters.AddWithValue("@p_Email", Email);
            comm.Parameters.AddWithValue("@p_Mobile", Mobile);
            comm.Parameters.AddWithValue("@p_Location", Location);
            comm.Parameters.AddWithValue("@p_CarUsed", CarUsed);



            try
            {
                conn.Open();
                comm.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                conn.Close();
                comm.Connection = null;
                comm.Dispose();
            }


        }
        public static string SendMail(string CmailID, string CBody, string Csubject)
        {

            string status = "";
            try
            {
                MailMessage USermailMag = new MailMessage("websiteinq@nktpl.com", CmailID, Csubject, CBody);
                USermailMag.IsBodyHtml = true;
                USermailMag.Headers.Add("Micromad", "Neumicromad");
                SmtpClient client = new SmtpClient();
                client.Host = "smtp.gmail.com";
                client.Port = 587;
                client.Credentials = new System.Net.NetworkCredential("websiteinq@nktpl.com", "reset1234");
                client.EnableSsl = true;
                client.Send(USermailMag);



            }
            catch (Exception ex)
            {
                return status = "Sorry Some Problems in Send Mail !";
            }
            return status;


        }

        internal static DataTable CheckAndGetLoginDetails(string loginId, string password)
        {
            {

                int UserID = 0;
                DataSet ds = new DataSet();
                SqlConnection conn = DBConnection.GetConnection();
                SqlDataAdapter adpt = new SqlDataAdapter("CheckAndGetLoginDetails", conn);
                adpt.SelectCommand.CommandType = CommandType.StoredProcedure;
                adpt.SelectCommand.Parameters.AddWithValue("@_LoginId", loginId);
                adpt.SelectCommand.Parameters.AddWithValue("@_Password", password);
                adpt.SelectCommand.Parameters.AddWithValue("@_EncKey", "#Id!0tea$");
                try
                {
                    conn.Open();
                    adpt.Fill(ds, "User");
                }
                finally
                {
                    conn.Close();
                    adpt.Dispose();
                }

                return ds.Tables[0];
            }
        }

     

    

        // Delete Starts
        internal static void deleteCategory(int ID)
        {
            SqlConnection conn = DBConnection.GetConnection();

            SqlCommand comm = new SqlCommand("deleteCategory", conn);
            comm.CommandType = CommandType.StoredProcedure;
            comm.Parameters.AddWithValue("@p_ID", ID);
            try
            {
                conn.Open();
                comm.ExecuteNonQuery();
            }
            finally
            {
                conn.Close();
                comm.Connection = null;
                comm.Dispose();
            }
        }
        internal static void deleteCollection(int ID)
        {
            SqlConnection conn = DBConnection.GetConnection();

            SqlCommand comm = new SqlCommand("deleteCollection", conn);
            comm.CommandType = CommandType.StoredProcedure;
            comm.Parameters.AddWithValue("@p_ID", ID);
            try
            {
                conn.Open();
                comm.ExecuteNonQuery();
            }
            finally
            {
                conn.Close();
                comm.Connection = null;
                comm.Dispose();
            }
        }
        internal static void deleteDesign(int ID)
        {
            SqlConnection conn = DBConnection.GetConnection();

            SqlCommand comm = new SqlCommand("deleteDesign", conn);
            comm.CommandType = CommandType.StoredProcedure;
            comm.Parameters.AddWithValue("@p_ID", ID);
            try
            {
                conn.Open();
                comm.ExecuteNonQuery();
            }
            finally
            {
                conn.Close();
                comm.Connection = null;
                comm.Dispose();
            }
        }
        internal static void DeleteProduct(int ID)
        {
            SqlConnection conn = DBConnection.GetConnection();

            SqlCommand comm = new SqlCommand("DeleteProduct", conn);
            comm.CommandType = CommandType.StoredProcedure;
            comm.Parameters.AddWithValue("@p_ID", ID);
            try
            {
                conn.Open();
                comm.ExecuteNonQuery();
            }
            finally
            {
                conn.Close();
                comm.Connection = null;
                comm.Dispose();
            }
        }
        internal static void DeleteProductImage(int ID)
        {
            SqlConnection conn = DBConnection.GetConnection();

            SqlCommand comm = new SqlCommand("DeleteProductImage", conn);
            comm.CommandType = CommandType.StoredProcedure;
            comm.Parameters.AddWithValue("@p_ID", ID);
            try
            {
                conn.Open();
                comm.ExecuteNonQuery();
            }
            finally
            {
                conn.Close();
                comm.Connection = null;
                comm.Dispose();
            }
        }
        internal static void deleteSize(int ID)
        {
            SqlConnection conn = DBConnection.GetConnection();

            SqlCommand comm = new SqlCommand("deleteSize", conn);
            comm.CommandType = CommandType.StoredProcedure;
            comm.Parameters.AddWithValue("@p_ID", ID);
            try
            {
                conn.Open();
                comm.ExecuteNonQuery();
            }
            finally
            {
                conn.Close();
                comm.Connection = null;
                comm.Dispose();
            }
        }
        internal static void deleteSurface(int ID)
        {
            SqlConnection conn = DBConnection.GetConnection();

            SqlCommand comm = new SqlCommand("deleteSurface", conn);
            comm.CommandType = CommandType.StoredProcedure;
            comm.Parameters.AddWithValue("@p_ID", ID);
            try
            {
                conn.Open();
                comm.ExecuteNonQuery();
            }
            finally
            {
                conn.Close();
                comm.Connection = null;
                comm.Dispose();
            }
        }
        // Delete Ends


        // Get Details By ID starts

        


        internal static DataTable ListGallery()
        {
            DataSet ds = new DataSet();
            DataTable dt = new DataTable();
            dt = null;
            SqlConnection conn = DBConnection.GetConnection();
            SqlDataAdapter adpt = new SqlDataAdapter("GetImageList", conn);
            adpt.SelectCommand.CommandType = CommandType.StoredProcedure;
            try
            {
                conn.Open();
                adpt.Fill(ds);
            }
            finally
            {
                conn.Close();
                adpt.Dispose();
            }
            if (ds.Tables.Count > 0)
            {
                dt = ds.Tables[0];
            }
            return dt;
        }

        internal static DataTable GetCollectionByID(int ID)
        {
            DataSet ds = new DataSet();
            DataTable dt = new DataTable();
            dt = null;
            SqlConnection conn = DBConnection.GetConnection();
            SqlDataAdapter adpt = new SqlDataAdapter("GetCollectionByID", conn);
            adpt.SelectCommand.Parameters.AddWithValue("@p_ID", ID);
            adpt.SelectCommand.CommandType = CommandType.StoredProcedure;
            try
            {
                conn.Open();
                adpt.Fill(ds);
            }
            finally
            {
                conn.Close();
                adpt.Dispose();
            }
            if (ds.Tables.Count > 0)
            {
                dt = ds.Tables[0];
            }
            return dt;
        }

        internal static DataTable GetDesignByID(int ID)
        {
            DataSet ds = new DataSet();
            DataTable dt = new DataTable();
            dt = null;
            SqlConnection conn = DBConnection.GetConnection();
            SqlDataAdapter adpt = new SqlDataAdapter("GetDesignByID", conn);
            adpt.SelectCommand.Parameters.AddWithValue("@p_ID", ID);
            adpt.SelectCommand.CommandType = CommandType.StoredProcedure;
            try
            {
                conn.Open();
                adpt.Fill(ds);
            }
            finally
            {
                conn.Close();
                adpt.Dispose();
            }
            if (ds.Tables.Count > 0)
            {
                dt = ds.Tables[0];
            }
            return dt;
        }

        internal static DataSet GetProductByID(int ID)
        {
            DataSet ds = new DataSet();
            DataTable dt = new DataTable();
            dt = null;
            SqlConnection conn = DBConnection.GetConnection();
            SqlDataAdapter adpt = new SqlDataAdapter("GetProductByID", conn);
            adpt.SelectCommand.Parameters.AddWithValue("@p_ID", ID);
            adpt.SelectCommand.CommandType = CommandType.StoredProcedure;
            try
            {
                conn.Open();
                adpt.Fill(ds);
            }
            finally
            {
                conn.Close();
                adpt.Dispose();
            }

            return ds;
        }

        internal static DataTable GetProductBySrch(int CategoryID, int CollectionID, int DesignID, int SizeID, int SurfaceID, int PageNo, int PageSize)
        {
            DataSet ds = new DataSet();
            DataTable dt = new DataTable();
            dt = null;
            SqlConnection conn = DBConnection.GetConnection();
            SqlDataAdapter adpt = new SqlDataAdapter("GetProductBySrch", conn);
            adpt.SelectCommand.Parameters.AddWithValue("@P_CategoryID", CategoryID);
            adpt.SelectCommand.Parameters.AddWithValue("@P_CollectionID", CollectionID);
            adpt.SelectCommand.Parameters.AddWithValue("@P_DesignID", DesignID);
            adpt.SelectCommand.Parameters.AddWithValue("@P_SizeID", SizeID);
            adpt.SelectCommand.Parameters.AddWithValue("@P_SurfaceID", SurfaceID);
            adpt.SelectCommand.Parameters.AddWithValue("@p_PageNo", PageNo);
            adpt.SelectCommand.Parameters.AddWithValue("@p_PageSize", PageSize);
            adpt.SelectCommand.CommandType = CommandType.StoredProcedure;
            try
            {
                conn.Open();
                adpt.Fill(ds);
            }
            finally
            {
                conn.Close();
                adpt.Dispose();
            }

            if (ds.Tables.Count > 0)
            {
                dt = ds.Tables[0];
            }
            return dt;
        }

        internal static DataTable GetProductBySrch1(int CategoryID, int CollectionID, int DesignID, int SizeID, int SurfaceID, int PageNo, int PageSize, string Srch)
        {
            DataSet ds = new DataSet();
            DataTable dt = new DataTable();
            dt = null;
            SqlConnection conn = DBConnection.GetConnection();
            SqlDataAdapter adpt = new SqlDataAdapter("GetProductBySrch1", conn);
            adpt.SelectCommand.Parameters.AddWithValue("@P_CategoryID", CategoryID);
            adpt.SelectCommand.Parameters.AddWithValue("@P_CollectionID", CollectionID);
            adpt.SelectCommand.Parameters.AddWithValue("@P_DesignID", DesignID);
            adpt.SelectCommand.Parameters.AddWithValue("@P_SizeID", SizeID);
            adpt.SelectCommand.Parameters.AddWithValue("@P_SurfaceID", SurfaceID);
            adpt.SelectCommand.Parameters.AddWithValue("@p_PageNo", PageNo);
            adpt.SelectCommand.Parameters.AddWithValue("@p_PageSize", PageSize);
            adpt.SelectCommand.Parameters.AddWithValue("@p_Srch", Srch);
            adpt.SelectCommand.CommandType = CommandType.StoredProcedure;
            try
            {
                conn.Open();
                adpt.Fill(ds);
            }
            finally
            {
                conn.Close();
                adpt.Dispose();
            }

            if (ds.Tables.Count > 0)
            {
                dt = ds.Tables[0];
            }
            return dt;
        }


        internal static DataTable GetSizeByID(int ID)
        {
            DataSet ds = new DataSet();
            DataTable dt = new DataTable();
            dt = null;
            SqlConnection conn = DBConnection.GetConnection();
            SqlDataAdapter adpt = new SqlDataAdapter("GetSizeByID", conn);
            adpt.SelectCommand.Parameters.AddWithValue("@p_ID", ID);
            adpt.SelectCommand.CommandType = CommandType.StoredProcedure;
            try
            {
                conn.Open();
                adpt.Fill(ds);
            }
            finally
            {
                conn.Close();
                adpt.Dispose();
            }
            if (ds.Tables.Count > 0)
            {
                dt = ds.Tables[0];
            }
            return dt;
        }

        internal static DataTable GetSurfaceByID(int ID)
        {
            DataSet ds = new DataSet();
            DataTable dt = new DataTable();
            dt = null;
            SqlConnection conn = DBConnection.GetConnection();
            SqlDataAdapter adpt = new SqlDataAdapter("GetSurfaceByID", conn);
            adpt.SelectCommand.Parameters.AddWithValue("@p_ID", ID);
            adpt.SelectCommand.CommandType = CommandType.StoredProcedure;
            try
            {
                conn.Open();
                adpt.Fill(ds);
            }
            finally
            {
                conn.Close();
                adpt.Dispose();
            }
            if (ds.Tables.Count > 0)
            {
                dt = ds.Tables[0];
            }
            return dt;
        }


           internal static DataTable GetCategoryBySrch(string srch)
        {
            DataSet ds = new DataSet();
            DataTable dt = new DataTable();
            dt = null;
            SqlConnection conn = DBConnection.GetConnection();
            SqlDataAdapter adpt = new SqlDataAdapter("GetCategoryBySrch", conn);
            adpt.SelectCommand.Parameters.AddWithValue("@p_srch", srch);
            adpt.SelectCommand.CommandType = CommandType.StoredProcedure;
            try
            {
                conn.Open();
                adpt.Fill(ds);
            }
            finally
            {
                conn.Close();
                adpt.Dispose();
            }
            if (ds.Tables.Count > 0)
            {
                dt = ds.Tables[0];
            }
            return dt;
        }

        internal static DataTable GetCollectionBySrch(string srch)
        {
            DataSet ds = new DataSet();
            DataTable dt = new DataTable();
            dt = null;
            SqlConnection conn = DBConnection.GetConnection();
            SqlDataAdapter adpt = new SqlDataAdapter("GetCollectionBySrch", conn);
            adpt.SelectCommand.Parameters.AddWithValue("@p_srch", srch);
            adpt.SelectCommand.CommandType = CommandType.StoredProcedure;
            try
            {
                conn.Open();
                adpt.Fill(ds);
            }
            finally
            {
                conn.Close();
                adpt.Dispose();
            }
            if (ds.Tables.Count > 0)
            {
                dt = ds.Tables[0];
            }
            return dt;
        }

        internal static DataTable GetDesignBySrch(string srch)
        {
            DataSet ds = new DataSet();
            DataTable dt = new DataTable();
            dt = null;
            SqlConnection conn = DBConnection.GetConnection();
            SqlDataAdapter adpt = new SqlDataAdapter("GetDesignBySrch", conn);
            adpt.SelectCommand.Parameters.AddWithValue("@p_srch", srch);
            adpt.SelectCommand.CommandType = CommandType.StoredProcedure;
            try
            {
                conn.Open();
                adpt.Fill(ds);
            }
            finally
            {
                conn.Close();
                adpt.Dispose();
            }
            if (ds.Tables.Count > 0)
            {
                dt = ds.Tables[0];
            }
            return dt;
        }

        
        internal static DataTable GetSizeBySrch(string srch)
        {
            DataSet ds = new DataSet();
            DataTable dt = new DataTable();
            dt = null;
            SqlConnection conn = DBConnection.GetConnection();
            SqlDataAdapter adpt = new SqlDataAdapter("GetSizeBySrch", conn);
            adpt.SelectCommand.Parameters.AddWithValue("@p_srch", srch);
            adpt.SelectCommand.CommandType = CommandType.StoredProcedure;
            try
            {
                conn.Open();
                adpt.Fill(ds);
            }
            finally
            {
                conn.Close();
                adpt.Dispose();
            }
            if (ds.Tables.Count > 0)
            {
                dt = ds.Tables[0];
            }
            return dt;
        }

        internal static DataTable GetSurfaceBySrch(string srch)
        {
            DataSet ds = new DataSet();
            DataTable dt = new DataTable();
            dt = null;
            SqlConnection conn = DBConnection.GetConnection();
            SqlDataAdapter adpt = new SqlDataAdapter("GetSurfaceBySrch", conn);
            adpt.SelectCommand.Parameters.AddWithValue("@p_srch", srch);
            adpt.SelectCommand.CommandType = CommandType.StoredProcedure;
            try
            {
                conn.Open();
                adpt.Fill(ds);
            }
            finally
            {
                conn.Close();
                adpt.Dispose();
            }
            if (ds.Tables.Count > 0)
            {
                dt = ds.Tables[0];
            }
            return dt;
        }




        internal static DataTable GetAllCategory()
        {
            DataSet ds = new DataSet();
            DataTable dt = new DataTable();
            dt = null;
            SqlConnection conn = DBConnection.GetConnection();
            SqlDataAdapter adpt = new SqlDataAdapter("GetAllCategory", conn);
            adpt.SelectCommand.CommandType = CommandType.StoredProcedure;
            try
            {
                conn.Open();
                adpt.Fill(ds);
            }
            finally
            {
                conn.Close();
                adpt.Dispose();
            }
            if (ds.Tables.Count > 0)
            {
                dt = ds.Tables[0];
            }
            return dt;
        }

        internal static DataTable GetAllCollection()
        {
            DataSet ds = new DataSet();
            DataTable dt = new DataTable();
            dt = null;
            SqlConnection conn = DBConnection.GetConnection();
            SqlDataAdapter adpt = new SqlDataAdapter("GetAllCollection", conn);
            adpt.SelectCommand.CommandType = CommandType.StoredProcedure;
            try
            {
                conn.Open();
                adpt.Fill(ds);
            }
            finally
            {
                conn.Close();
                adpt.Dispose();
            }
            if (ds.Tables.Count > 0)
            {
                dt = ds.Tables[0];
            }
            return dt;
        }

        internal static DataTable GetAllDesign()
        {
            DataSet ds = new DataSet();
            DataTable dt = new DataTable();
            dt = null;
            SqlConnection conn = DBConnection.GetConnection();
            SqlDataAdapter adpt = new SqlDataAdapter("GetAllDesign", conn);
            adpt.SelectCommand.CommandType = CommandType.StoredProcedure;
            try
            {
                conn.Open();
                adpt.Fill(ds);
            }
            finally
            {
                conn.Close();
                adpt.Dispose();
            }
            if (ds.Tables.Count > 0)
            {
                dt = ds.Tables[0];
            }
            return dt;
        }

        internal static DataTable GetAllSize()
        {
            DataSet ds = new DataSet();
            DataTable dt = new DataTable();
            dt = null;
            SqlConnection conn = DBConnection.GetConnection();
            SqlDataAdapter adpt = new SqlDataAdapter("GetAllSize", conn);
            adpt.SelectCommand.CommandType = CommandType.StoredProcedure;
            try
            {
                conn.Open();
                adpt.Fill(ds);
            }
            finally
            {
                conn.Close();
                adpt.Dispose();
            }
            if (ds.Tables.Count > 0)
            {
                dt = ds.Tables[0];
            }
            return dt;
        }

        internal static DataTable GetAllSurface()
        {
            DataSet ds = new DataSet();
            DataTable dt = new DataTable();
            dt = null;
            SqlConnection conn = DBConnection.GetConnection();
            SqlDataAdapter adpt = new SqlDataAdapter("GetAllSurface", conn);
            adpt.SelectCommand.CommandType = CommandType.StoredProcedure;
            try
            {
                conn.Open();
                adpt.Fill(ds);
            }
            finally
            {
                conn.Close();
                adpt.Dispose();
            }
            if (ds.Tables.Count > 0)
            {
                dt = ds.Tables[0];
            }
            return dt;
        }




        



        // Get Details By ID Ends


        // Insert starts
        internal static void InsertCategory(int CategoryID,string CategortyName)
        {
            SqlConnection conn = DBConnection.GetConnection();

            SqlCommand comm = new SqlCommand("InsertCategory", conn);
            comm.CommandType = CommandType.StoredProcedure;
            comm.Parameters.AddWithValue("@p_CategortyName", CategortyName);
            comm.Parameters.AddWithValue("@p_CategortyID", CategoryID);
            try
            {
                conn.Open();
                comm.ExecuteNonQuery();
            }
            finally
            {
                conn.Close();
                comm.Connection = null;
                comm.Dispose();
            }
        }

        internal static void InsertCollection(int CollectionID,string CollectionName)
        {
            SqlConnection conn = DBConnection.GetConnection();

            SqlCommand comm = new SqlCommand("InsertCollection", conn);
            comm.CommandType = CommandType.StoredProcedure;
            comm.Parameters.AddWithValue("@p_CollectionName", CollectionName);
            comm.Parameters.AddWithValue("@p_CollectionID", CollectionID);
            try
            {
                conn.Open();
                comm.ExecuteNonQuery();
            }
            finally
            {
                conn.Close();
                comm.Connection = null;
                comm.Dispose();
            }
        }

        internal static void InsertDesign(int DesignID,string DesignName)
        {
            SqlConnection conn = DBConnection.GetConnection();

            SqlCommand comm = new SqlCommand("InsertDesign", conn);
            comm.CommandType = CommandType.StoredProcedure;
            comm.Parameters.AddWithValue("@p_DesignName", DesignName);
            comm.Parameters.AddWithValue("@p_DesignID", DesignID);
            try
            {
                conn.Open();
                comm.ExecuteNonQuery();
            }
            finally
            {
                conn.Close();
                comm.Connection = null;
                comm.Dispose();
            }
        }

        internal static void InsertSize(int SizeID,string SizeName)
        {
            SqlConnection conn = DBConnection.GetConnection();

            SqlCommand comm = new SqlCommand("InsertSize", conn);
            comm.CommandType = CommandType.StoredProcedure;
            comm.Parameters.AddWithValue("@p_SizeName", SizeName);
            comm.Parameters.AddWithValue("@p_SizeID", SizeID);
            try
            {
                conn.Open();
                comm.ExecuteNonQuery();
            }
            finally
            {
                conn.Close();
                comm.Connection = null;
                comm.Dispose();
            }
        }

        internal static void UpdatePassword(string Password,int UserID)
        {
            SqlConnection conn = DBConnection.GetConnection();

            SqlCommand comm = new SqlCommand("ResetPassword", conn);
            comm.CommandType = CommandType.StoredProcedure;
            comm.Parameters.AddWithValue("@P_Password", Password);
            comm.Parameters.AddWithValue("@p_UserID", UserID);
            try
            {
                conn.Open();
                comm.ExecuteNonQuery();
            }
            finally
            {
                conn.Close();
                comm.Connection = null;
                comm.Dispose();
            }
        }

        internal static void InsertSurface(int SurfaceID,string SurfaceName)
        {
            SqlConnection conn = DBConnection.GetConnection();

            SqlCommand comm = new SqlCommand("InsertSurface", conn);
            comm.CommandType = CommandType.StoredProcedure;
            comm.Parameters.AddWithValue("@p_SurfaceName", SurfaceName);
            comm.Parameters.AddWithValue("@p_SurfaceID", SurfaceID);
            try
            {
                conn.Open();
                comm.ExecuteNonQuery();
            }
            finally
            {
                conn.Close();
                comm.Connection = null;
                comm.Dispose();
            }
        }



        internal static int InsertProduct(int ProductID, string ProductName, int CategoryID, int SurfaceID, int CollectionID, int SizeID, int DesignID, int IsNew)
        {
            SqlConnection conn = DBConnection.GetConnection();

            SqlCommand comm = new SqlCommand("InsertProduct", conn);
            comm.CommandType = CommandType.StoredProcedure;
            comm.Parameters.AddWithValue("@p_ProductName", ProductName);
            comm.Parameters.AddWithValue("@p_CategoryID", CategoryID);
            comm.Parameters.AddWithValue("@p_SurfaceID", SurfaceID);
            comm.Parameters.AddWithValue("@p_CollectionID", CollectionID);
            comm.Parameters.AddWithValue("@p_SizeID", SizeID);
            comm.Parameters.AddWithValue("@p_DesignID", DesignID);
            comm.Parameters.AddWithValue("@p_IsNew", IsNew);

            SqlParameter paraproductid = new SqlParameter();
            paraproductid.ParameterName = "@p_ProductID";
            paraproductid.Value = ProductID;
            paraproductid.Direction = ParameterDirection.InputOutput;
            paraproductid.SqlDbType = SqlDbType.Int;
            comm.Parameters.Add(paraproductid);
            try
            {
                conn.Open();
                comm.ExecuteNonQuery();
            }
            finally
            {
                conn.Close();
                comm.Connection = null;
                comm.Dispose();
            }

            return Convert.ToInt32(paraproductid.Value);
        }


        internal static void UpdateProduct(int ProductID, string ProductName, int CategoryID, int SurfaceID, int CollectionID, int SizeID, int DesignID, int IsNew)
        {
            SqlConnection conn = DBConnection.GetConnection();

            SqlCommand comm = new SqlCommand("UpdateProduct", conn);
            comm.CommandType = CommandType.StoredProcedure;
            comm.Parameters.AddWithValue("@p_ProductName", ProductName);
            comm.Parameters.AddWithValue("@p_CategoryID", CategoryID);
            comm.Parameters.AddWithValue("@p_SurfaceID", SurfaceID);
            comm.Parameters.AddWithValue("@p_CollectionID", CollectionID);
            comm.Parameters.AddWithValue("@p_SizeID", SizeID);
            comm.Parameters.AddWithValue("@p_DesignID", DesignID);
            comm.Parameters.AddWithValue("@p_IsNew", IsNew);
            comm.Parameters.AddWithValue("@p_ProductID", ProductID);
            //string strCode = "EXEC GetPropertyAddedCount<BR>";
            //foreach (SqlParameter param in comm.Parameters)
            //{
            //    if (param.Value != null)
            //    {
            //        strCode += param.ParameterName + "='" + param.Value.ToString() + "'<BR>,";
            //    }
            //    else
            //    {
            //        strCode += param.ParameterName + "=NULL" + "<BR>,";
            //    }
            //}

           
            try
            {
                conn.Open();
                comm.ExecuteNonQuery();
            }
            finally
            {
                conn.Close();
                comm.Connection = null;
                comm.Dispose();
            }

           
        }

        internal static void InsertImageData(int ProductID, string FileName,int ImageType)
        {
            SqlConnection conn = DBConnection.GetConnection();

            SqlCommand comm = new SqlCommand("InsertImage", conn);
            comm.CommandType = CommandType.StoredProcedure;
            
            comm.Parameters.AddWithValue("@p_ImageName", FileName);
            comm.Parameters.AddWithValue("@p_ProductID", ProductID);
            comm.Parameters.AddWithValue("@p_TypeID", ImageType);
            try
            {
                conn.Open();
                comm.ExecuteNonQuery();
            }
            finally
            {
                conn.Close();
                comm.Connection = null;
                comm.Dispose();
            }
        }

        // Get Details By ID Ends


        //Update Starts

        internal static void UpdateCategory(string CategortyName, int ID)
        {
            SqlConnection conn = DBConnection.GetConnection();

            SqlCommand comm = new SqlCommand("UpdateCategory", conn);
            comm.CommandType = CommandType.StoredProcedure;
            comm.Parameters.AddWithValue("@p_CategortyName", CategortyName);
            comm.Parameters.AddWithValue("@p_ID", ID);
            try
            {
                conn.Open();
                comm.ExecuteNonQuery();
            }
            finally
            {
                conn.Close();
                comm.Connection = null;
                comm.Dispose();
            }
        }
        internal static void UpdateCollection(string CollectionName, int ID)
        {
            SqlConnection conn = DBConnection.GetConnection();

            SqlCommand comm = new SqlCommand("UpdateCollection", conn);
            comm.CommandType = CommandType.StoredProcedure;
            comm.Parameters.AddWithValue("@p_CollectionName", CollectionName);
            comm.Parameters.AddWithValue("@p_ID", ID);
            try
            {
                conn.Open();
                comm.ExecuteNonQuery();
            }
            finally
            {
                conn.Close();
                comm.Connection = null;
                comm.Dispose();
            }
        }

        internal static void UpdateDesign(string DesignName, int ID)
        {
            SqlConnection conn = DBConnection.GetConnection();

            SqlCommand comm = new SqlCommand("UpdateDesign", conn);
            comm.CommandType = CommandType.StoredProcedure;
            comm.Parameters.AddWithValue("@p_DesignName", DesignName);
            comm.Parameters.AddWithValue("@p_ID", ID);
            try
            {
                conn.Open();
                comm.ExecuteNonQuery();
            }
            finally
            {
                conn.Close();
                comm.Connection = null;
                comm.Dispose();
            }
        }

        internal static void UpdateSize(string SizeName, int ID)
        {
            SqlConnection conn = DBConnection.GetConnection();

            SqlCommand comm = new SqlCommand("UpdateSize", conn);
            comm.CommandType = CommandType.StoredProcedure;
            comm.Parameters.AddWithValue("@p_SizeName", SizeName);
            comm.Parameters.AddWithValue("@p_ID", ID);
            try
            {
                conn.Open();
                comm.ExecuteNonQuery();
            }
            finally
            {
                conn.Close();
                comm.Connection = null;
                comm.Dispose();
            }
        }

        internal static void UpdateSurface(string SurfaceName, int ID)
        {
            SqlConnection conn = DBConnection.GetConnection();

            SqlCommand comm = new SqlCommand("UpdateSurface", conn);
            comm.CommandType = CommandType.StoredProcedure;
            comm.Parameters.AddWithValue("@p_SurfaceName", SurfaceName);
            comm.Parameters.AddWithValue("@p_ID", ID);
            try
            {
                conn.Open();
                comm.ExecuteNonQuery();
            }
            finally
            {
                conn.Close();
                comm.Connection = null;
                comm.Dispose();
            }
        }

        //Update Ends







        internal static int InsertGalleryMaster(int GalleryID,string GalName, string MainImage)
        {
            SqlConnection conn = DBConnection.GetConnection();

            SqlCommand comm = new SqlCommand("InsertGalleryMaster", conn);
            comm.CommandType = CommandType.StoredProcedure;
            comm.Parameters.AddWithValue("@p_GalName", GalName);
            comm.Parameters.AddWithValue("@p_MainImage", MainImage);
            SqlParameter galleryid = new SqlParameter();
            galleryid.ParameterName = "@p_GalleryID";
            galleryid.Value = GalleryID;
            galleryid.Direction = ParameterDirection.InputOutput;
            galleryid.SqlDbType = SqlDbType.Int;
            comm.Parameters.Add(galleryid);
            try
            {
                conn.Open();
                comm.ExecuteNonQuery();
            }
            finally
            {
                conn.Close();
                comm.Connection = null;
                comm.Dispose();
            }

            return Convert.ToInt32(galleryid.Value);
        }

        internal static void InsertImageforGallery(string FileName, int GalleryID)
        {
            SqlConnection conn = DBConnection.GetConnection();

            SqlCommand comm = new SqlCommand("InsertImageforGallery", conn);
            comm.CommandType = CommandType.StoredProcedure;
            comm.Parameters.AddWithValue("@p_MainImage", FileName);
            comm.Parameters.AddWithValue("@p_GalleryID", GalleryID);
            try
            {
                conn.Open();
                comm.ExecuteNonQuery();
            }
            finally
            {
                conn.Close();
                comm.Connection = null;
                comm.Dispose();
            }
        }

        internal static void DeleteImagewithID(int ImageID)
        {
            SqlConnection conn = DBConnection.GetConnection();

            SqlCommand comm = new SqlCommand("DeleteImagewithID", conn);
            comm.CommandType = CommandType.StoredProcedure;
            comm.Parameters.AddWithValue("@p_ID", ImageID);
            try
            {
                conn.Open();
                comm.ExecuteNonQuery();
            }
            finally
            {
                conn.Close();
                comm.Connection = null;
                comm.Dispose();
            }
        }

        internal static void DeleteNewswithID(int ImageID)
        {
            SqlConnection conn = DBConnection.GetConnection();

            SqlCommand comm = new SqlCommand("DeleteNewswithID", conn);
            comm.CommandType = CommandType.StoredProcedure;
            comm.Parameters.AddWithValue("@p_ID", ImageID);
            try
            {
                conn.Open();
                comm.ExecuteNonQuery();
            }
            finally
            {
                conn.Close();
                comm.Connection = null;
                comm.Dispose();
            }
        }

        internal static DataSet EditGallery(int GalleryID)
        {
            SqlConnection conn = DBConnection.GetConnection();
            DataSet ds1 = new DataSet();
            SqlDataAdapter adp = new SqlDataAdapter("EditGallery", conn);
            adp.SelectCommand.CommandType = CommandType.StoredProcedure;
            //SqlCommand comm = new SqlCommand("GetDataforEdit", conn);
            //comm.CommandType = CommandType.StoredProcedure;
            //comm.Parameters.AddWithValue("@p_EventID", EventID);
            adp.SelectCommand.Parameters.AddWithValue("@p_ID", GalleryID);
            try
            {
                conn.Open();
                //comm.ExecuteNonQuery();
                adp.Fill(ds1);
            }
            finally
            {
                conn.Close();
                //comm.Connection = null;
                //comm.Dispose();
            }

            return ds1;
        }

        internal static void UpdateGallery(int GalleryID, string GalaryName, string MainImage)
        {
            SqlConnection conn = DBConnection.GetConnection();

            SqlCommand comm = new SqlCommand("UpdateGallery", conn);
            comm.CommandType = CommandType.StoredProcedure;
            comm.Parameters.AddWithValue("@p_GalleryID", GalleryID);
            comm.Parameters.AddWithValue("@p_GalName", GalaryName);
            comm.Parameters.AddWithValue("@p_MainImage", MainImage);
            try
            {
                conn.Open();
                comm.ExecuteNonQuery();
            }
            finally
            {
                conn.Close();
                comm.Connection = null;
                comm.Dispose();
            }
        }

        internal static void DeleteGallery(int GalleryID)
        {
            SqlConnection conn = DBConnection.GetConnection();

            SqlCommand comm = new SqlCommand("DeleteGallery", conn);
            comm.CommandType = CommandType.StoredProcedure;
            comm.Parameters.AddWithValue("@p_ID", GalleryID);
            try
            {
                conn.Open();
                comm.ExecuteNonQuery();
            }
            finally
            {
                conn.Close();
                comm.Connection = null;
                comm.Dispose();
            }
        }


        internal static DataSet GetAllGalleryImagesByID(int ID)
        {
            DataSet ds = new DataSet();
            DataTable dt = new DataTable();
            dt = null;
            SqlConnection conn = DBConnection.GetConnection();
            SqlDataAdapter adpt = new SqlDataAdapter("GetAllGalleryImagesByID", conn);
            adpt.SelectCommand.Parameters.AddWithValue("@p_GalleryID", ID);
            adpt.SelectCommand.CommandType = CommandType.StoredProcedure;
            try
            {
                conn.Open();
                adpt.Fill(ds);
            }
            finally
            {
                conn.Close();
                adpt.Dispose();
            }
           
            return ds;
        }

        internal static int InsertProductionInq(int ProductionID,string Organization, string Designation, string Name, string Address, string PhoneNo, string FaxNo, string Email, string AOI, string Message, string Reference)
        {
            SqlConnection conn = DBConnection.GetConnection();

            SqlCommand comm = new SqlCommand("InsertProductionInq", conn);
            comm.CommandType = CommandType.StoredProcedure;
            comm.Parameters.AddWithValue("@p_Organization", Organization);
            comm.Parameters.AddWithValue("@p_Designation", Designation);
            comm.Parameters.AddWithValue("@p_Name", Name);
            comm.Parameters.AddWithValue("@p_Address", Address);
            comm.Parameters.AddWithValue("@p_PhoneNo", PhoneNo);
            comm.Parameters.AddWithValue("@p_FaxNo", FaxNo);
            comm.Parameters.AddWithValue("@p_Email", Email);
            comm.Parameters.AddWithValue("@p_AOI", AOI);
            comm.Parameters.AddWithValue("@p_Message", Message);
            comm.Parameters.AddWithValue("@p_Reference", Reference);
            SqlParameter galleryid = new SqlParameter();
            galleryid.ParameterName = "@p_ProductionInq";
            galleryid.Value = ProductionID;
            galleryid.Direction = ParameterDirection.InputOutput;
            galleryid.SqlDbType = SqlDbType.Int;
            comm.Parameters.Add(galleryid);
            try
            {
                conn.Open();
                comm.ExecuteNonQuery();
            }
            finally
            {
                conn.Close();
                comm.Connection = null;
                comm.Dispose();
            }
            return Convert.ToInt32(galleryid.Value);
        }

        internal static DataTable SelectProductionInq()
        {
            DataSet ds = new DataSet();
            DataTable dt = new DataTable();
            dt = null;
            SqlConnection conn = DBConnection.GetConnection();
            SqlDataAdapter adpt = new SqlDataAdapter("SelectProductionInq", conn);
            adpt.SelectCommand.CommandType = CommandType.StoredProcedure;
            try
            {
                conn.Open();
                adpt.Fill(ds);
            }
            finally
            {
                conn.Close();
                adpt.Dispose();
            }
            if (ds.Tables.Count > 0)
            {
                dt = ds.Tables[0];
            }
            return dt;
        }

        internal static int InsertTrainingInq(int TrainingID, string Name, string Address, string PhoneNo, string FaxNo, string Email, string AOI, string Qualification, string SpecReq, string Reference, string CurrentStatus)
        {
            SqlConnection conn = DBConnection.GetConnection();

            SqlCommand comm = new SqlCommand("InsertTrainingInq", conn);
            comm.CommandType = CommandType.StoredProcedure;
            comm.Parameters.AddWithValue("@p_Name", Name);
            comm.Parameters.AddWithValue("@p_Address", Address);
            comm.Parameters.AddWithValue("@p_PhoneNo", PhoneNo);
            comm.Parameters.AddWithValue("@p_FaxNo", FaxNo);
            comm.Parameters.AddWithValue("@p_Email", Email);
            comm.Parameters.AddWithValue("@p_AOI", AOI);
            comm.Parameters.AddWithValue("@p_Qualification", Qualification);
            comm.Parameters.AddWithValue("@p_SpecReq", SpecReq);
            comm.Parameters.AddWithValue("@p_Reference", Reference);
            comm.Parameters.AddWithValue("@p_CurrentStatus", CurrentStatus);
            SqlParameter galleryid = new SqlParameter();
            galleryid.ParameterName = "@p_TrainingInq";
            galleryid.Value = TrainingID;
            galleryid.Direction = ParameterDirection.InputOutput;
            galleryid.SqlDbType = SqlDbType.Int;
            comm.Parameters.Add(galleryid);
            try
            {
                conn.Open();
                comm.ExecuteNonQuery();
            }
            finally
            {
                conn.Close();
                comm.Connection = null;
                comm.Dispose();
            }
            return Convert.ToInt32(galleryid.Value);
        }

        internal static DataTable SelectTrainingInq()
        {
            DataSet ds = new DataSet();
            DataTable dt = new DataTable();
            dt = null;
            SqlConnection conn = DBConnection.GetConnection();
            SqlDataAdapter adpt = new SqlDataAdapter("SelectTrainingInq", conn);
            adpt.SelectCommand.CommandType = CommandType.StoredProcedure;
            try
            {
                conn.Open();
                adpt.Fill(ds);
            }
            finally
            {
                conn.Close();
                adpt.Dispose();
            }
            if (ds.Tables.Count > 0)
            {
                dt = ds.Tables[0];
            }
            return dt;
        }


        internal static int InsertAlumini(int AluminiID, string StudentName, string Address, string City, string Country, string PhoneNo, string WorkingAddress, decimal Experience, string Email, string StudentNo, string Course, string PassingMonth, int PassingYear)
        {
            SqlConnection conn = DBConnection.GetConnection();

            SqlCommand comm = new SqlCommand("InsertAlumini", conn);
            comm.CommandType = CommandType.StoredProcedure;
            comm.Parameters.AddWithValue("@p_StudentName", StudentName);
            comm.Parameters.AddWithValue("@p_Address", Address);
            comm.Parameters.AddWithValue("@p_City", City);
            comm.Parameters.AddWithValue("@p_Country", Country);
            comm.Parameters.AddWithValue("@p_PhoneNo", PhoneNo);
            comm.Parameters.AddWithValue("@p_WorkingAddress", WorkingAddress);
            comm.Parameters.AddWithValue("@p_Experience", Experience);
            comm.Parameters.AddWithValue("@p_Email", Email);
            comm.Parameters.AddWithValue("@p_StudentNo", StudentNo);
            comm.Parameters.AddWithValue("@p_Course", Course);
            comm.Parameters.AddWithValue("@p_PassingMonth", PassingMonth);
            comm.Parameters.AddWithValue("@p_PassingYear", PassingYear);
            SqlParameter galleryid = new SqlParameter();
            galleryid.ParameterName = "@p_StrudentID";
            galleryid.Value = AluminiID;
            galleryid.Direction = ParameterDirection.InputOutput;
            galleryid.SqlDbType = SqlDbType.Int;
            comm.Parameters.Add(galleryid);
            try
            {
                conn.Open();
                comm.ExecuteNonQuery();
            }
            finally
            {
                conn.Close();
                comm.Connection = null;
                comm.Dispose();
            }
            return Convert.ToInt32(galleryid.Value);
        }

        internal static DataTable SelectAlumini()
        {
            DataSet ds = new DataSet();
            DataTable dt = new DataTable();
            dt = null;
            SqlConnection conn = DBConnection.GetConnection();
            SqlDataAdapter adpt = new SqlDataAdapter("SelectAlumini", conn);
            adpt.SelectCommand.CommandType = CommandType.StoredProcedure;
            try
            {
                conn.Open();
                adpt.Fill(ds);
            }
            finally
            {
                conn.Close();
                adpt.Dispose();
            }
            if (ds.Tables.Count > 0)
            {
                dt = ds.Tables[0];
            }
            return dt;
        }

        internal static int InsertVandor(int VandorID, string VendorName, string Address, string Phone, string Email, string Branches, string ECCNo, string CentralTaxNo,string CTDate, string JobType, string Country, string City, string Fax, string Website, string SalesTaxNo, string SalesTaxDate, string PersonName, string Mobile,string Designation, string CntEmail, string FileName)
        {
            SqlConnection conn = DBConnection.GetConnection();

            SqlCommand comm = new SqlCommand("InsertVandor", conn);
            comm.CommandType = CommandType.StoredProcedure;
            comm.Parameters.AddWithValue("@p_VendorName", VendorName);
            comm.Parameters.AddWithValue("@p_Address", Address);
            comm.Parameters.AddWithValue("@p_Phone", Phone);
            comm.Parameters.AddWithValue("@p_Email", Email);
            comm.Parameters.AddWithValue("@p_Branches", Branches);
            comm.Parameters.AddWithValue("@p_ECCNo", ECCNo);
            comm.Parameters.AddWithValue("@p_CentralTaxNo", CentralTaxNo);
            comm.Parameters.AddWithValue("@p_CTDate", CTDate);
            comm.Parameters.AddWithValue("@p_JobType", JobType);
            comm.Parameters.AddWithValue("@p_Country", Country);
            comm.Parameters.AddWithValue("@p_City", City);
            comm.Parameters.AddWithValue("@p_Fax", Fax);
            comm.Parameters.AddWithValue("@p_Website", Website);
            comm.Parameters.AddWithValue("@p_SalesTaxNo", SalesTaxNo);
            comm.Parameters.AddWithValue("@p_SalesTaxDate", SalesTaxDate);
            comm.Parameters.AddWithValue("@p_PersonName", PersonName);
            comm.Parameters.AddWithValue("@p_Mobile", Mobile);
            comm.Parameters.AddWithValue("@p_Designation", Designation);
            comm.Parameters.AddWithValue("@p_CntEmail", CntEmail);
            comm.Parameters.AddWithValue("@p_FileName", FileName);
            SqlParameter galleryid = new SqlParameter();
            galleryid.ParameterName = "@p_VandorID";
            galleryid.Value = VandorID;
            galleryid.Direction = ParameterDirection.InputOutput;
            galleryid.SqlDbType = SqlDbType.Int;
            comm.Parameters.Add(galleryid);
            try
            {
                conn.Open();
                comm.ExecuteNonQuery();
            }
            finally
            {
                conn.Close();
                comm.Connection = null;
                comm.Dispose();
            }
            return Convert.ToInt32(galleryid.Value);
        }

        internal static DataTable SelectVandor()
        {
            DataSet ds = new DataSet();
            DataTable dt = new DataTable();
            dt = null;
            SqlConnection conn = DBConnection.GetConnection();
            SqlDataAdapter adpt = new SqlDataAdapter("SelectVandor", conn);
            adpt.SelectCommand.CommandType = CommandType.StoredProcedure;
            try
            {
                conn.Open();
                adpt.Fill(ds);
            }
            finally
            {
                conn.Close();
                adpt.Dispose();
            }
            if (ds.Tables.Count > 0)
            {
                dt = ds.Tables[0];
            }
            return dt;
        }

        internal static int InsertNewsEvents(int ID, string Name, string Description, string Typee)
        {
            SqlConnection conn = DBConnection.GetConnection();

            SqlCommand comm = new SqlCommand("InsertNewsEvents", conn);
            comm.CommandType = CommandType.StoredProcedure;
            comm.Parameters.AddWithValue("@p_Name", Name);
            comm.Parameters.AddWithValue("@p_Description", Description);
            comm.Parameters.AddWithValue("@p_Type", Typee);


            SqlParameter galleryid = new SqlParameter();
            galleryid.ParameterName = "@p_ID";
            galleryid.Value = ID;
            galleryid.Direction = ParameterDirection.InputOutput;
            galleryid.SqlDbType = SqlDbType.Int;
            comm.Parameters.Add(galleryid);
            try
            {
                conn.Open();
                comm.ExecuteNonQuery();
            }
            finally
            {
                conn.Close();
                comm.Connection = null;
                comm.Dispose();
            }
            return Convert.ToInt32(galleryid.Value);
        }

        internal static DataTable SelectNewsEvents()
        {
            DataSet ds = new DataSet();
            DataTable dt = new DataTable();
            dt = null;
            SqlConnection conn = DBConnection.GetConnection();
            SqlDataAdapter adpt = new SqlDataAdapter("SelectNewsEvents", conn);
            adpt.SelectCommand.CommandType = CommandType.StoredProcedure;
            try
            {
                conn.Open();
                adpt.Fill(ds);
            }
            finally
            {
                conn.Close();
                adpt.Dispose();
            }
            if (ds.Tables.Count > 0)
            {
                dt = ds.Tables[0];
            }
            return dt;
        }
    }
}