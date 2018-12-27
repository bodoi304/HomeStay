using Common;
using DataAcees;
using DataAcees.Object;
using Housing.Common;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Housing.Admin.QuanLyPhong
{
    public partial class SuaPhong : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblThemPhongDat.Text = lblThemPhongDat.Text + "<span  style='Color: green'>" + utilsWeb.getMaHieuPhong(Convert.ToInt32(Request.Cookies[Constant.USER_COOKIE][Constant.VITRI])) + "</span>";
            lblTenNha.Text = utilsWeb.getTenNha(Convert.ToInt32(Request.Cookies[Constant.USER_COOKIE][Constant.VITRI]));
            if (!IsPostBack)
            {
                BindData();
            }
        }

        protected void btnSuaPhong_Click(object sender, EventArgs e)
        {
            try
            {
                Int64 ID = Convert.ToInt64(Request.QueryString["bnm"]);
                Lich_Dat_Phong_DH ctl = new Lich_Dat_Phong_DH();
                LichDatPhong_Obj objLichInsert = new LichDatPhong_Obj();
                objLichInsert.ID = ID;
                objLichInsert.Ten_Khach_Hang = txtKhachHang.Text;
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
               objLichInsert.So_Dien_Thoai = txtSoDienThoai.Text ;
               if (txtNgaySinhNhat .Text.ToString().Length > 4)
               {
                   String[] strNgay = txtNgaySinhNhat.Text.Trim().Split('/');
                   if (strNgay.Count<String>() >= 3)
                   {
                       objLichInsert.Ngay_Sinh_Nhat = new DateTime(Convert.ToInt32(strNgay[2]), Convert.ToInt32(strNgay[1]), Convert.ToInt32(strNgay[0]));
                   }

               }
               else
               {
                   objLichInsert.Ngay_Sinh_Nhat = DateTime.MinValue;
               }
               try
               {
                   objLichInsert.Tong_tien_phong = Convert.ToDecimal(txtTongTienPhong.Text .Replace(',', '.'));
               }
               catch (Exception)
               {
                   objLichInsert.Tong_tien_phong = 0;
               }
               try
               {
                   objLichInsert.Tien_chuyen_khoan = Convert.ToDecimal(txtTienChuyenKhoan .Text .Replace(',', '.'));
               }
               catch (Exception)
               {
                   objLichInsert.Tien_chuyen_khoan = 0;
               }
               try
               {
                   objLichInsert.Tien_Con_Phai_Tra = Convert.ToDecimal(txtTienConPhaiTra .Text .Replace(',', '.'));
               }
               catch (Exception)
               {
                   objLichInsert.Tien_Con_Phai_Tra = 0;
               }
                objLichInsert.So_Phong_Dat = txtPhongDat.Text;
                objLichInsert.TrangThai = Constant .TRANG_THAI_PHONG .BINH_THUONG ;
                objLichInsert.Trang_Thai_CK = drTinhTrangChuyenKhoan.SelectedValue.ToString ();
                objLichInsert.Nha_Nao = Convert.ToInt32(Request.Cookies[Constant.USER_COOKIE][Constant.VITRI]);
                if (chkOtrongNgay.Checked)
                {
                    objLichInsert.Trang_Thai_Dat = 1;
                }
                else
                {
                    objLichInsert.Trang_Thai_Dat = 0;
                }
                objLichInsert.Ghi_chu = txtGhiChu.Html ;
                ctl.update_lich_dat_phong(objLichInsert, Request.Cookies[Constant.USER_COOKIE][Constant.NAME_COOKIE].ToString());
                lblError.Text = "Cập nhập đặt phòng cho khách hàng thành công.";

            }
            catch (Exception ex)
            {

                lblError.Text = ex.Message + " " + ex.StackTrace;
            }
        }

        public void BindData()
        {
            Int64 ID = Convert.ToInt64(Request.QueryString["bnm"]);
            lblTenNha.Text = "SỬA ĐẶT PHÒNG CỦA KHÁCH CÓ ID [" + Request.QueryString["bnm"] + "] NHÀ " + utilsWeb.getTenNha(Convert.ToInt32(Request.Cookies[Constant.USER_COOKIE][Constant.VITRI]));
            Lich_Dat_Phong_DH ctlLich = new Lich_Dat_Phong_DH();
            LichDatPhong_Obj objLich = ctlLich.select_item_Id(ID);
            txtKhachHang.Text = objLich.Ten_Khach_Hang;
            txtCheckin.Text = objLich.Check_in.ToString(Constant.DateTimeFormatCustom.DISPLAY_DATE_FORMAT);
            txtCheckout.Text = objLich.Check_out.ToString(Constant.DateTimeFormatCustom.DISPLAY_DATE_FORMAT);
            txtSoDienThoai.Text = objLich.So_Dien_Thoai;
            txtNgaySinhNhat.Text = objLich.Ngay_Sinh_Nhat.ToString(Constant.DateTimeFormatCustom.DISPLAY_DATE_FORMAT);
            txtTongTienPhong.Text = objLich.Tong_tien_phong.ToString();
            txtTienChuyenKhoan.Text = objLich.Tien_chuyen_khoan.ToString();
            txtTienConPhaiTra.Text = objLich.Tien_Con_Phai_Tra.ToString();
            txtPhongDat.Text = objLich.So_Phong_Dat;
            drTinhTrangChuyenKhoan.SelectedValue = objLich.Trang_Thai_CK;
            txtGhiChu.Html  = objLich.Ghi_chu;
            if (objLich.Trang_Thai_Dat == 0)
                chkOtrongNgay.Checked = false;
            else
                chkOtrongNgay.Checked = true;
          
        }

    }
}