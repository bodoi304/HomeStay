using Common;
using DataAcees;
using DataAcees.Object;
using DataHelper;
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
    public partial class AdminPhong : System.Web.UI.MasterPage
    {
        public String nameUser;
        protected void Page_Load(object sender, EventArgs e)
        {

            HttpCookie cookie = Request.Cookies[Constant.USER_COOKIE];
            HttpCookie cookieHistory = Request.Cookies[Constant.HISTORY];
            if (cookieHistory == null)
            {
                cookieHistory = new HttpCookie(Constant.HISTORY);
                if (!Request.Url.ToString().Contains("Login"))
                {
                    cookieHistory["path"] = Request.Url.ToString();
                    Response.Cookies.Add(cookieHistory);
                }
               
            }
            else
            {
                if (!Request.Url.ToString().Contains("Login"))
                {
                    cookieHistory["path"] = Request.Url.ToString();
                    Response.Cookies.Add(cookieHistory);
                }
            }
            if (cookie == null)
            {
                Response.Redirect("~/Admin/Login.aspx");
            }
            if (!IsPostBack)
            {
                utilsWeb.bindataNha(drNhaNao, Convert.ToInt32(cookie[Constant.NHAROLE].ToString()));
                drNhaNao.SelectedValue = cookie[Constant.VITRI].ToString();
                nameUser =cookie[Constant.NAME_COOKIE];
                if (nameUser.Equals("admin"))
                {
                    return;
                }
                String urlPath = Request.Url.AbsolutePath;
                if (urlPath.Contains("Default"))
                {
                    if (Request.QueryString["ban"] != null)
                    {
                        Utils.notifierPage(Page, this.GetType(), Constant.NOTIFY_FAILURE, "Bạn không có quyền sử dụng chức năng này.", Constant.TIME_ERROR);
                    }

                    return;
                }
                String lstFunction = cookie[Constant.FUNCTION_COOKIE];
                String[] str = lstFunction.Split(',');
                Boolean coQuyen = false;
                foreach (String item in str)
                {
                    if (!String.IsNullOrEmpty(item.Trim()))
                    {
                        if (urlPath.Contains(item.Trim()))
                        {
                            coQuyen = true;
                            break;
                        }
                    }
                  
                }
                if (!coQuyen)
                {
                   
                    Response.Redirect("~/Admin/Default.aspx?ban=?");
                }
                //Int32 cnrole = Convert.ToInt32(cookie["cnrole"].ToString());
                //if (utilsWeb.checkQuyenHienChucNang(cnrole,Constant.BIT_AND_CHUC_NANG.QUAN_LY_DAT_PHONG))           
                //    pnQuanLyDatPhong.Visible = true;
                //else
                //    pnQuanLyDatPhong.Visible = false;
                //if (utilsWeb.checkQuyenHienChucNang(cnrole, Constant.BIT_AND_CHUC_NANG.HOI_PHONG))
                //    pnHoiPhong.Visible = true;
                //else
                //    pnHoiPhong.Visible = false;
                //if (utilsWeb.checkQuyenHienChucNang(cnrole, Constant.BIT_AND_CHUC_NANG.QUAN_LY_ANH_VIDEO))
                //    pnQuanLyAnhViDeo .Visible = true;
                //else
                //    pnQuanLyAnhViDeo.Visible = false;
            }
        }



        protected void drNhaNao_SelectedIndexChanged(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies[Constant.USER_COOKIE];
            if (cookie == null)
            {
                cookie = new HttpCookie(Constant.USER_COOKIE);
            }
            cookie[Constant.VITRI ] = drNhaNao.SelectedValue;
            Response.Cookies.Add(cookie);
            Response.Redirect(Request.Url.OriginalString);
        }

        protected void lkLogOut_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies[Constant.USER_COOKIE];
            if (cookie != null)
            {
                cookie.Expires = DateTime.Now.AddDays(-1d);
                Response.Cookies.Add(cookie);
                Response.Redirect("~/Admin/Login.aspx");
            }
        }

        protected void PopupDoiMatKhau_WindowCallback(object source, DevExpress.Web.PopupWindowCallbackArgs e)
        {
            try
            {
                //Xu ly callback popup doi mat khau
                String strerror = "";
                String result = CustomValidate.checkControlEmpty(pnPopupChangePassword, new String[] { "txtMatKhauCu", "txtMatKhauMoi", "txtXacNhanMatKhauMoi" });
                if (result != null)
                {
                    PopupDoiMatKhau.JSProperties["cpUpdateStatus"] = Constant.NOTIFY_FAILURE;
                    PopupDoiMatKhau.JSProperties["cpMess"] = result;
                    return;
                }
                HttpCookie cookie = Request.Cookies[Constant.USER_COOKIE];
                if (cookie == null)
                {
                    Response.Redirect("~/Admin/Login.aspx");
                }
                UsersDH ctlUser = new UsersDH();
                String UserLog = cookie[Constant.NAME_COOKIE];
                Users objUser = ctlUser.validateLogin(UserLog, Utils.Encrypt(txtMatKhauCu.Text));
                if (objUser == null)
                {
                    PopupDoiMatKhau.JSProperties["cpUpdateStatus"] = Constant.NOTIFY_FAILURE;
                    PopupDoiMatKhau.JSProperties["cpMess"] = "Mật khẩu cũ bạn nhập không chính xác.";
                    return;
                }
                if (!txtMatKhauMoi.Text.Equals(txtXacNhanMatKhauMoi.Text))
                {
                    PopupDoiMatKhau.JSProperties["cpUpdateStatus"] = Constant.NOTIFY_FAILURE;
                    PopupDoiMatKhau.JSProperties["cpMess"] = "Xác nhận mật khẩu không chính xác.";
                    return;

                }
                ctlUser.updateUserPassword(UserLog, Utils.Encrypt(txtMatKhauMoi.Text));
                PopupDoiMatKhau.JSProperties["cpUpdateStatus"] = Constant.NOTIFY_SUCCESS;
                PopupDoiMatKhau.JSProperties["cpMess"] = String.Format("Cập nhập mật khẩu cho tài khoản [{0}] thành công.", UserLog);
                return;
            }
            catch (Exception ex)
            {
                PopupDoiMatKhau.JSProperties["cpUpdateStatus"] = Constant.NOTIFY_FAILURE;
                PopupDoiMatKhau.JSProperties["cpMess"] = ex.Message + " " + ex.StackTrace;
            }

        }
    }
}