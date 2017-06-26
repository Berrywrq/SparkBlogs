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
    public class ArticleDataManager
    {
        ArticleDataDAO arcdao = null;
        public ArticleDataManager()
        {
            arcdao = new DAL.ArticleDataDAO();
        }

        /// <summary>
        /// Update the count of reading.
        /// </summary>
        /// <param name="id">Id of blog</param>
        /// <param name="count">Reading count</param>
        /// <returns></returns>
        public bool UpdateRead(int id, int count)
        {
            return arcdao.UpdateRead(id, count);
        }

        /// <summary>
        /// Update the count of praising.
        /// </summary>
        /// <param name="id">Id of blog</param>
        /// <param name="count">Praise count</param>
        /// <returns></returns>
        public bool UpdatePraise(int id, int count)
        {
            return arcdao.UpdatePraise(id, count);
        }

        /// <summary>
        /// Select count of reading and praising.
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public DataTable SelectCount(int id)
        {
            return SelectCount(id);
        }
    }
}
