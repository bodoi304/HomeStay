using Common;
using DataAcees;
using DataAcees.Object;
using DevExpress.Web;
using Housing.Common;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace Housing.Admin.QuanLyPhong.Glistphong
{
    public partial class GridPhong : System.Web.UI.UserControl
    {
        public Int32 Khau_NV { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Khau_NV == Constant.KHAU_NV.THEM_PHONG_EXCEL)
            {

            }
            else if (Khau_NV == Constant.KHAU_NV.SUA_THEM_PHONG_NHANH)
            {
                pnTimKiem.Visible = false;
                settitle("DANH SÁCH THÊM ĐẶT PHÒNG NHANH NHÀ ");
                if (!IsPostBack)
                {

                    BindataThemNhanh();
                }
            }
            else
            {
                if (Khau_NV != Constant.KHAU_NV.DASHBOARD)
                {
                    settitle("THÔNG TIN ĐẶT PHÒNG NHÀ ");

                }
                else
                {
                    settitle("KHÁCH SẮP ĐẾN NHÀ ");


                }

                if (!IsPostBack)
                {
                    grd_DSPhong = Utils.setDisplayGridView(grd_DSPhong, false,false  );
                    DateTime checkint = DateTime.Today.AddDays(1);
                    DateTime checkout = DateTime.Today.AddDays(10);
                    txtCheckin.Text = DateTime.Today.AddDays(1).ToString(Constant.DateTimeFormatCustom.DISPLAY_DATE_FORMAT);
                    txtCheckout.Text = DateTime.Today.AddDays(10).ToString(Constant.DateTimeFormatCustom.DISPLAY_DATE_FORMAT);
                    Bindata(checkint, checkout);
                }
            }

        }

        public void settitle(String str)
        {

            lblTitle.Text = str + utilsWeb.getTenNha(Convert.ToInt32(Request.Cookies[Constant .USER_COOKIE ][Constant.VITRI ]));

        }

        protected void btnTimKiem_Click(object sender, EventArgs e)
        {
            try
            {
                lblThongBao.Text = "";
                DateTime checkint = Utils.convertDate(txtCheckin.Text);
                DateTime checkout = Utils.convertDate(txtCheckout.Text);
                if (checkint >= checkout)
                {
                    lblThongBao.Text = "Bạn nhập ngày sai rồi." + txtCheckin.Text + " " + txtCheckout.Text;
                    return;
                }
                if (!String.IsNullOrEmpty(txtIDPhong.Text) && !utilsWeb.IsNumeric(txtIDPhong.Text))
                {
                    lblThongBao.Text = "ID đặt phòng phải là số.";
                    return;
                }

                Bindata(checkint, checkout);
            }
            catch (Exception ex)
            {

                lblThongBao.Text = ex.Message + " " + ex.StackTrace;
            }
        }

        public void BindataThemNhanh()
        {
            Lich_Dat_Phong_DH ctl = new Lich_Dat_Phong_DH();
            List<LichDatPhong_Obj> lst;

            lst = ctl.select_list_trangthai(Constant.TRANG_THAI_PHONG.THEM_PHONG_NHANH, Convert.ToInt32(Request.Cookies[Constant .USER_COOKIE ][Constant.VITRI ]));

            List<LichDatPhong_Obj> lstOrder = (from cust in lst orderby cust.Check_in ascending select cust).ToList<LichDatPhong_Obj>();
            grd_DSPhong.DataSource = lstOrder;
            grd_DSPhong.DataBind();
        }
        public void Bindata(DateTime checkint, DateTime checkout)
        {
            try
            {
                List<LichDatPhong_Obj> lst = new List<LichDatPhong_Obj>();
                Lich_Dat_Phong_DH ctl = new Lich_Dat_Phong_DH();

                if (!String.IsNullOrEmpty(txtIDPhong.Text))
                {
                    LichDatPhong_Obj objPhong = ctl.select_item_Id(Convert.ToInt64(txtIDPhong.Text));
                    if (objPhong != null)
                    {
                        lst.Add(objPhong);
                    }


                    grd_DSPhong.DataSource = lst;
                    grd_DSPhong.DataBind();
                }
                else
                {
                    List<LichDatPhong_Obj> lstOrder;
                    if (!String.IsNullOrEmpty(txtSoDienThoai.Text))
                    {

                        lst = ctl.select_item_Sdt(txtSoDienThoai.Text, Convert.ToInt32(Request.Cookies[Constant .USER_COOKIE ][Constant.VITRI ]));

                        lstOrder = (from cust in lst orderby cust.Check_in ascending select cust).ToList<LichDatPhong_Obj>();
                        grd_DSPhong.DataSource = lstOrder;
                        grd_DSPhong.DataBind();
                    }
                    else
                    {

                        lst = ctl.select_item_checkin_out_exact(checkint, checkout, Convert.ToInt32(Request.Cookies[Constant .USER_COOKIE ][Constant.VITRI ]));

                        lstOrder = (from cust in lst orderby cust.Check_in ascending select cust).ToList<LichDatPhong_Obj>();
                        grd_DSPhong.DataSource = lstOrder;
                        grd_DSPhong.DataBind();
                    }

                }

            }
            catch (Exception ex)
            {

                lblThongBao.Text = ex.Message + " " + ex.StackTrace;
            }


        }

        protected void grd_DSPhong_RowCommand(object sender, ASPxGridViewRowCommandEventArgs e)
        {
            try
            {
                LinkButton Link = (LinkButton)e.CommandSource;
                if (Link.CommandName == "cmdXoa")
                {
                    String[] key = e.KeyValue.ToString().Split('|');
                    Lich_Dat_Phong_DH ctl = new Lich_Dat_Phong_DH();
                    List<Int64> lstIDXoa = new List<Int64>();
                    lstIDXoa.Add(Convert.ToInt64(key[0]));


                    ctl.delete_lich_dat_phong(lstIDXoa);
                    if (Khau_NV == Constant.KHAU_NV.SUA_THEM_PHONG_NHANH)
                    {
                        BindataThemNhanh();
                    }
                    else
                    {
                        DateTime checkint = Utils.convertDate(txtCheckin.Text);
                        DateTime checkout = Utils.convertDate(txtCheckout.Text);
                        Bindata(checkint, checkout);
                    }

                    lblThongBao.Text = "Xóa thành công cho đặt phòng có ID [" + key[0] + "]";

                }
            }
            catch (Exception ex)
            {
                lblThongBao.Text = ex.Message + " " + ex.StackTrace;
            }

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
            if (Khau_NV == Constant.KHAU_NV.SUA_THEM_PHONG_NHANH)
            {
                BindataThemNhanh();
            }
            else
            {
                DateTime checkint = Utils.convertDate(txtCheckin.Text);
                DateTime checkout = Utils.convertDate(txtCheckout.Text);
                Bindata(checkint, checkout);
            }

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
                    lblThongBao.Text = "Bạn nhập ngày sai rồi." + txtCheckin.Text + " " + txtCheckout.Text;
                    return;
                }

                List<LichDatPhong_Obj> lstPhong = ctl.select_item_ngaytao_exact(NgayTaoTu, NgayTaoDen, Convert.ToInt32(Request.Cookies[Constant .USER_COOKIE ][Constant.VITRI ]));

                grd_DSPhong.DataSource = lstPhong;
                grd_DSPhong.DataBind();
            }
            catch (Exception ex)
            {

                lblThongBao.Text = ex.Message + " " + ex.StackTrace;
            }
        }

        protected void grd_DSPhong_HtmlRowPrepared(object sender, ASPxGridViewTableRowEventArgs e)
        {
            if (e.GetValue("Trang_Thai_Dat") != null)
            {
                if (e.GetValue("Trang_Thai_Dat").ToString().Equals("1"))
                {
                    e.Row.BackColor = Color.Red;
                }
            }

        }

        protected void grd_DSPhong_BeforeColumnSortingGrouping(object sender, ASPxGridViewBeforeColumnGroupingSortingEventArgs e)
        {
            if (Khau_NV == Constant.KHAU_NV.SUA_THEM_PHONG_NHANH)
            {
                BindataThemNhanh();
            }
            else
            {
                DateTime checkint = Utils.convertDate(txtCheckin.Text);
                DateTime checkout = Utils.convertDate(txtCheckout.Text);
                Bindata(checkint, checkout);
            }
        }





    }
}