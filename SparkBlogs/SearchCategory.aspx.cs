using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BLL;

namespace SparkBlogs
{
    public partial class SearchCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //绑定最新博客
                DataTable dt = new BlogManager().SelectLatest();
                //绑定热门博主
                dt = new UsersManager().SelectPopularUsers();
                Reppopularuser.DataSource = dt;
                Reppopularuser.DataBind();
                //绑定热文
                dt = new BlogManager().SelectPopular();
                Rephotblogs.DataSource = dt;
                Rephotblogs.DataBind();
                //绑定某类别下所有文章
                string caId = Request.QueryString["caId"];
                dt = new BlogManager().SelectByCategory(caId);
                if (dt.Rows.Count!=0)
                {
                    //设置类别名称
                    category_name.Text = dt.Rows[0]["name"].ToString();
                }
                Repcatelist.DataSource = dt;
                Repcatelist.DataBind();
            }
        }
    }
}