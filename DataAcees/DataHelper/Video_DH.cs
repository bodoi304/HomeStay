using DataAcees.Object;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common; 

namespace DataAcees
{
    public  class Video_DH : DataAccessBase
    {

        public List<Video_Obj> Video_Selectitem(Int64 ID_VIDEO)
        {
            List<Video_Obj> a = new List<Video_Obj>();
            IEnumerable<Video_Obj> enumerable = defaultDB.ExecuteSprocAccessor<Video_Obj>("Video_Selectitem", ID_VIDEO);
            foreach (var item in enumerable)
            {
                a.Add(item);
            }
            return a;
        }

        public void Video_Updateitem(Int64 ID, String videoURL)
        {
            defaultDB.ExecuteScalar("Video_Updateitem"
                       , ID
             , videoURL);

        }

           public void Video_Insertitem( String videoURL)
        {
            defaultDB.ExecuteNonQuery("Video_Insertitem"
             , videoURL);

        }

    }
}
