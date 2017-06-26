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
     public class CommentManager
    {
        CommentDAO comdao = null;
        public CommentManager()
        {
            comdao = new CommentDAO();
        }

        /// <summary>
        /// Create comment.
        /// </summary>
        /// <param name="comment">Comment object</param>
        /// <returns></returns>
        public bool CreateComment(Comment comment)
        {
            return comdao.CreateComment(comment);
        }

        /// <summary>
        /// Delete comment.
        /// </summary>
        /// <param name="comment">Comment object</param>
        /// <returns></returns>
        public bool DeleteComment(int id)
        {
            return comdao.DeleteComment(id);
        }

        /// <summary>
        /// Select all blog.
        /// </summary>
        /// <returns></returns>
        public DataTable SelectAllBlog(int textId)
        {
            return comdao.SelectAllBlog(textId);
        }
    }
}
