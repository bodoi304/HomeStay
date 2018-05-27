using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DataAcees.Common
{
   public class Constant
    {
       public class ACTION
       {
           public const Int32 LichDatPhong_selectInOutNhaNao = 1;
           public const Int32 LichDatPhong_selectKhachId = 2;
           public const Int32 LichDatPhong_DeleteKhachId = 3;
           public const Int32 LogIn = 99;
       }

       public const int Anh = 1;
       public const int Video = 2;
       public class LOAI_VIDEO
       {
           public const int VideoCoaching = 1;
       }
       public class LOAI_IMAGE
       {
           public const int PhongDaLat = 1;
           public const int PhongSapa = 2;
           public const int AnhKhachHang = 3;
           public const int PHONG_HAI_PHONG = 4;
       }

       public class KHAU_NV
       {
           public const int THEM_PHONG_EXCEL = 1;
           public const int SUA_THEM_PHONG_NHANH = 2;
           public const int DASHBOARD = 3;
       }

       public class TRANG_THAI_PHONG
       {
           public const int BINH_THUONG = 0;
           public const int THEM_PHONG_NHANH = 1;

       }
       public class DateTimeFormatCustom
{
    public const string DISPLAY_DATE_FORMAT_NUMBER = "yyyyMMdd";
    public const string DISPLAY_DATE_FORMAT = "dd/MM/yyyy";
    public const string DISPLAY_DATETIME_FORMAT = "dd/MM/yyyy HH:mm";
    public const string DISPLAY_DATETIME_FORMAT_EXT = "dd/MM/yyyy HH:mm:ss";
    public const string DISPLAY_DATETIME_FORMAT_PRIN = "dd/MM/yyyy, HH:mm";
    public const string DISPLAY_DATE_FORMAT_GACH = "dd-MM-yyyy";
    public const string DISPLAY_DATE_FORMAT_GACH_ASEAN = "yyyy-MM-dd";
    public const string EDIT_DATE_FORMAT = "dd/MM/yyyy";
    public const string EDIT_DATETIME_FORMAT = "dd/MM/yyyy HH:mm";
}

        public class Numbers
{
    public const string DISPLAY_NUMBER ="###,##0.######";
    public const string DISPLAY_NUMBER_KetQuaThanhKhoan = "###,##0.####";
  
}
      

       public class DIA_DIEM
       {
           public const int DALAT = 1;
           public const int HAIPHONG = 2;
           public const int SAPA = 3;
           public const int SAIGON = 4;
           public const int LALA = 5;
       }

       public class NHA_NAO
       {
           public const int YOKO =3;
           public const int ANAN = 1;
           public const int SAFA = 2;
           public const int TINA = 4;
           public const int LALA = 5;
       }

       public class BIT_AND_NHA_NAO
       {
           public const int YOKO = 2;
           public const int ANAN = 1;
           public const int SAFA = 4;
           public const int TINA = 8;
           public const int LALA = 16;
       }

       public class BIT_AND_CHUC_NANG
       {
           public const int QUAN_LY_DAT_PHONG = 1;
           public const int QUAN_LY_ANH_VIDEO = 2;
           public const int HOI_PHONG = 4;

       }

    }
}
