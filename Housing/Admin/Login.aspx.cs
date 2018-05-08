using DataAcees;
using DataAcees.Common;
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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSign_Click(object sender, EventArgs e)
        {
            User_DH ctl = new User_DH();
            User_Obj objUser = ctl.Check_User(txtEmail.Text.ToLower(), txtPassword.Text);
            if (objUser != null)
            {
                HttpCookie cookie = Request.Cookies["user"];
                if (cookie == null)
                {
                    cookie = new HttpCookie("user");
                }
                cookie["name"] = objUser.User_Name;
                cookie["nharole"] = objUser.User_Role.ToString();
                cookie["cnrole"] = objUser.Function_Role.ToString();
                cookie["vitri"] = utilsWeb.returnViTri(objUser.User_Role).ToString ();
                if (chkGiuDN.Checked)
                   cookie.Expires = DateTime.Now.AddDays(30);
                else
                  cookie.Expires = DateTime.Now.AddMinutes(50);

              
                Response.Cookies.Add(cookie);
                Response.Redirect("~/Admin/Default.aspx");

            }
        }
    }
}