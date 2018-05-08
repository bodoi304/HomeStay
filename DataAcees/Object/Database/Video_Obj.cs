using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DataAcees.Object
{
    public class Video_Obj
    {
        public Video_Obj()
        {

        }

        public Video_Obj(String VIDEO_URL)
        {
            this.VIDEO_URL = VIDEO_URL;
        }
        public long ID { get; set; }
        public Nullable<long> ID_VIDEO { get; set; }
        public string VIDEO_URL { get; set; }
        public string MAIN_HOVER_TEXT { get; set; }
    }
}
