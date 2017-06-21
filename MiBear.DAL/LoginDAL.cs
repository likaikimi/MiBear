using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MiBear.DBUtility;
using MiBear.Models;

namespace MiBear.DAL
{
    public class LoginDAL
    {
        // 用户登录
        public static bool Login(Sys_User userModel)
        {
            try
            {
                SqlParameter[] para = new SqlParameter[]{
                    new SqlParameter("@loginName",userModel.fLoginName),
                    new SqlParameter("@loginPwd",userModel.fLoginPwd)
                };
                DataSet ds = SqlHelper.ExecuteDataset(SqlHelper.MiBear, CommandType.StoredProcedure, "Sys_Login", para);
                return CommonDAL.CheckSaveOk(ds);
            }
            catch (Exception ex)
            {
                return false;
            }
        }
    }
}
