using Common;
using DataHelper;
using DevExpress.Web;
using Housing.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Housing.Admin.DaoTaoAdmin
{
    public partial class ManageDocument : System.Web.UI.Page
    {
        Document_DH ctlDocument = new Document_DH();

        protected void Page_Load(object sender, EventArgs e)
        {
            ThemSuaTaiLieu1.OnBack += () =>
            {
                mtView.SetActiveView(vwLoaiTaiLieu);
            };
            if (!IsPostBack)
            {

                mtView.SetActiveView(vwLoaiTaiLieu);
                grd_LoaiTaiLieu = Utils.setDisplayGridView(grd_LoaiTaiLieu, true, true);
                BindataThemNhanh();
            }
        }
        public void BindataThemNhanh()
        {

            grd_LoaiTaiLieu.DataSource = ctlDocument.getAllCategoryDocument();
            grd_LoaiTaiLieu.DataBind();
        }

        protected void grd_LoaiTaiLieu_RowDeleting(object sender, DevExpress.Web.Data.ASPxDataDeletingEventArgs e)
        {
            try
            {
                e.Cancel = true;
                Int32 ID = Convert.ToInt32(e.Keys[grd_LoaiTaiLieu.KeyFieldName]);
                ctlDocument.deleteCategoryDocument(ID);
                BindataThemNhanh();
                Utils.notifierGrid(grd_LoaiTaiLieu, Constant.NOTIFY_SUCCESS, "Bạn đã xóa thành công nhóm tài liệu có ID [" + ID.ToString() + "].");

            }
            catch (Exception ex)
            {
                Utils.notifierGrid(grd_LoaiTaiLieu, Constant.NOTIFY_FAILURE, ex.Message + " " + ex.StackTrace);
            }

        }

        protected void grd_TaiLieu_RowDeleting(object sender, DevExpress.Web.Data.ASPxDataDeletingEventArgs e)
        {
            try
            {
                e.Cancel = true;
                ASPxGridView grd_TaiLieu = sender as ASPxGridView;
                Int32 ID = Convert.ToInt32(e.Keys[grd_TaiLieu.KeyFieldName]);
               Document objDocument= ctlDocument.deleteDocument(ID);
               if (!String.IsNullOrEmpty(objDocument.PathDocument ))
               {
                   System.IO.File.Delete(MapPath(objDocument.PathDocument));
               }
                BindataThemNhanh();
                Object objKey = grd_TaiLieu.GetMasterRowKeyValue();
                String[] str = objKey.ToString().Split('|');
                Int32 IdCategory = Convert.ToInt32(str[0]);
                List<Document> lstDocument = ctlDocument.getDocumentByIDCategory(IdCategory);
                grd_TaiLieu.DataSource = lstDocument;
                Utils.notifierGrid(grd_LoaiTaiLieu, Constant.NOTIFY_SUCCESS, "Bạn đã xóa thành công tài liệu có ID [" + ID.ToString() + "].");
            }
            catch (Exception ex)
            {
                Utils.notifierGrid(grd_LoaiTaiLieu, Constant.NOTIFY_FAILURE, ex.Message + " " + ex.StackTrace);
            }

        }


        protected void grd_LoaiTaiLieu_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
        {
            try
            {
                e.Cancel = true;
                Int32 ID = Convert.ToInt32(e.Keys[grd_LoaiTaiLieu.KeyFieldName]);
                ASPxFormLayout pnLayData = grd_LoaiTaiLieu.FindEditFormTemplateControl("LayOutThemSua") as ASPxFormLayout;
                ASPxTextBox txtName = pnLayData.FindControl("txtName") as ASPxTextBox;
                ctlDocument.updateCategoryDocument(ID, txtName.Text);
                BindataThemNhanh();
                Utils.notifierGrid(grd_LoaiTaiLieu, Constant.NOTIFY_SUCCESS, "Bạn đã cập nhập thành công cho nhóm tài liệu có ID [" + ID.ToString() + "]");
            }
            catch (Exception ex)
            {
                Utils.notifierGrid(grd_LoaiTaiLieu, Constant.NOTIFY_FAILURE, ex.Message + " " + ex.StackTrace);
            }



        }

        protected void grd_LoaiTaiLieu_RowInserting(object sender, DevExpress.Web.Data.ASPxDataInsertingEventArgs e)
        {
            try
            {
                e.Cancel = true;
                ASPxFormLayout pnLayData = grd_LoaiTaiLieu.FindEditFormTemplateControl("LayOutThemSua") as ASPxFormLayout;
                ASPxMemo txtNote = pnLayData.FindControl("txtNote") as ASPxMemo;
                ASPxTextBox txtName = pnLayData.FindControl("txtName") as ASPxTextBox;
                ctlDocument.insertCategoryDocument(txtName.Text);
                BindataThemNhanh();
                Utils.notifierGrid(grd_LoaiTaiLieu, Constant.NOTIFY_SUCCESS, "Bạn đã thêm thành công nhóm tài liệu [" + txtName.Text + "].");
            }
            catch (Exception ex)
            {
                Utils.notifierGrid(grd_LoaiTaiLieu, Constant.NOTIFY_FAILURE, ex.Message + " " + ex.StackTrace);
            }
        }

        protected void grd_LoaiTaiLieu_RowCommand(object sender, ASPxGridViewRowCommandEventArgs e)
        {
            LinkButton Link = (LinkButton)e.CommandSource;
            if (Link.CommandName == "cmdDocument")
            {
                String[] key = e.KeyValue.ToString().Split('|');
                Int32 IdCategory = Convert.ToInt32(key[0]);
                mtView.SetActiveView(vwThemTaiLieu);
                ThemSuaTaiLieu1.IdCategory = IdCategory;
            }
        }

        protected void grd_LoaiTaiLieu_PageIndexChanged(object sender, EventArgs e)
        {
            BindataThemNhanh();
        }



        protected void grd_LoaiTaiLieu_ProcessColumnAutoFilter(object sender, ASPxGridViewAutoFilterEventArgs e)
        {
            BindataThemNhanh();
        }

        protected void grd_LoaiTaiLieu_RowValidating(object sender, DevExpress.Web.Data.ASPxDataValidationEventArgs e)
        {
            Utils.notifierListClearGrid(grd_LoaiTaiLieu, Constant.NOTIFY_CLEAR);
            List<Error_Obj> lstError = new List<Error_Obj>();
            ASPxFormLayout pnLayData = grd_LoaiTaiLieu.FindEditFormTemplateControl("LayOutThemSua") as ASPxFormLayout;
            ASPxTextBox txtName = pnLayData.FindControl("txtName") as ASPxTextBox;
            if (String.IsNullOrEmpty(txtName.Text))
            {
                lstError.Add(new Error_Obj { error = "[Tên nhóm tài liệu] không được để trống." });
            }
            CategoryDocument objCategory = ctlDocument.getCategoryDocumentByName(txtName.Text.Trim());
            if (objCategory != null && grd_LoaiTaiLieu.IsNewRowEditing)
            {
                lstError.Add(new Error_Obj { error = "[Tên nhóm tài liệu] đã tồn tại." });
            }
            if (lstError.Count > 0)
            {
                e.Errors[grd_LoaiTaiLieu.Columns[0]] = "error";
                Utils.notifierListErrorGrid(grd_LoaiTaiLieu, Constant.NOTIFY_FAILURE, lstError);
            }

        }

        protected void grd_LoaiTaiLieu_BeforeColumnSortingGrouping(object sender, ASPxGridViewBeforeColumnGroupingSortingEventArgs e)
        {
            BindataThemNhanh();
        }

        protected void grd_TaiLieu_BeforePerformDataSelect(object sender, EventArgs e)
        {

            if (!HF.Contains("collapsedRowKey"))
            {
                ASPxGridView grd_Document = sender as ASPxGridView;
                Object objKey = grd_Document.GetMasterRowKeyValue();
                String[] str = objKey.ToString().Split('|');
                Int32 IdCategory = Convert.ToInt32(str[0]);
                List<Document> lstDocument = ctlDocument.getDocumentByIDCategory(IdCategory);
                grd_Document.DataSource = lstDocument;
            }

        }
    }
}