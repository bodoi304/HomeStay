using DataAcees;
using DataAcees.Object;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Housing.LaLa
{
    public partial class RoomLaLa : System.Web.UI.Page
    {
        public List<Anh_Obj> lstAnh = new List<Anh_Obj>();
        public List<Anh_Obj> lstAnhChung = new List<Anh_Obj>();
        protected void Page_Load(object sender, EventArgs e)
        {
            Int64 ID = Convert.ToInt64(Request.QueryString["ID"]);
            Anh_DH ctl = new Anh_DH();
            lstAnh = ctl.Anh_Selectitem(ID);
            lstAnhChung = ctl.Anh_Selectitem(10042);
        }
    }
}