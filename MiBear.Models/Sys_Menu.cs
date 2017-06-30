using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MiBear.Models
{
    public class Sys_Menu
    {
        int fID { get; set; }
        int fParentID { get; set; }
        string fName { get; set; }
        string fURL { get; set; }
        int fOrder { get; set; }
        string fImgSrc { get; set; }
        int fCreator { get; set; }
        DateTime fCreatedDate { get; set; }
        int fModifier { get; set; }
        DateTime fModifiedDate { get; set; }
    }
}
