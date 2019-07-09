using DataHelper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Housing.DaoTao
{
    public partial class traloi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (var context = new HouzingEntities())
            {
                List<Question> question = (from s in context.Questions where s.CAU_HOI.Contains(txtSearch.Text) && s.ID_SUBJECT == 1 select s).ToList();
                rpCauHoi.DataSource = question;
                rpCauHoi.DataBind();
            }
        }

  
    }
}