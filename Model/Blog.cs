using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class Blog
    {
        private int blogId;
        private int authorId;
        private string authorName;
        private string title;
        private string lable;
        private string personalCategory;
        private string distribution;
        private string createTime;
        private string state;
        private string categoryId;

        public int BlogId
        {
            get
            {
                return blogId;
            }

            set
            {
                blogId = value;
            }
        }

        public int AuthorId
        {
            get
            {
                return authorId;
            }

            set
            {
                authorId = value;
            }
        }

        public string AuthorName
        {
            get
            {
                return authorName;
            }

            set
            {
                authorName = value;
            }
        }

        public string Title
        {
            get
            {
                return title;
            }

            set
            {
                title = value;
            }
        }

        public string Lable
        {
            get
            {
                return lable;
            }

            set
            {
                lable = value;
            }
        }

        public string PersonalCategory
        {
            get
            {
                return personalCategory;
            }

            set
            {
                personalCategory = value;
            }
        }

        public string Distribution
        {
            get
            {
                return distribution;
            }

            set
            {
                distribution = value;
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

        public string State
        {
            get
            {
                return state;
            }

            set
            {
                state = value;
            }
        }

        public string CategoryId
        {
            get
            {
                return categoryId;
            }

            set
            {
                categoryId = value;
            }
        }

        public Blog(int authorId,string authorName,string title,string lable,
            string personalCategory,string distribution,string createTime,string state,string categoryId)
        {
            this.authorId = authorId;
            this.authorName = authorName;
            this.title = title;
            this.lable = lable;
            this.personalCategory = personalCategory;
            this.distribution = distribution;
            this.createTime = createTime;
            this.state = state;
            this.categoryId = categoryId;
        }
    }
}
