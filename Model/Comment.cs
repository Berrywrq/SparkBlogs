using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class Comment
    {
        private int commentId;
        private int userId;
        private int textId;
        private string text;
        private string createTime;
        private int upperId;
        private string upperText;
        private string upperName;


        public int CommentId
        {
            get
            {
                return commentId;
            }

            set
            {
                commentId = value;
            }
        }
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

        public int TextId
        {
            get
            {
                return textId;
            }

            set
            {
                textId = value;
            }
        }

        public string Text
        {
            get
            {
                return text;
            }

            set
            {
                text = value;
            }
        }

        public string CreateTime
        {
            get
            {
                return createTime;
            }

            set
            {
                createTime = value;
            }
        }

        public int UpperId
        {
            get
            {
                return upperId;
            }

            set
            {
                upperId = value;
            }
        }

        public string UpperText
        {
            get
            {
                return upperText;
            }

            set
            {
                upperText = value;
            }
        }

        public string UpperName
        {
            get
            {
                return upperName;
            }

            set
            {
                upperName = value;
            }
        }

        public Comment(int userId,int textId,string text)
        {
            this.userId = userId;
            this.textId = textId;
            this.text = text;
        }
    }
}
