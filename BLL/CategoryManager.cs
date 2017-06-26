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
    public class CategoryManager
    {
        CategoryDAO catedao = null;
        public CategoryManager()
        {
            catedao = new CategoryDAO();
        }

        /// <summary>
        /// Create category.
        /// </summary>
        /// <param name="name">Category name</param>
        /// <returns></returns>
        public bool CreateCategory(string name)
        {
            return catedao.CreateCategory(name);
        }

        /// <summary>
        /// Delete category.
        /// </summary>
        /// <param name="id">Category id</param>
        /// <returns></returns>
        public bool DeleteCategory(int id)
        {
            return catedao.DeleteCategory(id);
        }

        /// <summary>
        /// Update category.
        /// </summary>
        /// <param name="id">Category id</param>
        /// <param name="name">New category name</param>
        /// <returns></returns>
        public bool UpdateCategory(int id, string name)
        {
            return catedao.UpdateCategory(id, name);
        }

        /// <summary>
        /// Select all category.
        /// </summary>
        /// <returns></returns>
        public DataTable SelectAll()
        {
            return catedao.SelectAll();
        }
    }
}
