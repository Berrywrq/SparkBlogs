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
    public class CategoryDAO
    {
        SQLHelper sqlhelper = null;
        public CategoryDAO()
        {
            sqlhelper = new SQLHelper();
        }

        #region Create category
        /// <summary>
        /// Create category.
        /// </summary>
        /// <param name="name">Category name</param>
        /// <returns></returns>
        public bool CreateCategory(string name)
        {
            bool flag = false;
            string commandText = "insert into category(name) values(@name)";
            SqlParameter[] paras = new SqlParameter[]
            {
                new SqlParameter("@name",name)
            };
            int res = sqlhelper.ExecuteNonQuery(commandText, paras, CommandType.Text);
            if (res>0)
            {
                flag = true;
            }
            return flag;
        }
        #endregion

        #region Delete category
        /// <summary>
        /// Delete category.
        /// </summary>
        /// <param name="id">Category id</param>
        /// <returns></returns>
        public bool DeleteCategory(int id)
        {
            bool flag = false;
            string commandText = "category_delete";
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

        #region Update category
        /// <summary>
        /// Update category.
        /// </summary>
        /// <param name="id">Category id</param>
        /// <param name="name">New category name</param>
        /// <returns></returns>
        public bool UpdateCategory(int id,string name)
        {
            bool flag = false;
            string commandText = "update category set name=@name where category_id=@id";
            SqlParameter[] paras = new SqlParameter[]
            {
                new SqlParameter("@id",id),
                new SqlParameter("@name",name)
            };
            int res = sqlhelper.ExecuteNonQuery(commandText, paras, CommandType.Text);
            if (res > 0)
            {
                flag = true;
            }
            return flag;
        }
        #endregion

        #region Select all category
        /// <summary>
        /// Select all category.
        /// </summary>
        /// <returns></returns>
        public DataTable SelectAll()
        {
            DataTable dt = new DataTable();
            string commandText = "select * from category";
            dt = sqlhelper.ExecuteQuery(commandText, CommandType.Text);
            return dt;
        }
        #endregion
    }
}
