using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MiBear.BLL;
using MiBear.Models;

namespace MiBear.Web.Service
{
    /// <summary>
    /// Login 的摘要说明
    /// </summary>
    public class Login : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";

            string action = context.Request["action"];

            //用户登录
            if (action == "UserLogin")
            {
                string loginName = context.Request["loginName"];
                string loginPwd = context.Request["loginPwd"];
                context.Response.Write(UserLogin(context, loginName, loginPwd));
            }
        }

        // 用户登录
        public string UserLogin(HttpContext context, string loginName, string loginPwd)
        {
            Sys_User userModel = new Sys_User();
            userModel.fLoginName = loginName;
            userModel.fLoginPwd = loginPwd;

            // 用户登录
            bool excuteRes = LoginBLL.Login(userModel);
            if (excuteRes)
            {
                //context.Session.Clear();
                //context.Session["UserInfo"] = model;
                return "{\"success\":true}";
            }
            else
            {
                return "{\"msg\":\"用户名或密码错误！\",\"success\":false}";
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}