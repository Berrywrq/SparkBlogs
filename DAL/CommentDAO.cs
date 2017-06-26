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
    public class CommentDAO
    {
        SQLHelper sqlhelper;
        public CommentDAO()
        {
            sqlhelper = new SQLHelper();
        }

        #region Create comment
        /// <summary>
        /// Create comment.
        /// </summary>
        /// <param name="comment">Comment object</param>
        /// <returns></returns>
        public bool CreateComment(Comment comment)
        {
            bool flag = false;
            string commandText = "comment_create";
            SqlParameter[] paras = new SqlParameter[]
            {
                new SqlParameter("@user_id",comment.UserId),
                new SqlParameter("@text_id",comment.TextId),
                new SqlParameter("@text",comment.Text),
                new SqlParameter("@upper_id",comment.UpperId),
                new SqlParameter("@upper_text",comment.UpperText),
                new SqlParameter("@upper_name",comment.UpperName)
            };
            int res = sqlhelper.ExecuteNonQuery(commandText, paras, CommandType.StoredProcedure);
            if (res > 0)
            {
                flag = true;
            }
            return flag;
        }
        #endregion

        #region Delete comment
        /// <summary>
        /// Delete comment.
        /// </summary>
        /// <param name="comment">Comment object</param>
        /// <returns></returns>
        public bool DeleteComment(int id)
        {
            bool flag = false;
            string commandText = "comment_delete";
            SqlParameter[] paras = new SqlParameter[]
            {
                new SqlParameter("@id",id)
            };
            int res = sqlhelper.ExecuteNonQuery(commandText, paras, CommandType.StoredProcedure);
            if (res > 0)
            {
                flag = true;
            }
            return flag;
        }
        #endregion

        #region Select all comment under a blog
        /// <summary>
        /// Select all blog.
        /// </summary>
        /// <returns></returns>
        public DataTable SelectAllBlog(int textId)
        {
            DataTable dt = new DataTable();
            string commandText = "comment_selectAll";
            SqlParameter[] paras = new SqlParameter[]
            {
                new SqlParameter("@text_id",textId)
            };
            dt = sqlhelper.ExecuteQuery(commandText,paras,CommandType.StoredProcedure);
            return dt;
        }
        #endregion

    }
}
