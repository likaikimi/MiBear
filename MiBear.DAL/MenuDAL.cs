using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MiBear.DBUtility;

namespace MiBear.DAL
{
    public class MenuDAL
    {
        // 获取左侧菜单
        public static DataSet GetLeftMenu()
        {
            try
            {
                DataSet ds = SqlHelper.ExecuteDataset(SqlHelper.MiBear, CommandType.StoredProcedure, "Sys_LeftMenu");
                return CommonDAL.CheckDataSetIsNull(ds);
            }
            catch (Exception ex)
            {
                return null;
            }
        }
    }
}
