using DataAcees;
using Common;
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
using System.Text;

namespace Housing.Admin.QuanLyPhong
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSign_Click(object sender, EventArgs e)
        {
            UsersDH ctlUser = new UsersDH();
            User objUser = ctlUser.validateLogin(txtEmail.Text, Utils.Encrypt(txtPassword.Text));

            if (objUser == null)
            {
                Utils.notifierPage(Page, this.GetType(), Constant.NOTIFY_FAILURE, "Tên đăng nhập hoặc mật khẩu không chính xác.", Constant.TIME_ERROR);
                return;
            }
            List<MenuItemFunction> lstMenuItem = ctlUser.getMenuItem(objUser);
            if (objUser != null)
            {
                if (objUser.LockoutEnabled)
                {
                    Utils.notifierPage(Page, this.GetType(), Constant.NOTIFY_FAILURE, "Tài khoản của bạn đã bị khóa.", Constant.TIME_ERROR);
                    return;
                }
                HttpCookie cookie = Request.Cookies[Constant.USER_COOKIE];
                if (cookie == null)
                {
                    cookie = new HttpCookie(Constant.USER_COOKIE);
                }
                StringBuilder lst = new StringBuilder();
                foreach (MenuItemFunction item in lstMenuItem)
                {
                    lst.Append("," + item.Path);
                }
                if (lstMenuItem.Count == 0)
                {
                    cookie[Constant.FUNCTION_COOKIE] = "<>";
                }
                else
                {
                    cookie[Constant.FUNCTION_COOKIE] =lst.ToString().Substring(1);
                }
                cookie[Constant.NAME_COOKIE] = objUser.Id_Login;
                cookie[Constant.VITRI] = utilsWeb.returnViTri(Convert.ToInt32(objUser.ManageHome)).ToString();
                cookie[Constant.NHAROLE] = objUser.ManageHome.ToString();
                if (chkGiuDN.Checked)
                    cookie.Expires = DateTime.Now.AddDays(30);
                else
                    cookie.Expires = DateTime.Now.AddMinutes(50);


                Response.Cookies.Add(cookie);
                HttpCookie cookieHistory = Request.Cookies[Constant.HISTORY];
                if (cookieHistory == null)
                {
                    Response.Redirect("~/Admin/Default.aspx?ban=?");
                }
                else
                {
                    cookieHistory.Expires = DateTime.Now.AddDays(-1d);
                    Response.Cookies.Add(cookieHistory);
                    Response.Redirect(cookieHistory["path"]);

                }
            }
        }
      
    }
}