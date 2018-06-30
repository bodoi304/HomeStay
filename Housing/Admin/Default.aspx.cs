using Common;
using DataAcees;
using DataAcees.Object;
using Housing.Common;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Housing.Admin
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridPhong1.Khau_NV = Constant .KHAU_NV .DASHBOARD ;
               
        }
    }
}