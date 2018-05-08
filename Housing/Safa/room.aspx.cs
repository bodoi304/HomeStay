using DataAcees;
using DataAcees.Object;

using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common; 

namespace Housing.Safa
{
    public partial class room : System.Web.UI.Page
    {
        public List<Anh_Obj> lstAnh = new List<Anh_Obj>();
        protected void Page_Load(object sender, EventArgs e)
        {
            Int64 ID = Convert.ToInt64(Request.QueryString["ID"]);
            Anh_DH ctl = new Anh_DH();
            lstAnh = ctl.Anh_Selectitem(ID);
        }
    }
}