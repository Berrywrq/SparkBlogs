using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class ArticleState
    {
        private int textId;
        private int readCount;
        private int likeCount;

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
        public int ReadCount
        {
            get
            {
                return readCount;
            }

            set
            {
                readCount = value;
            }
        }

        public int LikeCount
        {
            get
            {
                return likeCount;
            }

            set
            {
                likeCount = value;
            }
        }

        public ArticleState(int textId,int readCount,int likeCount)
        {
            this.textId = textId;
            this.readCount = readCount;
            this.likeCount = likeCount;
        }
    }
}
