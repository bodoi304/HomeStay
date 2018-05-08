using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DataAcees.Object
{
    public class QuanLyAnhVideo_Obj
    {
        public long ID { get; set; }
        public Nullable<short> IS_IMAGE_VIDEO { get; set; }
        public string QUOTE { get; set; }
        public string NAME { get; set; }
        public string ICON_VIDEO_IMAGE { get; set; }
        public string DURATION_VIDEO { get; set; }
        public Nullable<short> DIA_DIEM { get; set; }
        public Nullable<short> LOAI_VIDEO { get; set; }
        public Nullable<short> LOAI_IMAGE { get; set; }
        public Nullable<long> THU_TU_UU_TIEN { get; set; }
    }
}
