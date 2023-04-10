using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GourmetShopWeb
{
    public static class db
    {
        // https://learn.microsoft.com/en-us/dotnet/framework/data/adonet/sql-server-connection-pooling
        // a binary exact conneciton string is required for proper pooling
        public static string getConnectionString()
        {
            // return "Server=10.48.38.5;database=GourmetShop;UID=DataConnect;PWD=CentraliaIT;";
            // the below should work for those at home
                return "Server=.;database=GourmetShop;trusted_connection=true;";

        }
    }
}