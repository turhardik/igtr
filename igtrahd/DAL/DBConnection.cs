using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace NakshatraCeramics.DAL
{
    public class DBConnection
    {
        public static SqlConnection GetConnection()
        {
            //return new SqlConnection(@"Data Source=INTEL-PC;Initial Catalog=igtrahd;Integrated Security=True");
            //return new SqlConnection(@"Data Source=103.224.241.105;Initial Catalog=igtrahdcom_igtr;Persist Security Info=True;User ID=igtrnktpl;Password=Yqg7s2%3");
            return new SqlConnection(@"Data Source=45.64.104.120,1435;Initial Catalog=igtrahd;User ID=nkigtr;Password=Nktpl@5488");

        }

    }
}

