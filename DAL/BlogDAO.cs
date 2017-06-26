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
    public class BlogDAO
    {
        SQLHelper sqlhelper;
        public BlogDAO()
        {
            sqlhelper = new SQLHelper();
        }

        #region Create blog
        /// <summary>
        /// Create a blog which can be published or saved.
        /// </summary>
        /// <param name="blog">Blog object</param>
        /// <returns></returns>
        public bool CreateBlog(Blog blog)
        {
            bool flag = false;
            string commandText = "blog_create";
            SqlParameter[] paras = new SqlParameter[]
            {
                new SqlParameter("@author_id",blog.AuthorId),
                new SqlParameter("@author_name",blog.AuthorName),
                new SqlParameter("@title",blog.Title),
                new SqlParameter("@label",blog.Lable),
                new SqlParameter("@personal_category",blog.PersonalCategory),
                new SqlParameter("@distribution",blog.Distribution),
                new SqlParameter("@state",blog.State),
                new SqlParameter("@category_id",blog.CategoryId)
            };
            int res = sqlhelper.ExecuteNonQuery(commandText, paras, CommandType.StoredProcedure);
            if (res>0)
            {
                flag = true;
            }
            return flag;
        }
        #endregion

        #region Delete blog
        /// <summary>
        /// Delete blog forever.
        /// </summary>
        /// <param name="id">Blog id</param>
        /// <returns></returns>
        public bool DeleteBlog(int id)
        {
            bool flag = false;
            string commandText = "blog_delete";
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

        #region Update blog's state
        /// <summary>
        ///Update blog's state.
        /// </summary>
        /// <param name="id">Blog id</param>
        /// <param name="state">Blog state</param>
        /// <returns></returns>
        public bool UpdateBlogState(int id,string state)
        {
            bool flag = false;
            string commandText = "blog_updateState";
            SqlParameter[] paras = new SqlParameter[]
            {
                new SqlParameter("@id",id),
                new SqlParameter("@state",state)
            };
            int res = sqlhelper.ExecuteNonQuery(commandText, paras, CommandType.StoredProcedure);
            if (res > 0)
            {
                flag = true;
            }
            return flag;
        }
        #endregion

        #region Select all blogs
        /// <summary>
        /// Select all blogs.
        /// </summary>
        /// <returns></returns>
        public DataTable SelectAllBlog()
        {
            DataTable dt = new DataTable();
            string commandText = "blog_selectAll";
            dt = sqlhelper.ExecuteQuery(commandText, CommandType.StoredProcedure);
            return dt;
        }
        #endregion

        #region Select most popular 10 blogs
        /// <summary>
        /// Select most popular 10 blogs.
        /// </summary>
        /// <returns></returns>
        public DataTable SelectPopular()
        {
            DataTable dt = new DataTable();
            string commandText = "blog_selectPopularNews";
            dt = sqlhelper.ExecuteQuery(commandText, CommandType.StoredProcedure);
            return dt;
        }
        #endregion

        #region Select latest 10 blogs
        /// <summary>
        /// Select latest 10 blogs.
        /// </summary>
        /// <returns></returns>
        public DataTable SelectLatest()
        {
            DataTable dt = new DataTable();
            string commandText = "blog_selectLatestNews";
            dt = sqlhelper.ExecuteQuery(commandText, CommandType.StoredProcedure);
            return dt;
        }
        #endregion

        #region Select blogs by category id
        /// <summary>
        ///  Select blogs by category id
        /// </summary>
        /// <param name="id">Category id</param>
        /// <returns></returns>
        public DataTable SelectByCategory(string id)
        {
            DataTable dt = new DataTable();
            string commandText = "blog_selectByCategory";
            SqlParameter[] paras = new SqlParameter[]
            {
                new SqlParameter("@id",id)
            };
            dt = sqlhelper.ExecuteQuery(commandText, paras, CommandType.StoredProcedure);
            return dt;
        }
        #endregion

        #region Select blogs by user id
        /// <summary>
        /// Select blogs by user id
        /// </summary>
        /// <param name="id">User id</param>
        /// <returns></returns>
        public DataTable SelectByUser(int id)
        {
            DataTable dt = new DataTable();
            string commandText = "blog_selectByUser";
            SqlParameter[] paras = new SqlParameter[]
            {
                new SqlParameter("@id",id)
            };
            dt = sqlhelper.ExecuteQuery(commandText, paras, CommandType.StoredProcedure);
            return dt;
        }
        #endregion

        #region Get state
        /// <summary>
        /// Get state
        /// When visiters want to praise the blog but 
        /// the author has deleted the blog before they
        /// refresh the page .So the server must check 
        /// the state of blogs.
        /// <param name="id"></param>
        /// <returns></returns>
        public DataTable GetState(int id)
        {
            DataTable dt = new DataTable();
            string commandText = "select state from article_data where text_id='" + id + "'";
            dt = sqlhelper.ExecuteQuery(commandText, CommandType.StoredProcedure);
            return dt;
        }
        #endregion

        #region Select all blogs in draft box
        /// <summary>
        /// Select all blogs in draft box.
        /// </summary>
        /// <returns></returns>
        public DataTable SelectDraftBlog()
        {
            DataTable dt = new DataTable();
            string commandText = "blog_selectDraft";
            dt = sqlhelper.ExecuteQuery(commandText, CommandType.StoredProcedure);
            return dt;
        }
        #endregion

        #region Select all blogs in recycle bin
        /// <summary>
        /// Select all blogs in recycle bin.
        /// </summary>
        /// <returns></returns>
        public DataTable SelectRecycleBlog()
        {
            DataTable dt = new DataTable();
            string commandText = "blog_selectRecycle";
            dt = sqlhelper.ExecuteQuery(commandText, CommandType.StoredProcedure);
            return dt;
        }
        #endregion

    }
}
