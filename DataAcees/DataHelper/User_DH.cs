using DataAcees.Object;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;

namespace DataAcees
{
    public class User_DH : DataAccessBase
    {
        public User_Obj Check_User(String User, String Pass)
        {
            User_Obj a = null;
            IEnumerable<User_Obj> enumerable = defaultDB.ExecuteSprocAccessor<User_Obj>("Check_User", User, Pass);
            foreach (var item in enumerable)
            {
                a = item;
            }

            return a;
        }

      

    }
}
