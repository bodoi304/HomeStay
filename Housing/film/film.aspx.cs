using DataAcees;
using DataAcees.Object;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Housing.film
{
    public partial class film : System.Web.UI.Page
    {
       public List<Video_Obj>  lstVideo =new  List<Video_Obj>();
        protected void Page_Load(object sender, EventArgs e)
        {
            Int64 ID =Convert.ToInt64( Request.QueryString["ID"]);
            Video_DH ctl = new Video_DH();
           lstVideo= ctl.Video_Selectitem(ID);
        }
    }
}