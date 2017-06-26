/*
*Author:HarryWang
*Create Time:2017/5/28
*Description:SQLHelper
*All rights resevred by HarryWang
*/

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace DAL
{
    public class SQLHelper
    {
        private SqlConnection conn = null;
        private SqlCommand cmd = null;
        private SqlDataReader dr = null;
        public SQLHelper()
        {
            string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
            conn = new SqlConnection(connStr);
        }

        /// <summary>
        /// Open connection.
        /// </summary>
        /// <returns></returns>
        public SqlConnection GetConn()
        {
            if (conn.State==ConnectionState.Closed)
            {
                conn.Open();
            }
            return conn;
        }

        /// <summary>
        /// Excute CUD SQL command or stored procedure with no parameter.
        /// </summary>
        /// <param name="cmdText">SQL command or stored procedure name</param>
        /// <param name="ct">Command type</param>
        /// <returns></returns>
        public int ExecuteNonQuery(string cmdText,CommandType ct)
        {
            int res;
            try
            {
                cmd = new SqlCommand(cmdText, GetConn());
                cmd.CommandType = ct;
                res = cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (conn.State==ConnectionState.Open)
                {
                    conn.Close();
                }             
            }
            return res;
        }

        /// <summary>
        /// Excute CUD SQL command or stored procedure with parameters.
        /// </summary>
        /// <param name="cmdText">SQL command or stored procedure name</param>
        /// <param name="paras">Parameters</param>
        /// <param name="ct">Command type</param>
        /// <returns></returns>
        public int ExecuteNonQuery(string cmdText,SqlParameter[]paras,CommandType ct)
        {
            int res;
            using (cmd = new SqlCommand(cmdText, GetConn()))
            {
                cmd.CommandType = ct;
                cmd.Parameters.AddRange(paras);
                res = cmd.ExecuteNonQuery();
            }
            return res;
        }

        /// <summary>
        /// Excute SQL command or stored procedure with no parameter for retrieving.
        /// </summary>
        /// <param name="cmdText">SQL command or stored procedure name</param>
        /// <param name="ct">Command type</param>
        /// <returns></returns>
        public DataTable ExecuteQuery(string cmdText,CommandType ct)
        {
            DataTable dt = new DataTable();
            cmd = new SqlCommand(cmdText, GetConn());
            cmd.CommandType = ct;
            using (dr = cmd.ExecuteReader(CommandBehavior.CloseConnection))//It can guarantee that when the SqlDataReader object is closed, 
            {                                                              //its dependent connection will be automatically closed
                dt.Load(dr);
            }
            return dt;
        }

        /// <summary>
        /// Excute SQL command or stored procedure with parameters for retrieving.
        /// </summary>
        /// <param name="cmdText">SQL command or stored procedure name</param>
        /// <param name="ct">Command type</param>
        /// <returns></returns>
        public DataTable ExecuteQuery(string cmdText,SqlParameter []paras, CommandType ct)
        {
            DataTable dt = new DataTable();
            cmd = new SqlCommand(cmdText, GetConn());
            cmd.CommandType = ct;
            cmd.Parameters.AddRange(paras);
            using (dr = cmd.ExecuteReader(CommandBehavior.CloseConnection))
            {
                dt.Load(dr);
            }
            return dt;
        }

    }
}
