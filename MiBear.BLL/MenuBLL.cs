using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MiBear.DAL;

namespace MiBear.BLL
{
    public class MenuBLL
    {
        // 获取左侧菜单
        public static DataSet GetLeftMenu()
        {
            return MenuDAL.GetLeftMenu();
        }
    }
}
