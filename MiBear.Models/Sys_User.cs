using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MiBear.Models
{
    public class Sys_User
    {
        public int fID { get; set; }
        public string fLoginName { get; set; }
        public string fLoginPwd { get; set; }
        public string fUserName { get; set; }
        public string fCreator { get; set; }
        public DateTime fCreatedDate { get; set; }
        public string fModifier { get; set; }
        public DateTime fModifiedDate { get; set; }
    }
}
