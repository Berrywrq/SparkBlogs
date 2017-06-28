using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using Model;
using System.Data;
using System.Data.SqlClient;

namespace BLL
{
    public class BlogManager
    {
        BlogDAO blogdao = null;
        public BlogManager()
        {
            blogdao = new BlogDAO();
        }

        /// <summary>
        /// Create a blog which can be published or saved.
        /// </summary>
        /// <param name="blog">Blog object</param>
        /// <returns></returns>
        public bool CreateBlog(Blog blog)
        {
            return blogdao.CreateBlog(blog);
        }

        /// <summary>
        /// Delete blog forever.
        /// </summary>
        /// <param name="id">Blog id</param>
        /// <returns></returns>
        public bool DeleteBlog(int id)
        {
            return blogdao.DeleteBlog(id);
        }

        /// <summary>
        ///Update blog's state.
        /// </summary>
        /// <param name="id">Blog id</param>
        /// <param name="state">Blog state</param>
        /// <returns></returns>
        public bool UpdateBlogState(int id, string state)
        {
            return blogdao.UpdateBlogState(id, state);
        }

        /// <summary>
        /// Select all blogs.
        /// </summary>
        /// <returns></returns>
        public DataTable SelectAllBlog()
        {
            return blogdao.SelectAllBlog();
        }

        /// <summary>
        /// Select most popular 10 blogs.
        /// </summary>
        /// <returns></returns>
        public DataTable SelectPopular()
        {
            return blogdao.SelectPopular();
        }

        /// <summary>
        /// Select latest 10 blogs.
        /// </summary>
        /// <returns></returns>
        public DataTable SelectLatest()
        {
            return blogdao.SelectLatest();
        }

        /// <summary>
        ///  Select blogs by category id
        /// </summary>
        /// <param name="id">Category id</param>
        /// <returns></returns>
        public DataTable SelectByCategory(string id)
        {
            return blogdao.SelectByCategory(id);
        }

        /// <summary>
        /// Select blogs by user id
        /// </summary>
        /// <param name="id">User id</param>
        /// <returns></returns>
        public DataTable SelectByUser(string id)
        {
            return blogdao.SelectByUser(id);
        }

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
            return blogdao.GetState(id);
        }

        /// <summary>
        /// Select all blogs in draft box.
        /// </summary>
        /// <returns></returns>
        public DataTable SelectDraftBlog()
        {
            return blogdao.SelectDraftBlog();
        }

        /// <summary>
        /// Select all blogs in recycle bin.
        /// </summary>
        /// <returns></returns>
        public DataTable SelectRecycleBlog()
        {
            return blogdao.SelectRecycleBlog();
        }

        /// <summary>
        /// Select blogs' comment count by blog id
        /// </summary>
        /// <param name="id">Blog id</param>
        /// <returns></returns>
        public DataTable SelectCommentCountByBlog(string id)
        {
            return blogdao.SelectCommentCountByBlog(id);
        }

        /// <summary>
        /// Select personal category by user id
        /// </summary>
        /// <param name="id">User id</param>
        /// <returns></returns>
        public DataTable SelectPersonalCateByUser(string id)
        {
            return blogdao.SelectPersonalCateByUser(id);
        }

        /// <summary>
        /// Seletct the top ten blogs by read count
        /// </summary>
        /// <param name="id">User id</param>
        /// <returns></returns>
        public DataTable SelectTopByReadCount(string id)
        {
            return blogdao.SelectTopByReadCount(id);
        }

        /// <summary>
        /// Select top ten blogs by comment count
        /// </summary>
        /// <param name="id">User id</param>
        /// <returns></returns>
        public DataTable SelectTopByCommentCount(string id)
        {
            return blogdao.SelectTopByCommentCount(id);
        }

        /// <summary>
        /// Select blog's datail by blog id
        /// </summary>
        /// <param name="id">Blog id</param>
        /// <returns></returns>
        public DataTable SelectById(string id)
        {
            return blogdao.SelectById(id);
        }
    }
}
