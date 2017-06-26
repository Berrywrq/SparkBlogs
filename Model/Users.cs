using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class Users
    {
        private int userId;
        private string name;
        private string password;
        private string question;
        private string userImg;
        private string regTime;
        private string answer;

        public int UserId
        {
            get
            {
                return userId;
            }

            set
            {
                userId = value;
            }
        }

        public string Name
        {
            get
            {
                return name;
            }

            set
            {
                name = value;
            }
        }

        public string Password
        {
            get
            {
                return password;
            }

            set
            {
                password = value;
            }
        }

        public string Question
        {
            get
            {
                return question;
            }

            set
            {
                question = value;
            }
        }

        public string UserImg
        {
            get
            {
                return userImg;
            }

            set
            {
                userImg = value;
            }
        }

        public string RegTime
        {
            get
            {
                return regTime;
            }

            set
            {
                regTime = value;
            }
        }

        public string Answer
        {
            get
            {
                return answer;
            }

            set
            {
                answer = value;
            }
        }

        public Users(string name,string password,
            string question)
        {
            name = this.name;
            password = this.password;
            question = this.question;
        }
    }
}
