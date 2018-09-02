using DataHelper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web;
using Housing.Common;
using DevExpress.Web.ASPxTreeList;
using Common;
using System.IO;

namespace Housing.Admin.DaoTaoAdmin
{

    public delegate void onBack();

    public partial class ThemSuaTaiLieu  : System.Web.UI.UserControl
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

        public event onBack OnBack;
        Document_DH ctlDocument = new Document_DH();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack )
            {
                Session["urlTaiLieu"] = "";
            }
        }




        protected void btnBack_Click1(object sender, EventArgs e)
        {
            OnBack();
        }



        protected void ASPxCallback1_Callback(object source, DevExpress.Web.CallbackEventArgs e)
        {
            try
            {
                ASPxCallback cb = source as ASPxCallback;
                if (String.IsNullOrEmpty (Session["urlTaiLieu"].ToString ()))
                {
                      Utils.notifierCallBack(cb, Constant.NOTIFY_SUCCESS, "Bạn chưa upload tài liệu.");
                      return;
                }
                ctlDocument.insertDocument(txtTenTaiLieu.Text, Session["urlTaiLieu"].ToString (), IdCategory);
                Utils.notifierCallBack(cb, Constant.NOTIFY_SUCCESS, "Lưu tài liệu thành công.");
                Session["urlTaiLieu"] = "";

            }
            catch (Exception ex)
            {
                Utils.notifierPage(Page, this.GetType(), Constant.NOTIFY_FAILURE, ex.Message + " " + ex.StackTrace, Constant.TIME_ERROR);
            }
        }

        protected void UploadTaiLieu_FileUploadComplete(object sender, FileUploadCompleteEventArgs e)
        {
            String resultFilePath = "";
            if (UploadTaiLieu.HasFile)
            {
                string resultExtension = Path.GetExtension(UploadTaiLieu.FileName);
                string resultFileName = Path.ChangeExtension(UploadTaiLieu.FileName + "_" + (new Random()).Next (9999999) , resultExtension);
                string resultFileUrl = "/Admin/DaoTaoAdmin/Document/" + resultFileName;
                resultFilePath = MapPath(resultFileUrl);
                UploadTaiLieu.SaveAs(resultFilePath);
                Session["urlTaiLieu"] = resultFileUrl;
            }
        }
    }
}