using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataHelper
{
   public class Quan_Ly_Ghi_No_DH
    {
        public List<Quan_Ly_Ghi_No> getAllwithHome(int nhaNao)
        {
            List<Quan_Ly_Ghi_No> ghino;
            using (var context = new HouzingEntities())
            {

                ghino = (from s in context.Quan_Ly_Ghi_No where s.Nha_Nao  == nhaNao select s).ToList();


            }
            return ghino;
        }

     
        public void deleteGhiNo(Int64 ID)
        {

            using (var context = new HouzingEntities())
            {

                Quan_Ly_Ghi_No ghiNo = (from s in context.Quan_Ly_Ghi_No where s.ID == ID select s).Single();
                context.Quan_Ly_Ghi_No.Remove(ghiNo);

                context.SaveChanges();

            }

        }

        public void updateGhiNo(Int64 ID, Quan_Ly_Ghi_No ghiNo)
        {

            using (var context = new HouzingEntities())
            {

                Quan_Ly_Ghi_No ghinoDb = (from s in context.Quan_Ly_Ghi_No where s.ID == ID select s).Single();
                ghinoDb.So_Tien_No = ghiNo.So_Tien_No;
                ghinoDb.Ghi_Chu = ghiNo.Ghi_Chu;
                ghinoDb.Nguoi_Nhap = ghiNo.Nguoi_Nhap;
                ghinoDb.NGAY_TAO = ghiNo.NGAY_TAO;
                context.SaveChanges();

            }

        }
        public void insertGhiNo(Quan_Ly_Ghi_No ghiNo)
        {

            using (var context = new HouzingEntities())
            {
                context.Quan_Ly_Ghi_No.Add(ghiNo);
                context.SaveChanges();
            }

        }
    }
}
