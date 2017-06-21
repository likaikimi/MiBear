using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MiBear.DAL;
using MiBear.Models;

namespace MiBear.BLL
{
    public class LoginBLL
    {
        // 用户登录
        public static bool Login(Sys_User userModel)
        {
            return LoginDAL.Login(userModel);
        }
    }
}
