using Common;
using DataHelper;
using DevExpress.Web;
using Housing.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Housing.Admin.QuanLyTaiChinh.QuanLyChiPhi
{
    public partial class QuanLyChiPhiMain1 : System.Web.UI.Page
    {
        Quan_Ly_Chi_Phi_DH ctlQuanLyChiPhi = new Quan_Ly_Chi_Phi_DH();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                grd_ChiPhi = Utils.setDisplayGridView(grd_ChiPhi, false, true);
                BindataThemNhanh();
            }
        }
        public void BindataThemNhanh()
        {

            grd_ChiPhi.DataSource = ctlQuanLyChiPhi.getAllwithHome(Convert.ToInt32(Request.Cookies[Constant.USER_COOKIE][Constant.VITRI]));
            grd_ChiPhi.DataBind();
        }

        protected void grd_ChiPhi_RowDeleting(object sender, DevExpress.Web.Data.ASPxDataDeletingEventArgs e)
        {
            try
            {
                e.Cancel = true;
                Int64 idChiPhi = Convert.ToInt64(e.Keys[grd_ChiPhi.KeyFieldName]);
                ctlQuanLyChiPhi.deleteChiPhi(idChiPhi);
                BindataThemNhanh();
                Utils.notifierGrid(grd_ChiPhi, Constant.NOTIFY_SUCCESS, "Bạn đã xóa thành công cho số ghi nợ có ID [" + idChiPhi.ToString() + "]");
            }
            catch (Exception ex)
            {
                Utils.notifierGrid(grd_ChiPhi, Constant.NOTIFY_FAILURE, ex.Message + " " + ex.StackTrace);
            }

        }

        protected void grd_ChiPhi_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
        {
            try
            {
                e.Cancel = true;
                Int64 idChiPhi = Convert.ToInt64(e.Keys[grd_ChiPhi.KeyFieldName]);
                ASPxFormLayout pnLayData = grd_ChiPhi.FindEditFormTemplateControl("LayOutThemSua") as ASPxFormLayout;
                ASPxSpinEdit txtSotienNo = pnLayData.FindControl("txtSotienNo") as ASPxSpinEdit;
                ASPxMemo txtGhiChu = pnLayData.FindControl("txtGhiChu") as ASPxMemo;
                Quan_Ly_Chi_Phi objChiPhi = new Quan_Ly_Chi_Phi();
                objChiPhi.Ghi_Chu = txtGhiChu.Text;
                objChiPhi.So_Tien_Chi_Phi = (Decimal)txtSotienNo.Value;
                objChiPhi.Nguoi_Nhap = Request.Cookies[Constant.USER_COOKIE][Constant.NAME_COOKIE];
                objChiPhi.NGAY_TAO = DateTime.Now;
                ctlQuanLyChiPhi.updateChiPhi(idChiPhi, objChiPhi);
                BindataThemNhanh();
                Utils.notifierGrid(grd_ChiPhi, Constant.NOTIFY_SUCCESS, "Bạn đã cập nhập thành công cho số ghi nợ có ID [" + idChiPhi.ToString() + "]");
            }
            catch (Exception ex)
            {
                Utils.notifierGrid(grd_ChiPhi, Constant.NOTIFY_FAILURE, ex.Message + " " + ex.StackTrace);
            }



        }

        protected void grd_ChiPhi_RowInserting(object sender, DevExpress.Web.Data.ASPxDataInsertingEventArgs e)
        {
            try
            {
                e.Cancel = true;
                ASPxFormLayout pnLayData = grd_ChiPhi.FindEditFormTemplateControl("LayOutThemSua") as ASPxFormLayout;
                ASPxSpinEdit txtSotienNo = pnLayData.FindControl("txtSotienNo") as ASPxSpinEdit;
                ASPxMemo txtGhiChu = pnLayData.FindControl("txtGhiChu") as ASPxMemo;
                Quan_Ly_Chi_Phi objChiPhi = new Quan_Ly_Chi_Phi();
                objChiPhi.Ghi_Chu = txtGhiChu.Text;
                objChiPhi.So_Tien_Chi_Phi = (Decimal)txtSotienNo.Value;
                objChiPhi.Nguoi_Nhap = Request.Cookies[Constant.USER_COOKIE][Constant.NAME_COOKIE];
                objChiPhi.Nha_Nao = Convert.ToInt32(Request.Cookies[Constant.USER_COOKIE][Constant.VITRI]);
                objChiPhi.NGAY_TAO = DateTime.Now;
                ctlQuanLyChiPhi.insertChiPhi(objChiPhi);
                BindataThemNhanh();
                Utils.notifierGrid(grd_ChiPhi, Constant.NOTIFY_SUCCESS, "Bạn đã thêm thành công số ghi nợ có [" + objChiPhi.So_Tien_Chi_Phi + "]");
            }
            catch (Exception ex)
            {
                Utils.notifierGrid(grd_ChiPhi, Constant.NOTIFY_FAILURE, ex.Message + " " + ex.StackTrace);
            }
        }



        protected void grd_ChiPhi_PageIndexChanged(object sender, EventArgs e)
        {
            BindataThemNhanh();
        }



        protected void grd_ChiPhi_ProcessColumnAutoFilter(object sender, ASPxGridViewAutoFilterEventArgs e)
        {
            BindataThemNhanh();
        }


        protected void grd_ChiPhi_BeforeColumnSortingGrouping(object sender, ASPxGridViewBeforeColumnGroupingSortingEventArgs e)
        {
            BindataThemNhanh();
        }

        protected void grd_ChiPhi_CustomColumnDisplayText(object sender, ASPxGridViewColumnDisplayTextEventArgs e)
        {

            try
            {
                switch (e.Column.FieldName.ToString())
                {
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
                    case "So_Tien_No":
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
    }
}