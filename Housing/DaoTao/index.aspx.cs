using Common;
using DataHelper;
using Housing.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Housing.DaoTao
{
    public partial class index : System.Web.UI.Page
    {
        public Int32 IdCategory
        {
            get
            {
                object o = ViewState["IdCategory"];
                return (o == null) ? 0 : (Int32)o;
            }

            set
            {
                ViewState["IdCategory"] = value;
            }
        }
        Document_DH ctlDocument = new Document_DH();
        protected void Page_Load(object sender, EventArgs e)
        {
            utilsWeb.checkLogin(Request, Response);
            if (!IsPostBack)
            {
                grd_DSTaiLieu = Utils.setDisplayGridView(grd_DSTaiLieu, false, true);
                List<CategoryDocument> lstCategory = ctlDocument.getAllCategoryDocument();
                if (lstCategory.Count == 0)
                {
                    return;
                }
                IdCategory = lstCategory[0].ID;
                BindData(lstCategory[0].ID);
                rpCategory.DataSource = lstCategory;
                rpCategory.DataBind();
            }
            if (Request.QueryString["ID"] != null )
            {
                 BindData(Convert.ToInt32 ( Request.QueryString["ID"]));
                 return;
            }
           
        }

        public void BindData(Int32 ID_Category)
        {
            grd_DSTaiLieu.DataSource = ctlDocument.getDocumentByIDCategory(ID_Category);
            grd_DSTaiLieu.DataBind();
        }

        protected void grd_DSTaiLieu_RowCommand(object sender, DevExpress.Web.ASPxGridViewRowCommandEventArgs e)
        {

        }

        protected void grd_DSTaiLieu_PageIndexChanged(object sender, EventArgs e)
        {
            BindData(IdCategory);
        }
    }
}