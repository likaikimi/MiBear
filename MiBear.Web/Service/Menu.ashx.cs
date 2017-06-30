using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using MiBear.BLL;
using MiBear.Models;

namespace MiBear.Web.Service
{
    /// <summary>
    /// Menu 的摘要说明
    /// </summary>
    public class Menu : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";

            string action = context.Request["action"];

            //用户登录
            if (action == "GetLeftMenu")
            {
                context.Response.Write(GetLeftMenu(context));
            }
        }

        // 用户登录
        public string GetLeftMenu(HttpContext context)
        {
            string executeRes = string.Empty;
            DataSet ds = MenuBLL.GetLeftMenu();
            if (ds != null)
            {
                DataRow[] drParent = ds.Tables[0].Select("fParentID = 0");
                for (int i = 0; i < drParent.Length; i++)
                {
                    int fid = Convert.ToInt32(drParent[i][0]);
                    string fName = drParent[i][2].ToString();

                    executeRes += "<li><a class=\"J_menuItem\" href=\"#\"><i class=\"fa fa-home\"></i><span class=\"nav-label\">" + fName + "</span></a></li>";
                }
            }

            // return executeRes;
            return "<li><a class=\"J_menuItem\" href=\"index_v1.html\"><i class=\"fa fa-home\"></i><span class=\"nav-label\">主页</span></a></li>" +
                "<li><a href=\"#\"><i class=\"fa fa-edit\"></i> <span class=\"nav-label\">表单</span><span class=\"fa arrow\"></span></a>" +
                "<ul class=\"nav nav-second - level\">" +
                "<li><a class=\"J_menuItem\" href=\"form_basic.html\">基本表单</a></li>" +
                "<li><a href=\"#\">文件上传 <span class=\"fa arrow\"></span></a></li>" +
                "</ul>" +
                "</li>";
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