using Common;
using DataAcees;
using DataAcees.Object;
using DataHelper;
using DevExpress.Web;
using Housing.Common;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Housing.Admin.QuanLyTaiChinh.QuanLyThongKeLoiNhuan
{
    public partial class QuanLyThongKeLoiNhuanMain : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnNgayTaoTK_Click(object sender, EventArgs e)
        {
            try
            {
                Lich_Dat_Phong_DH ctl = new Lich_Dat_Phong_DH();
                lblThongBao.Text = "";
                DateTime NgayTaoTu = Utils.convertDate(txtNgayTaoTu.Text);
                DateTime NgayTaoDen = Utils.convertDate(txtNgayTaoDen.Text).AddHours(24);
                if (NgayTaoTu >= NgayTaoDen)
                {
                    lblThongBao.Text = "Bạn nhập ngày sai rồi." + txtNgayTaoTu.Text + " " + txtNgayTaoDen.Text;
                    return;
                }            
                lbl.Visible = true;
                Label2.Visible = true;
                Label4.Visible = true;
                decimal tongthu = Bindata(NgayTaoTu, NgayTaoDen);
                decimal tongchiphi = BindataThemNhanh(NgayTaoTu, NgayTaoDen);
                decimal tongloinhuan = tongthu - tongchiphi;
                lblChiPhi.Text = (tongchiphi * 1000).ToString(Constant.Numbers.DISPLAY_NUMBER);
                lblLoiNhuan.Text = (tongloinhuan * 1000).ToString(Constant.Numbers.DISPLAY_NUMBER);
                lblTongDoanhThu.Text = (tongthu * 1000).ToString(Constant.Numbers.DISPLAY_NUMBER);
            }
            catch (Exception ex)
            {

                lblThongBao.Text = ex.Message + " " + ex.StackTrace;
            }
        }


        public decimal Bindata(DateTime checkint, DateTime checkout)
        {
            decimal tongdoanhthu = 0;
            try
            {

                grd_DSPhong.Visible = true;
                List<LichDatPhong_Obj> lst = new List<LichDatPhong_Obj>();
                Lich_Dat_Phong_DH ctl = new Lich_Dat_Phong_DH();


                List<LichDatPhong_Obj> lstOrder;


                lst = ctl.select_item_ngaytao_exact(checkint, checkout, Convert.ToInt32(Request.Cookies[Constant.USER_COOKIE][Constant.VITRI]));
                foreach (LichDatPhong_Obj item in lst)
                {
                    if (item.Tong_tien_phong > 15000)
                    {
                        item.Tong_tien_phong = item.Tong_tien_phong / 1000;
                    }
                    tongdoanhthu += item.Tong_tien_phong;
                }
                lstOrder = (from cust in lst orderby cust.Check_in ascending select cust).ToList<LichDatPhong_Obj>();
                grd_DSPhong.DataSource = lstOrder;
                grd_DSPhong.DataBind();



            }
            catch (Exception ex)
            {

                lblThongBao.Text = ex.Message + " " + ex.StackTrace;
            }

            return tongdoanhthu;
        }

        protected void grd_DSPhong_CustomColumnDisplayText(object sender, ASPxGridViewColumnDisplayTextEventArgs e)
        {
            try
            {
                switch (e.Column.FieldName.ToString())
                {
                    case "Check_in":
                        e.DisplayText = Convert.ToDateTime(e.Value.ToString()).ToString(Constant.DateTimeFormatCustom.DISPLAY_DATE_FORMAT);
                        break;
                    case "Check_out":
                        e.DisplayText = Convert.ToDateTime(e.Value.ToString()).ToString(Constant.DateTimeFormatCustom.DISPLAY_DATE_FORMAT);
                        break;
                    case "Ngay_Sinh_Nhat":
                        DateTime strDate = Convert.ToDateTime(e.Value.ToString());
                        if (strDate == DateTime.MinValue)
                        {
                            e.DisplayText = "";
                        }
                        else
                        {
                            e.DisplayText = Convert.ToDateTime(e.Value.ToString()).ToString(Constant.DateTimeFormatCustom.DISPLAY_DATE_FORMAT);
                        }
                        break;
                    case "NGAY_TAO":
                        DateTime strDate1 = Convert.ToDateTime(e.Value.ToString());
                        if (strDate1 == DateTime.MinValue)
                        {
                            e.DisplayText = "";
                        }
                        else
                        {
                            e.DisplayText = Convert.ToDateTime(e.Value.ToString()).ToString(Constant.DateTimeFormatCustom.DISPLAY_DATE_FORMAT);
                        }


                        break;
                    case "Tien_chuyen_khoan":
                        e.DisplayText = Convert.ToDecimal(e.Value.ToString()).ToString(Constant.Numbers.DISPLAY_NUMBER);
                        break;
                    case "Tien_Con_Phai_Tra":
                        e.DisplayText = Convert.ToDecimal(e.Value.ToString()).ToString(Constant.Numbers.DISPLAY_NUMBER);
                        break;
                    case "Tong_tien_phong":
                        e.DisplayText = Convert.ToDecimal(e.Value.ToString()).ToString(Constant.Numbers.DISPLAY_NUMBER);
                        break;

                    default:
                        break;
                }
            }
            catch (Exception ex)
            {

                lblThongBao.Text = ex.Message + " " + ex.StackTrace;
            }

        }

        protected void grd_DSPhong_PageIndexChanged(object sender, EventArgs e)
        {
            DateTime checkint = Utils.convertDate(txtNgayTaoTu.Text);
            DateTime checkout = Utils.convertDate(txtNgayTaoDen.Text);
            Bindata(checkint, checkout);
        }

        protected void grd_ChiPhi_CustomColumnDisplayText(object sender, ASPxGridViewColumnDisplayTextEventArgs e)
        {

            try
            {
                switch (e.Column.FieldName.ToString())
                {
                    case "Ngay_Nhap_Chi_Phi":
                        DateTime strDate1 = Convert.ToDateTime(e.Value.ToString());
                        if (strDate1 == DateTime.MinValue)
                        {
                            e.DisplayText = "";
                        }
                        else
                        {
                            e.DisplayText = Convert.ToDateTime(e.Value.ToString()).ToString(Constant.DateTimeFormatCustom.DISPLAY_DATE_FORMAT);
                        }
                        break;
                    case "So_Tien_Chi_Phi":
                        e.DisplayText = Convert.ToDecimal(e.Value.ToString()).ToString(Constant.Numbers.DISPLAY_NUMBER);
                        break;


                    default:
                        break;
                }
            }
            catch (Exception ex)
            {


            }


        }

        protected void grd_ChiPhi_PageIndexChanged(object sender, EventArgs e)
        {
            DateTime NgayTaoTu = Utils.convertDate(txtNgayTaoTu.Text);
            DateTime NgayTaoDen = Utils.convertDate(txtNgayTaoDen.Text).AddHours(24);
            BindataThemNhanh(NgayTaoTu, NgayTaoDen);
        }

        public decimal BindataThemNhanh(DateTime checkint, DateTime checkout)
        {
            decimal tongchiphi = 0;
            grd_ChiPhi.Visible = true;
            Quan_Ly_Chi_Phi_DH ctlQuanLyChiPhi = new Quan_Ly_Chi_Phi_DH();
            List<qlchiphi_select_item_ngaytao_exact_Result> lst = ctlQuanLyChiPhi.qlchiphi_select_item_ngaytao_exact(checkint, checkout, Convert.ToInt32(Request.Cookies[Constant.USER_COOKIE][Constant.VITRI]));

            foreach (qlchiphi_select_item_ngaytao_exact_Result item in lst)
            {
                if (item.So_Tien_Chi_Phi > 15000)
                {
                    item.So_Tien_Chi_Phi = item.So_Tien_Chi_Phi / 1000;
                }
                tongchiphi += item.So_Tien_Chi_Phi??0;
            }
            grd_ChiPhi.DataSource = lst;
            grd_ChiPhi.DataBind();
            return tongchiphi;
        }
    }
}