using DataAcees.Object;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Linq;
using System.Text;
namespace DataAcees
{
    public class Lich_Dat_Phong_DH : DataAccessBase
    {
        public List<LichDatPhong_Obj> select_item_checkin_out(DateTime ngayCheck, int nhanao)
        {

            return defaultDB.ExecuteSprocAccessor<LichDatPhong_Obj>("select_item_checkin_out", ngayCheck, nhanao).ToList<LichDatPhong_Obj>();


        }

        public LichDatPhong_Obj select_item_Id(Int64 ID)
        {

            return defaultDB.ExecuteSprocAccessor<LichDatPhong_Obj>("select_item_Id", ID).FirstOrDefault<LichDatPhong_Obj>();

        }

        public List<LichDatPhong_Obj> select_lstId(String lstID)
        {

            return defaultDB.ExecuteSqlStringAccessor<LichDatPhong_Obj>("select * from Lich_Dat_Phong where  ID in (" + lstID + ")").ToList<LichDatPhong_Obj>();

        }


        public List<LichDatPhong_Obj> select_item_checkin_out_exact(DateTime Checkin, DateTime Checkout, int nhanao)
        {
            List<LichDatPhong_Obj> enumerable = defaultDB.ExecuteSprocAccessor<LichDatPhong_Obj>("select_item_checkin_out_exact", Checkin, Checkout, nhanao).ToList<LichDatPhong_Obj>();
            return enumerable;

        }

        public List<LichDatPhong_Obj> select_item_checkin_out_exact_byPageIndex(DateTime Checkin, DateTime Checkout, int nhanao, int PageIndex, int Pagesize)
        {
            List<LichDatPhong_Obj> enumerable = defaultDB.ExecuteSprocAccessor<LichDatPhong_Obj>("select_item_checkin_out_exact_byPageIndex", Checkin, Checkout, nhanao, PageIndex, Pagesize).ToList<LichDatPhong_Obj>();
            return enumerable;

        }
        

        public List<LichDatPhong_Obj> select_item_Sdt(String So_Dien_thoai, int nhanao)
        {
            List<LichDatPhong_Obj> enumerable = defaultDB.ExecuteSprocAccessor<LichDatPhong_Obj>("select_item_Sdt", So_Dien_thoai, nhanao).ToList<LichDatPhong_Obj>();
            return enumerable;

        }

        public List<LichDatPhong_Obj> select_list_trangthai( int trangthai,int Nhanao)
        {
            List<LichDatPhong_Obj> enumerable = defaultDB.ExecuteSprocAccessor<LichDatPhong_Obj>("select_list_trangthai", trangthai, Nhanao).ToList<LichDatPhong_Obj>();
            return enumerable;

        }

        public Boolean insertItem(List<LichDatPhong_Obj> lstobj, String user, StringBuilder strId)
        {
            DbConnection conn = defaultDB.CreateConnection();
            conn.Open();
            DbTransaction tran = conn.BeginTransaction();
            try
            {
                foreach (LichDatPhong_Obj obj in lstobj)
                {
                    String ID = defaultDB.ExecuteScalar(tran, "Lich_Dat_Phong_InsertItem", obj.Ten_Khach_Hang
                      , obj.So_Dien_Thoai
                      , obj.Ngay_Sinh_Nhat
                      , obj.Noi_Song
                      , obj.So_Phong_Dat
                      , obj.Check_in
                      , obj.Check_out
                      , obj.Tong_tien_phong
                      , obj.Tien_chuyen_khoan
                      , obj.Trang_Thai_CK
                      , obj.Tien_Con_Phai_Tra
                      , obj.Tong_so_dem
                      , obj.Quoc_Gia
                      , obj.Ghi_chu
                      , obj.Thu_checkin
                      , obj.Th_checkout
                      , obj.Nha_Nao
                      , user, obj.TrangThai ).ToString();
                    strId.Append("," + ID);
                }
                tran.Commit();
                return true;

            }
            catch (Exception)
            {
                tran.Rollback();
                return false;
            }
            finally
            {
                conn.Close();
                conn.Dispose();
            }


        }
        public Boolean delete_lich_dat_phong(List<Int64> lstID)
        {
            DbConnection conn = defaultDB.CreateConnection();
            conn.Open();
            DbTransaction tran = conn.BeginTransaction();
            try
            {
                foreach (Int64 ID in lstID)
                {
                    defaultDB.ExecuteNonQuery(tran, "delete_lich_dat_phong", ID);
                }
                tran.Commit();
                return true;

            }
            catch (Exception)
            {
                tran.Rollback();
                return false;
            }
            finally
            {
                conn.Close();
                conn.Dispose();
            }


        }

        public Boolean update_lich_dat_phong(LichDatPhong_Obj objLich, String Nguoi_Nhap)
        {

            try
            {

                defaultDB.ExecuteNonQuery("update_lich_dat_phong", objLich.ID 
                    , objLich.Ten_Khach_Hang 
                    , objLich.Check_in  
                    , objLich.Check_out 
                    , objLich.So_Dien_Thoai 
                    , objLich.Ngay_Sinh_Nhat 
                    , objLich.Tong_tien_phong 
                    , objLich.Tien_chuyen_khoan 
                    , objLich.Tien_Con_Phai_Tra 
                    , objLich.So_Phong_Dat 
                    , Nguoi_Nhap
                    , objLich.TrangThai
                    , objLich.Trang_Thai_CK 
                    , objLich.Nha_Nao
                    , objLich.Ghi_chu );

                return true;

            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message ,ex);
            }



        }

    }
}
