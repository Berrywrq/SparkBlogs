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
    public class UsersManager
    {
        UsersDAO userdao = null;
        public UsersManager()
        {
            userdao = new UsersDAO();
        }

        /// <summary>
        /// User registration
        /// </summary>
        /// <param name="user">Object user</param>
        /// <returns></returns>
        public bool RegisterUser(Users user)
        {
            return userdao.RegisterUser(user);
        }

        /// <summary>
        /// Delete user.
        /// </summary>
        /// <param name="id">User's id</param>
        /// <returns></returns>
        public bool DeleteUser(int id)
        {
            return userdao.DeleteUser(id);
        }

        /// <summary>
        /// Update user's information
        /// </summary>
        /// <param name="id">User's id</param>
        /// <returns></returns>
        public bool UpdateInfo(int id, string description)
        {
            return userdao.UpdateInfo(id, description);
        }

        /// <summary>
        /// Update user's password and question
        /// </summary>
        /// <param name="id">User's id</param>
        /// <returns></returns>
        public bool UpdatePassword(int id, string password, string question, string answer)
        {
            return userdao.UpdatePassword(id, password, question, answer);
        }

        /// <summary>
        /// Selete all users.
        /// </summary>
        /// <returns></returns>
        public DataTable SelectAllUsers()
        {
            return userdao.SelectAllUsers();
        }

        /// <summary>
        /// Select user by name.
        /// </summary>
        /// <param name="name">User's name</param>
        /// <returns></returns>
        public DataTable SelectByName(string name)
        {
            return userdao.SelectByName(name);
        }

        /// <summary>
        /// Selete popular users.(Top ten users order by blog reading count desc )
        /// </summary>
        /// <returns></returns>
        public DataTable SelectPopularUsers()
        {
            return userdao.SelectPopularUsers();
        }

        /// <summary>
        /// Select the most pupular user and his top 1 blog
        /// </summary>
        /// <returns></returns>
        public DataTable SelectTopUser()
        {
            return userdao.SelectTopUser();
        }
    }
}
