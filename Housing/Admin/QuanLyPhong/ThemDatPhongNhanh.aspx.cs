using DataAcees;
using DataAcees.Common;
using DataAcees.Object;
using Housing.Common;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace Housing.Admin.QuanLyPhong
{
    public partial class ThemDatPhongNhanh : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblThemPhongDat.Text = lblThemPhongDat.Text + "<span  style='Color: green'>" + utilsWeb.getMaHieuPhong(Convert.ToInt32(Request.Cookies["user"]["vitri"])) + "</span>";
                lblTenNha.Text = utilsWeb.getTenNha(Convert.ToInt32(Request.Cookies["user"]["vitri"]));

           
        }

        protected void btnThemPhong_Click(object sender, EventArgs e)
        {
            try
            {
                Lich_Dat_Phong_DH ctl = new Lich_Dat_Phong_DH();

                List<LichDatPhong_Obj> lstobjL = new List<LichDatPhong_Obj>();
                LichDatPhong_Obj objLichInsert = new LichDatPhong_Obj();
                objLichInsert.Nha_Nao = Convert.ToInt32(Request.Cookies["user"]["vitri"]);
                objLichInsert.Ten_Khach_Hang = txtKhachHang.Text;
                objLichInsert.TrangThai = Constant.TRANG_THAI_PHONG.THEM_PHONG_NHANH ;
                objLichInsert.So_Phong_Dat = txtPhongDat.Text;
                String[] strNgayCheckin = txtCheckin.Text.Trim().Split('/');
                String[] strNgayCheckout = txtCheckout.Text.Trim().Split('/');

                if (strNgayCheckin.Count<String>() >= 3 && strNgayCheckout.Count<String>() >= 3)
                {
                    DateTime checkint = new DateTime(Convert.ToInt32(strNgayCheckin[2]), Convert.ToInt32(strNgayCheckin[1]), Convert.ToInt32(strNgayCheckin[0]));
                    DateTime checkout = new DateTime(Convert.ToInt32(strNgayCheckout[2]), Convert.ToInt32(strNgayCheckout[1]), Convert.ToInt32(strNgayCheckout[0]));
                    if (checkint >= checkout)
                    {
                        lblError.Text = "Bạn nhập ngày sai rồi " + txtCheckin.Text + " " + txtCheckout.Text;

                        return;
                    }
                    if ((checkout - checkint).TotalDays > 20)
                    {
                        lblError.Text = "Bạn nhập ngày sai rồi " + txtCheckin.Text + " " + txtCheckout.Text;

                        return;
                    }
                    objLichInsert.Check_in = new DateTime(Convert.ToInt32(strNgayCheckin[2]), Convert.ToInt32(strNgayCheckin[1]), Convert.ToInt32(strNgayCheckin[0]));
                    objLichInsert.Check_out = new DateTime(Convert.ToInt32(strNgayCheckout[2]), Convert.ToInt32(strNgayCheckout[1]), Convert.ToInt32(strNgayCheckout[0]));
                }
                else
                {
                    lblError.Text = "Bạn nhập ngày checkin và checkout sai rồi " + txtCheckin.Text + " " + txtCheckout.Text;
                }

                try
                {
                    objLichInsert.Tong_tien_phong = Convert.ToDecimal(txtTongTienPhong.Text.Replace(',', '.'));
                }
                catch (Exception)
                {
                    objLichInsert.Tong_tien_phong = 0;
                }
                try
                {
                    objLichInsert.Tien_chuyen_khoan = Convert.ToDecimal(txtTienChuyenKhoan.Text.Replace(',', '.'));
                }
                catch (Exception)
                {
                    objLichInsert.Tien_chuyen_khoan = 0;
                }
                try
                {
                    objLichInsert.Tien_Con_Phai_Tra = Convert.ToDecimal(txtTienConPhaiTra.Text.Replace(',', '.'));
                }
                catch (Exception)
                {
                    objLichInsert.Tien_Con_Phai_Tra = 0;
                }
                objLichInsert.Trang_Thai_CK = drTinhTrangChuyenKhoan.SelectedValue.ToString();
                objLichInsert.Ghi_chu = txtGhiChu.Text;
                objLichInsert.So_Dien_Thoai  = txtSoDienThoai .Text;
                lstobjL.Add(objLichInsert);

                StringBuilder strID = new StringBuilder();
                Boolean ketqua = ctl.insertItem(lstobjL, Request.Cookies["user"]["name"], strID);
                if (ketqua)
                {

                    lblError.Text = "Thêm đặt phòng cho khách hàng " + utilsWeb.getTenNha(Convert.ToInt32(Request.Cookies["user"]["vitri"])) + " [" + objLichInsert.Ten_Khach_Hang + "] thành công.";

                }
                else
                {
                    lblError.Text = "Có lỗi xảy ra trong quá trình insert DB";
                }


            }
            catch (Exception ex)
            {
                lblError.Text = ex.Message + " " + ex.StackTrace;
            }
        }


    }
}