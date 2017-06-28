/*
*Author:HarryWang
*Create Time:2017/5/28
*Description:UserDAO
*All rights resevred by HarryWang
*/
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
    public class UsersDAO
    {
        SQLHelper sqlhelper;
        public UsersDAO()
        {
            sqlhelper = new SQLHelper();
        }

        #region User registration
        /// <summary>
        /// User registration
        /// </summary>
        /// <param name="user">Object user</param>
        /// <returns></returns>
        public bool RegisterUser(Users user)
        {
            bool flag = false;
            SqlParameter[] paras = new SqlParameter[]
            {
                new SqlParameter("@user_name",user.Name),
                new SqlParameter("@password",user.Password),
                new SqlParameter("@question",user.Question),
                new SqlParameter("@answer",user.Answer)
            };
            string commandText = "users_register";
            int res = sqlhelper.ExecuteNonQuery(commandText, paras, CommandType.StoredProcedure);
            if (res>0)
            {
                flag = true;
            }
            return flag;
        }
        #endregion

        #region Delete user
        /// <summary>
        /// Delete user.
        /// </summary>
        /// <param name="id">User's id</param>
        /// <returns></returns>
        public bool DeleteUser(int id)
        {
            bool flag = false;
            string commandText = "users_delete";
            SqlParameter[] paras = new SqlParameter[]
            {
                new SqlParameter("@id",id)
            };
            int res = sqlhelper.ExecuteNonQuery(commandText,paras,CommandType.StoredProcedure);
            if (res>0)
            {
                flag = true;
            }
            return flag;
        }
        #endregion

        #region Update user's information
        /// <summary>
        /// Update user's information
        /// </summary>
        /// <param name="id">User's id</param>
        /// <returns></returns>
        public bool UpdateInfo(int id,string description)
        {
            bool flag = false;
            string commandText = "users_updateInfo";
            SqlParameter[] paras = new SqlParameter[]
            {
                new SqlParameter("@id",id),
                new SqlParameter("@description",description)
            };
            int res = sqlhelper.ExecuteNonQuery(commandText, paras, CommandType.StoredProcedure);
            if (res>0)
            {
                flag = true;
            }
            return flag;
        }
        #endregion

        #region Update user's password
        /// <summary>
        /// Update user's password and question
        /// </summary>
        /// <param name="id">User's id</param>
        /// <returns></returns>
        public bool UpdatePassword(int id,string password,string question,string answer)
        {
            bool flag = false;
            string commandText = "users_updatePassword";
            SqlParameter[] paras = new SqlParameter[]
            {
                new SqlParameter("@id",id),
                new SqlParameter("@password",password),
                new SqlParameter("@question",question),
                new SqlParameter("@answer",answer)
            };
            int res = sqlhelper.ExecuteNonQuery(commandText, paras, CommandType.StoredProcedure);
            if (res>0)
            {
                flag = true;
            }
            return flag;
        }
        #endregion

        #region Select all users
        /// <summary>
        /// Selete all users.
        /// </summary>
        /// <returns></returns>
        public DataTable SelectAllUsers()
        {
            DataTable dt = new DataTable();
            string commandText = "users_selectAll";
            dt = sqlhelper.ExecuteQuery(commandText, CommandType.StoredProcedure);
            return dt;
        }
        #endregion

        #region Select user by name.
        /// <summary>
        /// Select user by name.
        /// </summary>
        /// <param name="name">User's name</param>
        /// <returns></returns>
        public DataTable SelectByName(string name)
        {
            DataTable dt = new DataTable();
            string commandText = "users_selectByName";
            SqlParameter[] paras = new SqlParameter[]
            {
                new SqlParameter("@name",name)
            };
            dt = sqlhelper.ExecuteQuery(commandText, paras, CommandType.StoredProcedure);
            return dt;
        }
        #endregion

        #region Select pupular users
        /// <summary>
        /// Selete popular users.(Top ten users order by blog reading count desc )
        /// </summary>
        /// <returns></returns>
        public DataTable SelectPopularUsers()
        {
            DataTable dt = new DataTable();
            string commandText = "users_selectPopular";
            dt = sqlhelper.ExecuteQuery(commandText, CommandType.StoredProcedure);
            return dt;
        }
        #endregion

        #region Select the most pupular user and his top 1 blog
        /// <summary>
        /// Select the most pupular user and his top 1 blog
        /// </summary>
        /// <returns></returns>
        public DataTable SelectTopUser()
        {
            DataTable dt = new DataTable();
            string commandText = "users_selectTop";
            dt = sqlhelper.ExecuteQuery(commandText, CommandType.StoredProcedure);
            return dt;
        }
        #endregion

        #region Select user by id.
        /// <summary>
        /// Select user by id.
        /// </summary>
        /// <param name="id">User's id</param>
        /// <returns></returns>
        public DataTable SelectById(string id)
        {
            DataTable dt = new DataTable();
            string commandText = "users_selectById";
            SqlParameter[] paras = new SqlParameter[]
            {
                new SqlParameter("@id",id)
            };
            dt = sqlhelper.ExecuteQuery(commandText, paras, CommandType.StoredProcedure);
            return dt;
        }
        #endregion

        #region Select user's detail information by id
        /// <summary>
        /// Select user's detail information by id
        /// </summary>
        /// <param name="id">User's id</param>
        /// <returns></returns>
        public DataTable SelectDetailById(string id)
        {
            DataTable dt = new DataTable();
            string commandText = "users_selectDetailById";
            SqlParameter[] paras = new SqlParameter[]
            {
                new SqlParameter("@id",id)
            };
            dt = sqlhelper.ExecuteQuery(commandText, paras, CommandType.StoredProcedure);
            return dt;
        }
        #endregion

    }
}
