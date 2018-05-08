using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DataAcees.Object
{
    public class KeySearchList
    {
        public DateTime CheckIn { get; set; }
        public DateTime CheckOut { get; set; }
        public Int32 Nhanao { get; set; }
        public Int64 id { get; set; }
        public String userName { get; set; }
        public String passWord { get; set; }
        public Int32 pageIndex { get; set; }
        public Int32 pageCount { get; set; }
    }
}
