using DataAcees.Object;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Linq;
namespace DataAcees
{
    public class QuanLyAnhVideoDH : DataAccessBase
    {
        public List<QuanLyAnhVideo_Obj> SelectList_ByTKID_BaoCao()
        {
            return defaultDB.ExecuteSprocAccessor<QuanLyAnhVideo_Obj>("QuanLyViDeo_SelectAll").ToList<QuanLyAnhVideo_Obj>(); 
           
        }

        public QuanLyAnhVideo_Obj QuanLyViDeo_SelectID(Int64 ID)
        {
            return defaultDB.ExecuteSprocAccessor<QuanLyAnhVideo_Obj>("QuanLyViDeo_SelectID", ID).FirstOrDefault<QuanLyAnhVideo_Obj>();

        }

        public QuanLyAnhVideo_Obj QuanLyVideo_deleteById(Int64 ID)
        {
            return defaultDB.ExecuteSprocAccessor<QuanLyAnhVideo_Obj>("QuanLyVideo_deleteById", ID).FirstOrDefault<QuanLyAnhVideo_Obj>();

        }


        public List<QuanLyAnhVideo_Obj> SelectList_By_CanHo(Int16 CanHo)
        {

            return defaultDB.ExecuteSprocAccessor<QuanLyAnhVideo_Obj>("QuanLyViDeo_SelectByCanHo", CanHo).ToList<QuanLyAnhVideo_Obj>(); 

        }

        public List<QuanLyAnhVideo_Obj> QuanLyViDeo_SelectByLoaiVideo(Int16 LoaiVideo)
        {

            return defaultDB.ExecuteSprocAccessor<QuanLyAnhVideo_Obj>("QuanLyViDeo_SelectByLoaiVideo", LoaiVideo).ToList<QuanLyAnhVideo_Obj>();

        }

        public List<QuanLyAnhVideo_Obj> QuanLyViDeo_SelectAll_QL()
        {

            return defaultDB.ExecuteSprocAccessor<QuanLyAnhVideo_Obj>("QuanLyViDeo_SelectAll_QL").ToList<QuanLyAnhVideo_Obj>();

        }

        public List<QuanLyAnhVideo_Obj> QuanLyViDeo_SelectIsAnhVideo(Int16 isAnhVideo)
        {

            return defaultDB.ExecuteSprocAccessor<QuanLyAnhVideo_Obj>("QuanLyViDeo_SelectIsAnhVideo", isAnhVideo).ToList<QuanLyAnhVideo_Obj>();

        }

        public List<QuanLyAnhVideo_Obj> QuanLyViDeo_SelectByDiaDiem(Int16 DiaDiem)
        {

            return defaultDB.ExecuteSprocAccessor<QuanLyAnhVideo_Obj>("QuanLyViDeo_SelectByDiaDiem", DiaDiem).ToList<QuanLyAnhVideo_Obj>();

        }
        public void update_QuanlyAnhVideo(Int64 ID, QuanLyAnhVideo_Obj obj)
        {
            defaultDB.ExecuteScalar("update_QuanlyAnhVideo"
                       , ID
             , obj.IS_IMAGE_VIDEO
             , obj.QUOTE
             , obj.NAME
             , obj.DURATION_VIDEO
             , obj.DIA_DIEM
             , obj.LOAI_VIDEO
             , obj.LOAI_IMAGE
             , obj.THU_TU_UU_TIEN
             ,obj.ICON_VIDEO_IMAGE);

        }
        public Int64 Insert_QuanLyAnhVideo(QuanLyAnhVideo_Obj obj)
        {
            return Convert.ToInt64(defaultDB.ExecuteScalar("Insert_QuanLyAnhVideo"
                       , obj.IS_IMAGE_VIDEO
             , obj.QUOTE
             , obj.NAME
             , obj.ICON_VIDEO_IMAGE
             , obj.DURATION_VIDEO
             , obj.DIA_DIEM
             , obj.LOAI_VIDEO
             , obj.LOAI_IMAGE
             , obj.THU_TU_UU_TIEN));

        }

    }
}
