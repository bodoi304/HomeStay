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

namespace Housing.Admin.QuanLyTaiChinh.QuanLyGhiNo
{
    public partial class QuanLyGhiNoMain : System.Web.UI.Page
    {
        Quan_Ly_Ghi_No_DH ctlQuanLyGhiNo = new Quan_Ly_Ghi_No_DH();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                grd_GhiNo = Utils.setDisplayGridView(grd_GhiNo, false, true);
                BindataThemNhanh();
            }
        }
        public void BindataThemNhanh()
        {

            grd_GhiNo.DataSource = ctlQuanLyGhiNo.getAllwithHome(Convert.ToInt32(Request.Cookies[Constant.USER_COOKIE][Constant.VITRI]));
            grd_GhiNo.DataBind();
        }

        protected void grd_GhiNo_RowDeleting(object sender, DevExpress.Web.Data.ASPxDataDeletingEventArgs e)
        {
            try
            {
                e.Cancel = true;
                Int64 idGhino = Convert.ToInt64(e.Keys[grd_GhiNo.KeyFieldName]);
                ctlQuanLyGhiNo.deleteGhiNo(idGhino);
                BindataThemNhanh();
                Utils.notifierGrid(grd_GhiNo, Constant.NOTIFY_SUCCESS, "Bạn đã xóa thành công cho số ghi nợ có ID [" + idGhino.ToString() + "]");
            }
            catch (Exception ex)
            {
                Utils.notifierGrid(grd_GhiNo, Constant.NOTIFY_FAILURE, ex.Message + " " + ex.StackTrace);
            }

        }

        protected void grd_GhiNo_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
        {
            try
            {
                e.Cancel = true;
                Int64 idGhino = Convert.ToInt64(e.Keys[grd_GhiNo.KeyFieldName]);
                ASPxFormLayout pnLayData = grd_GhiNo.FindEditFormTemplateControl("LayOutThemSua") as ASPxFormLayout;
                ASPxSpinEdit txtSotienNo = pnLayData.FindControl("txtSotienNo") as ASPxSpinEdit;
                ASPxMemo txtGhiChu = pnLayData.FindControl("txtGhiChu") as ASPxMemo;
                Quan_Ly_Ghi_No objghiNo = new Quan_Ly_Ghi_No();
                objghiNo.Ghi_Chu = txtGhiChu.Text;
                objghiNo.So_Tien_No = (Decimal) txtSotienNo.Value ;
                objghiNo.Nguoi_Nhap = Request.Cookies[Constant.USER_COOKIE][Constant.NAME_COOKIE];
                objghiNo.NGAY_TAO = DateTime.Now;
                ctlQuanLyGhiNo.updateGhiNo(idGhino, objghiNo);
                BindataThemNhanh();
                Utils.notifierGrid(grd_GhiNo, Constant.NOTIFY_SUCCESS, "Bạn đã cập nhập thành công cho số ghi nợ có ID [" + idGhino.ToString() + "]");
            }
            catch (Exception ex)
            {
                Utils.notifierGrid(grd_GhiNo, Constant.NOTIFY_FAILURE, ex.Message + " " + ex.StackTrace);
            }



        }

        protected void grd_GhiNo_RowInserting(object sender, DevExpress.Web.Data.ASPxDataInsertingEventArgs e)
        {
            try
            {
                e.Cancel = true;
                ASPxFormLayout pnLayData = grd_GhiNo.FindEditFormTemplateControl("LayOutThemSua") as ASPxFormLayout;
                ASPxSpinEdit txtSotienNo = pnLayData.FindControl("txtSotienNo") as ASPxSpinEdit;
                ASPxMemo txtGhiChu = pnLayData.FindControl("txtGhiChu") as ASPxMemo;
                Quan_Ly_Ghi_No objghiNo = new Quan_Ly_Ghi_No();
                objghiNo.Ghi_Chu = txtGhiChu.Text;
                objghiNo.So_Tien_No = (Decimal)txtSotienNo.Value;
                objghiNo.Nguoi_Nhap = Request.Cookies[Constant.USER_COOKIE][Constant.NAME_COOKIE];
                objghiNo.Nha_Nao =Convert.ToInt32( Request.Cookies[Constant.USER_COOKIE][Constant.VITRI]);
                objghiNo.NGAY_TAO = DateTime.Now;
                ctlQuanLyGhiNo.insertGhiNo(objghiNo);
                BindataThemNhanh();
                Utils.notifierGrid(grd_GhiNo, Constant.NOTIFY_SUCCESS, "Bạn đã thêm thành công số ghi nợ có [" + objghiNo.So_Tien_No + "]");
            }
            catch (Exception ex)
            {
                Utils.notifierGrid(grd_GhiNo, Constant.NOTIFY_FAILURE, ex.Message + " " + ex.StackTrace);
            }
        }

       

        protected void grd_GhiNo_PageIndexChanged(object sender, EventArgs e)
        {
            BindataThemNhanh();
        }



        protected void grd_GhiNo_ProcessColumnAutoFilter(object sender, ASPxGridViewAutoFilterEventArgs e)
        {
            BindataThemNhanh();
        }

       
        protected void grd_GhiNo_BeforeColumnSortingGrouping(object sender, ASPxGridViewBeforeColumnGroupingSortingEventArgs e)
        {
            BindataThemNhanh();
        }

        protected void grd_GhiNo_CustomColumnDisplayText(object sender, ASPxGridViewColumnDisplayTextEventArgs e)
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