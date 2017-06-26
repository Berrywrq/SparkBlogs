using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using Model;

namespace DAL
{
    public class ArticleDataDAO
    {
        SQLHelper sqlhelper = null;
        public ArticleDataDAO()
        {
            sqlhelper = new SQLHelper();
        }

        #region Update the count of reading
        /// <summary>
        /// Update the count of reading.
        /// </summary>
        /// <param name="id">Id of blog</param>
        /// <param name="count">Reading count</param>
        /// <returns></returns>
        public bool UpdateRead(int id,int count)
        {
            bool flag = false;
            string commandText = "update article_data set read_count=@count where text_id=@id";
            SqlParameter[] paras = new SqlParameter[]
            {
                new SqlParameter("@count",count),
                new SqlParameter("@id",id)
            };
            int res = sqlhelper.ExecuteNonQuery(commandText, paras, CommandType.Text);
            if (res>0)
            {
                flag = true;
            }
            return flag;
        }
        #endregion

        #region Update the count of praising
        /// <summary>
        /// Update the count of praising.
        /// </summary>
        /// <param name="id">Id of blog</param>
        /// <param name="count">Praise count</param>
        /// <returns></returns>
        public bool UpdatePraise(int id, int count)
        {
            bool flag = false;
            string commandText = "update article_data set like_count=@count where text_id=@id";
            SqlParameter[] paras = new SqlParameter[]
            {
                new SqlParameter("@count",count),
                new SqlParameter("@id",id)
            };
            int res = sqlhelper.ExecuteNonQuery(commandText, paras, CommandType.Text);
            if (res > 0)
            {
                flag = true;
            }
            return flag;
        }
        #endregion

        #region Select count of reading and praising.
        /// <summary>
        /// Select count of reading and praising.
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public DataTable SelectCount(int id)
        {
            DataTable dt = new DataTable();
            string commandText = "selete read_count,like_count from article_data where id=@id";
            SqlParameter[] paras = new SqlParameter[]
            {
                new SqlParameter("@id",id)
            };
            dt = sqlhelper.ExecuteQuery(commandText, paras, CommandType.Text);
            return dt;
        }
        #endregion
    }
}
