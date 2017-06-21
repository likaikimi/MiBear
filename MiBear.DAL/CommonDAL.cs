using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MiBear.DAL
{
    public class CommonDAL
    {
        /// <summary>
        /// 验证ds是否为空
        /// </summary>
        /// <param name="ds">DataSet</param>
        /// <returns></returns>
        public static DataSet CheckDataSetIsNull(DataSet ds)
        {
            try
            {
                if (ds != null)
                    if (ds.Tables.Count > 0)
                        if (ds.Tables[0].Rows.Count > 0)
                            return ds;
                return null;
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        /// <summary>
        /// 验证ds返回值是否大于0
        /// </summary>
        /// <param name="ds">DataSet</param>
        /// <returns>true-返回值大于0；false-返回值是0</returns>
        public static bool CheckSaveOk(DataSet ds)
        {
            try
            {
                if (ds != null)
                    if (ds.Tables.Count > 0)
                        if (ds.Tables[0].Rows.Count > 0)
                            if (ds.Tables[0].Rows[0][0] != DBNull.Value)
                                if (Convert.ToInt32(ds.Tables[0].Rows[0][0]) > 0)
                                    return true;
                return false;
            }
            catch (Exception ex)
            {
                return false;
            }
        }

        /// <summary>
        /// 验证ds返回第一个是否是DBNull
        /// </summary>
        /// <param name="ds">DataSet</param>
        /// <returns>true-返回值大于0；false-返回值是0</returns>
        public static bool CheckIsDBNull(DataSet ds)
        {
            try
            {
                if (ds != null)
                    if (ds.Tables.Count > 0)
                        if (ds.Tables[0].Rows.Count > 0)
                            if (ds.Tables[0].Rows[0][0] != DBNull.Value)
                                if (!string.IsNullOrEmpty(ds.Tables[0].Rows[0][0].ToString()))
                                    return true;
                return false;
            }
            catch (Exception ex)
            {
                return false;
            }
        }
    }
}
