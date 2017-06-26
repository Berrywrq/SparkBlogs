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
    public partial class CSDNCopy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //绑定最新博客
                DataTable dt = new BlogManager().SelectLatest();
                Replatest.DataSource = dt;
                Replatest.DataBind();
                //绑定最热博客
                dt = new BlogManager().SelectPopular();
                Reppopular.DataSource = dt;
                Reppopular.DataBind();
                //绑定最佳博主
                dt = new UsersManager().SelectTopUser();
                Reptopuser.DataSource = dt;
                Reptopuser.DataBind();
                //绑定热门博主
                dt = new UsersManager().SelectPopularUsers();
                Reppopularuser.DataSource = dt;
                Reppopularuser.DataBind();
                //绑定热文
                dt = new BlogManager().SelectPopular();
                Rephotblogs.DataSource = dt;
                Rephotblogs.DataBind();
            }
        }
    }
}