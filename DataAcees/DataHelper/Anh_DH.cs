using DataAcees.Object;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Linq;
namespace DataAcees
{
    public class Anh_DH : DataAccessBase
    {
        public List<Anh_Obj> Anh_Selectitem(Int64 ID_IMAGE)
        {
            return defaultDB.ExecuteSprocAccessor<Anh_Obj>("Anh_Selectitem", ID_IMAGE).ToList<Anh_Obj>();
        }

        public Anh_Obj Anh_SelectitemID(Int64 ID)
        {
            return defaultDB.ExecuteSprocAccessor<Anh_Obj>("Anh_SelectitemID", ID).FirstOrDefault<Anh_Obj>();
        }


        public Int64 Anh_insertItem(Anh_Obj obj)
        {

            return Convert.ToInt64( defaultDB.ExecuteScalar("Anh_insertItem"
                       , obj.ID_IMAGE
             , obj.IMAGE_THUMB_URL
             , obj.IMAGE_URL
             , obj.VITRI_IMAGE
             , obj.TITLE_IMAGE
             , obj.IMAGE_HOVER));

        }


        public Anh_Obj Anh_Deleteitem(Int64 ID)
        {

           return  defaultDB.ExecuteSprocAccessor<Anh_Obj>("Anh_Deleteitem"
                , ID).FirstOrDefault<Anh_Obj>();

        }

        public void Anh_updateItem(Int64 ID,Anh_Obj obj)
        {

            defaultDB.ExecuteScalar("Anh_updateItem"
                ,ID
                       , obj.ID_IMAGE
             , obj.VITRI_IMAGE
             , obj.TITLE_IMAGE
             , obj.IMAGE_HOVER);

        }

             public void Anh_updateItemSua(Int64 ID,Anh_Obj obj)
        {

            defaultDB.ExecuteScalar("Anh_updateItemSua"
                ,ID
             , obj.VITRI_IMAGE
             , obj.TITLE_IMAGE
             , obj.IMAGE_HOVER
             , obj.IMAGE_URL
             ,obj.Sap_xep );

        }
        
    }
}
