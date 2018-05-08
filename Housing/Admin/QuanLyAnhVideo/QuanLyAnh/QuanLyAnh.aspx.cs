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

namespace Housing.Admin.QuanLyAnhVideo.QuanLyAnh
{
    public partial class QuanLyAnh : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
     
                Bindata();
            }
        }

        protected void btnTimKiem_Click(object sender, EventArgs e)
        {
            try
            {
                List<QuanLyAnhVideo_Obj> lst = new List<QuanLyAnhVideo_Obj>();
                QuanLyAnhVideoDH ctl = new QuanLyAnhVideoDH();

                      if (drAnhVideo.SelectedValue != "0")
                {
                     lst = ctl.QuanLyViDeo_SelectIsAnhVideo(Convert.ToInt16(drAnhVideo.SelectedValue));
                    
                }
                      else if (String.IsNullOrEmpty(txtID.Text))
                {
                    lst = ctl.QuanLyViDeo_SelectAll_QL();
                }
           
                else
                {
                    var obj = ctl.QuanLyViDeo_SelectID(Convert.ToInt64(txtID.Text));
                    if (obj != null)
                    {
                        lst.Add(obj);
                    }
                    

                }


                grd_DSAnhvideo.DataSource = lst;
                grd_DSAnhvideo.DataBind();
            }
            catch (Exception ex)
            {

                lblThongBao.Text = ex.Message + " " + ex.StackTrace;
            }
        }


        public void Bindata()
        {
            try
            {
                List<QuanLyAnhVideo_Obj> lst = new List<QuanLyAnhVideo_Obj>();
                QuanLyAnhVideoDH ctl = new QuanLyAnhVideoDH();



                lst = ctl.QuanLyViDeo_SelectAll_QL();

                grd_DSAnhvideo.DataSource = lst;
                grd_DSAnhvideo.DataBind();

            }
            catch (Exception ex)
            {

                lblThongBao.Text = ex.Message + " " + ex.StackTrace;
            }


        }

        protected void grd_DSPhong_RowCommand(object sender, DevExpress.Web.ASPxGridView.ASPxGridViewRowCommandEventArgs e)
        {
            try
            {
                LinkButton Link = (LinkButton)e.CommandSource;
                if (Link.CommandName == "cmdXoa")
                {
                    String[] key = e.KeyValue.ToString().Split('|');
                    QuanLyAnhVideoDH ctl = new QuanLyAnhVideoDH();
                    Int64 ID = Convert.ToInt64(key[0]);


                    QuanLyAnhVideo_Obj objreturn =  ctl.QuanLyVideo_deleteById(ID);
                    if (!String.IsNullOrEmpty(objreturn.ICON_VIDEO_IMAGE))
                    {
                        System.IO.File.Delete(MapPath(objreturn.ICON_VIDEO_IMAGE));
                    }
                
                    Bindata();

                    lblThongBao.Text = "Xóa thành công Album có ID [" + key[0] + "]";

                }
            }
            catch (Exception ex)
            {
                lblThongBao.Text = ex.Message + " " + ex.StackTrace;
            }

        }



        protected void grd_DSPhong_CustomColumnDisplayText(object sender, DevExpress.Web.ASPxGridView.ASPxGridViewColumnDisplayTextEventArgs e)
        {
            try
            {
                switch (e.Column.FieldName.ToString())
                {
                    case "IS_IMAGE_VIDEO":
                        if (e.Value.ToString() == "1")
                        {
                            e.DisplayText = "Ảnh";
                        }
                        else if (e.Value.ToString() == "2")
                        {
                            e.DisplayText = "Video";
                        }
                        else
                            e.DisplayText = "";
                        break;
                    case "DIA_DIEM":
                        if (e.Value.ToString() == "1")
                        {
                            e.DisplayText = "Đà Lạt";
                        }
                        else if (e.Value.ToString() == "2")
                        {
                            e.DisplayText = "Hải Phòng";
                        }
                        else if (e.Value.ToString() == "3")
                        {
                            e.DisplayText = "Sapa";
                        }
                        else if (e.Value.ToString() == "4")
                        {
                            e.DisplayText = "Sải Gòn";
                        }
                        else
                            e.DisplayText = "";
                        break;
                    case "LOAI_IMAGE":

                        if (e.Value.ToString() == "1")
                        {
                            e.DisplayText = "Phòng Đà Lạt";
                        }
                        else if (e.Value.ToString() == "2")
                        {
                            e.DisplayText = "Phòng Sapa";
                        }
                        else if (e.Value.ToString() == "3")
                        {
                            e.DisplayText = "Ảnh Khách Hàng";
                        }
                        else if (e.Value.ToString() == "4")
                        {
                            e.DisplayText = "Phòng Hải Phòng";
                        }
                        else if (e.Value.ToString() == "5")
                        {
                            e.DisplayText = "Phòng Sải Gòn";
                        }
                        else
                            e.DisplayText = "";
                        break;
                    case "LOAI_VIDEO":
                        if (e.Value.ToString() == "1")
                        {
                            e.DisplayText = "Coaching";
                        }
                        else
                            e.DisplayText = "";
                        break;

                    default:
                        break;
                }
            }
            catch (Exception ex)
            {

                lblThongBao.Text = ex.Message + " " + ex.StackTrace;
            }

        }

        protected void grd_DSPhong_PageIndexChanged(object sender, EventArgs e)
        {
            Bindata();
        }

    }
}