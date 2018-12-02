using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataHelper
{
    public class Quan_Ly_Chi_Phi_DH
    {
        public List<Quan_Ly_Chi_Phi> getAllwithHome(int nhaNao)
        {
            List<Quan_Ly_Chi_Phi> ghino;
            using (var context = new HouzingEntities())
            {

                ghino = (from s in context.Quan_Ly_Chi_Phi where s.Nha_Nao == nhaNao orderby s.Ngay_Nhap_Chi_Phi descending select s).ToList();


            }
            return ghino;
        }

        public List<qlchiphi_select_item_ngaytao_exact_Result> qlchiphi_select_item_ngaytao_exact(DateTime NgayTaoTu, DateTime NgayTaoDen, int nhanao)
        {
            List<qlchiphi_select_item_ngaytao_exact_Result> lst;
            using (var context = new HouzingEntities())
            {

                lst = context.qlchiphi_select_item_ngaytao_exact(NgayTaoTu, NgayTaoDen, nhanao).ToList<qlchiphi_select_item_ngaytao_exact_Result>();


            }
            return lst;
        }

        public void deleteChiPhi(Int64 ID)
        {

            using (var context = new HouzingEntities())
            {

                Quan_Ly_Chi_Phi ghiNo = (from s in context.Quan_Ly_Chi_Phi where s.ID == ID select s).Single();
                context.Quan_Ly_Chi_Phi.Remove(ghiNo);

                context.SaveChanges();

            }

        }

        public void updateChiPhi(Int64 ID, Quan_Ly_Chi_Phi ghiNo)
        {

            using (var context = new HouzingEntities())
            {

                Quan_Ly_Chi_Phi ghinoDb = (from s in context.Quan_Ly_Chi_Phi where s.ID == ID select s).Single();
                ghinoDb.So_Tien_Chi_Phi = ghiNo.So_Tien_Chi_Phi;
                ghinoDb.Ghi_Chu = ghiNo.Ghi_Chu;
                ghinoDb.Nguoi_Nhap = ghiNo.Nguoi_Nhap;
                ghinoDb.Ngay_Nhap_Chi_Phi = ghiNo.Ngay_Nhap_Chi_Phi;
                ghinoDb.NGAY_TAO = ghiNo.NGAY_TAO;
                context.SaveChanges();

            }

        }
        public void insertChiPhi(Quan_Ly_Chi_Phi ghiNo)
        {

            using (var context = new HouzingEntities())
            {
                context.Quan_Ly_Chi_Phi.Add(ghiNo);
                context.SaveChanges();
            }

        }
    }
}
