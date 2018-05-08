using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Practices.EnterpriseLibrary.Common.Configuration;
using Microsoft.Practices.EnterpriseLibrary.Data;

using Microsoft.Practices.EnterpriseLibrary.Data.Sql;
namespace DataAcees
{
    //public static Database defaultDB ;
    public abstract class DataAccessBase
    {
        protected Database defaultDB;

        public DataAccessBase()
        {
            //Try
            defaultDB = EnterpriseLibraryContainer.Current.GetInstance<Database>("SQLConnection");
          
        }



    }
}
