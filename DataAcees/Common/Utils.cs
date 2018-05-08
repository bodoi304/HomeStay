using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DataAcees.Common
{
    public class Utils
    {
        public static DateTime convertDate(String str)
        {
            DateTime checkint = new DateTime(Convert.ToInt32(str.Substring(6, 4)), Convert.ToInt32(str.Substring(3, 2)), Convert.ToInt32(str.Substring(0, 2)));
            return checkint;
        }
 
        public static List<T> Json_2_ListObject<T>(String sInput)
        {
            if (String.IsNullOrEmpty(sInput))
                return null;
            else
                return (List<T>)JsonConvert.DeserializeObject(sInput, typeof(List<T>));
        }

        public static String ListObject_2_Json<T>(List<T> lstInput) where T : class
        {
  
                return JsonConvert.SerializeObject(lstInput);
          
        }

        public static T Json_2_Object<T>(String sInput)
        {
            if (String.IsNullOrEmpty(sInput))
                return default(T);
            else
                return (T)JsonConvert.DeserializeObject(sInput, typeof(T));
        }

        public static String Object_2_Json(object objInput)
        {
            if (IsObject(objInput))
                return JsonConvert.SerializeObject(objInput);
            else
                return String.Empty;
        }

        public static Boolean IsObject(object objInput)
        {
            if (objInput != null)
                return true;
            else
                return false;
        }
    
    }
}
