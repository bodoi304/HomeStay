using Common;
using DataAcees;
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
    public partial class QLP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

                lblTiTT.Text = "THÊM THÔNG TIN ĐẶT PHÒNG TỪ EXCEL NHÀ " + utilsWeb.getTenNha(Convert.ToInt32(Request.Cookies[Constant.USER_COOKIE ][Constant .VITRI ]));

            GridPhong.Khau_NV  = Constant .KHAU_NV .THEM_PHONG_EXCEL ;
            GridPhong.pnTimKiem.Visible = false;
            GridPhong.lblTitle.Text = "CÁC ĐẶT PHÒNG VỪA THÊM VÀO HỆ THỐNG";
            GridPhong.grd_DSPhong.Columns[0].Visible = false;
            GridPhong.grd_DSPhong.Columns[1].Visible = false;
            if (!IsPostBack )
            {
                GridPhong.Visible = false;
            }
           
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            try
            {
                Lich_Dat_Phong_DH ctl = new Lich_Dat_Phong_DH();

                List<LichDatPhong_Obj> lstobjL = new List<LichDatPhong_Obj>();
                int Nhanao = Convert.ToInt32(Request.Cookies[Constant.USER_COOKIE][Constant.VITRI]);

                String[] banghi = txtNhapTTCH.Text.Split('\n');
                foreach (String item in banghi)
                {
                    LichDatPhong_Obj objL = new LichDatPhong_Obj();
                    String[] a = item.Split('\t');
                    objL.Ten_Khach_Hang = a[0];
                    objL.So_Dien_Thoai = a[1];
                    if (a[2].ToString().Length > 4)
                    {
                        String[] strNgay= a[2].Trim().Split('/');
                        if (strNgay.Count<String>() >= 3)
                        {
                            objL.Ngay_Sinh_Nhat = new DateTime(Convert.ToInt32(strNgay[2]), Convert.ToInt32(strNgay[1]), Convert.ToInt32(strNgay[0]));
                        } 
                        
                    }
                    else
                    {
                        objL.Ngay_Sinh_Nhat = DateTime.MinValue;
                    }


                    objL.Noi_Song = a[3];
                    objL.So_Phong_Dat = a[4];
                    String[] strNgayCheckin = a[5].Trim().Split('/');
                    String[] strNgayCheckout = a[6].Trim().Split('/');
                   
                    if (strNgayCheckin.Count<String>() >= 3 && strNgayCheckout.Count<String>() >= 3)
                    {
                        DateTime checkint = new DateTime(Convert.ToInt32(strNgayCheckin[2]), Convert.ToInt32(strNgayCheckin[1]), Convert.ToInt32(strNgayCheckin[0]));
                        DateTime checkout = new DateTime(Convert.ToInt32(strNgayCheckout[2]), Convert.ToInt32(strNgayCheckout[1]), Convert.ToInt32(strNgayCheckout[0]));
                        if (checkint >= checkout)
                        {
                            lblError.Text = "Bạn nhập ngày sai rồi " + a[5] + " " + a[6];
                         
                            return;
                        }
                        if ((checkout - checkint).TotalDays > 20)
                        {
                            lblError.Text = "Bạn nhập ngày sai rồi " + a[5] + " " + a[6];
                           
                            return;
                        }
                        objL.Check_in = new DateTime(Convert.ToInt32(strNgayCheckin[2]), Convert.ToInt32(strNgayCheckin[1]), Convert.ToInt32(strNgayCheckin[0]));
                        objL.Check_out = new DateTime(Convert.ToInt32(strNgayCheckout[2]), Convert.ToInt32(strNgayCheckout[1]), Convert.ToInt32(strNgayCheckout[0]));
                    }
                    else
                    {
                        lblError.Text = "Bạn nhập ngày checkin và checkout sai rồi " + a[5] + " " + a[6];
                    }
                   
                    try
                    {
                        objL.Tong_tien_phong = Convert.ToDecimal(a[7].Replace (',','.'));
                    }
                    catch (Exception)
                    {
                        objL.Tong_tien_phong = 0;
                    }
                    try
                    {
                        objL.Tien_chuyen_khoan = Convert.ToDecimal(a[8].Replace (',','.'));
                    }
                    catch (Exception)
                    {
                        objL.Tien_chuyen_khoan = 0;
                    }
                    try
                    {
                       objL.Tien_Con_Phai_Tra = Convert.ToDecimal(a[10].Replace (',','.'));
                    }
                    catch (Exception)
                    {
                        objL.Tien_Con_Phai_Tra = 0;
                    }

                    objL.Trang_Thai_CK = a[9];
                    try
                    {
                        objL.Tong_so_dem = Convert.ToInt32(a[11]);
                    }
                    catch (Exception)
                    {
                        objL.Tong_so_dem = 0;
                    }
                   
                    objL.Quoc_Gia = a[12];
                    objL.Ghi_chu = a[13];
                    objL.Thu_checkin = "";
                    objL.Th_checkout = "";
                    objL.Nha_Nao = Nhanao;
                    objL.TrangThai = Constant.TRANG_THAI_PHONG.BINH_THUONG;
                    lstobjL.Add(objL);
                }
                StringBuilder strID = new StringBuilder();
                Boolean ketqua = ctl.insertItem(lstobjL, Request.Cookies["user"]["name"], strID);
                if (ketqua)
                {
                    String abc = "";
                    foreach (var item in lstobjL)
                    {
                        abc += "[" +item.Ten_Khach_Hang + "]";
                    }
                    lblError.Text = "Thêm đặt phòng cho khách hàng " + utilsWeb.getTenNha(Convert.ToInt32(Request.Cookies[Constant.USER_COOKIE][Constant.VITRI])) + " " + abc + " thành công.";
                    GridPhong.Visible = true ;
                    GridPhong.lblTitle.Text = "ĐẶT PHÒNG ĐÃ THÊM";
                    GridPhong.grd_DSPhong.DataSource = ctl.select_lstId(strID.ToString().Substring(1));
                    GridPhong.grd_DSPhong.DataBind();
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