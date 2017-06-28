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
    public partial class UserBlogs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //绑定用户文章列表
                //获取用户ID
                string userId = Request.QueryString["userId"];
                DataTable dt = new BlogManager().SelectByUser(userId);
                Repuserblogs.DataSource = dt;
                Repuserblogs.DataBind();
                //绑定用户信息
                dt = new UsersManager().SelectById(userId);
                Repuserinfo.DataSource = dt;
                Repuserinfo.DataBind();
                //绑定用户详情
                dt = new UsersManager().SelectDetailById(userId);
                Repuserdetail.DataSource = dt;
                Repuserdetail.DataBind();
                //绑定个人分类
                dt = new BlogManager().SelectPersonalCateByUser(userId);
                Reppersonalcate.DataSource = dt;
                Reppersonalcate.DataBind();
                //绑定阅读排行榜
                dt = new BlogManager().SelectTopByReadCount(userId);
                Reptopreadcount.DataSource = dt;
                Reptopreadcount.DataBind();
                //绑定评论排行榜
                dt =new BlogManager().SelectTopByCommentCount(userId);
                Reptopcommentcount.DataSource = dt;
                Reptopcommentcount.DataBind();
            }
        }
    }
}