<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchCategory.aspx.cs" Inherits="SparkBlogs.SearchCategory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="shenma-site-verification" content="5a59773ab8077d4a62bf469ab966a63b_1497598848" />
    <meta name="keywords" content="" />
    <meta name="description" content="" />

    <script src="http://csdnimg.cn/public/common/libs/jquery/jquery-1.11.1.min.js" type="text/javascript"></script>

    <link rel="shortcut icon" href="http://c.csdnimg.cn/public/favicon.ico" />
    <link rel="stylesheet" href="http://static.csdn.net/public/common/toolbar/css/index.css">
    <link rel="stylesheet" href="http://csdnimg.cn/public/common/libs/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="http://csdnimg.cn/public/static/css/avatar.css">
    <link rel="stylesheet" href="http://static.blog.csdn.net/static/css/common_index.css">
    <!-- [if IE 7]-->
    <link rel="stylesheet" href="http://static.blog.csdn.net/static/css/font-awesome.min.css">
    <!-- [endif]-->

    <!-- [if lt IE 9]-->
    <script src="http://static.blog.csdn.net/static/js/libs/html5shiv.min.js"></script>
    <!-- [endif]-->
    <title>文章列表 SparkBlog</title>

    <!-- ad begin -->
    <script language="javascript" type="text/javascript" src="http://ads.csdn.net/js/tracking.js"></script>
    <!-- ad end-->
    <script src="//csdnimg.cn/rabbit/tracking-ad/main.js"></script>

</head>
<body>

    <!-- 广告位开始 -->
    <ins data-revive-zoneid="149" data-revive-id="8c38e720de1c90a6f6ff52f3f89c4d57"></ins>
    <!-- 广告位结束 -->

    <script id="toolbar-tpl-scriptId" fixed="true" prod="blog" skin="black" src="http://c.csdnimg.cn/public/common/toolbar/js/html.js" type="text/javascript"></script>


    <div role="banner" class="blog-nav">
        <div class="container">
            <div role="navigation" class="navbar-collapse">
                <ul class="navbar-nav">
                    <li class="active"><a href="/" title="CSDN博客频道首页">首页</a></li>
                    <li><a href="/column.html">博客专栏</a></li>

                    <li><a href="/experts.html">博客专家</a></li>

                    <li><a href="http://write.blog.csdn.net" class="rss" target="_blank">我的博客</a></li>
                </ul>

            </div>
        </div>
    </div>



    <link rel="stylesheet" href="http://static.blog.csdn.net/static/css/blog_index.css">

    <div class="blog_ad clearfix">
        <div class="blog_ad_l fl">
            <!-- 广告位开始 -->
            <ins data-revive-zoneid="65" data-revive-id="8c38e720de1c90a6f6ff52f3f89c4d57"></ins>
            <!-- 广告位结束 -->
        </div>
        <div class="blog_ad_r fr">
            <!-- 广告位开始 -->
            <ins data-revive-zoneid="179" data-revive-id="8c38e720de1c90a6f6ff52f3f89c4d57"></ins>
            <!-- 广告位结束 -->
        </div>
    </div>

    <div class="blog_home_main clearfix">
        <div class="blog_l fl">
            <!--类别下文章-->
            <!--自定义标签-->
            <!--下部列表-->
            <div id="listBot" class="blog_list_wrap">
                <div class="category_sec clearfix">
                    <div class="category_sec_l category_web"><em><asp:Label ID="category_name" runat="server"></asp:Label></em></div>
                    <div class="category_sec_r">
                        <ul class="cate_list">
                        </ul>
                    </div>
                </div>
                <asp:Repeater ID="Repcatelist" runat="server">
                    <ItemTemplate>
                        <dl class="blog_list clearfix">
                            <dt><a href="UserBlogs.aspx?userId=<%#Eval("author_id") %>">
                                <img src="#" class="head"></a>
                                <a href="UserBlogs.aspx?userId=<%#Eval("author_id") %>" class="nickname"><%#Eval("author_name") %></a>
                            </dt>
                            <dd>
                                <h3 class="tracking-ad" data-mod="popu_254"><a href="#" target="_blank"><%#Eval("title") %></a></h3>
                                <div class="blog_list_c">
                                    <%#Eval("distribution") %>
                                </div>
                                <div class="blog_list_b clearfix">
                                    <div class="blog_list_b_l fl">

                                        <span><i class="fa fa-list-ul"></i><a href="#" target="_blank"><%#Eval("name") %></a></span>
                                    </div>
                                    <div class="blog_list_b_r fr">
                                        <label><%#Eval("create_time") %></label><span><i class="fa fa-eye"></i><em><%#Eval("read_count") %></em></span>
                                    </div>
                                </div>

                            </dd>
                        </dl>
                    </ItemTemplate>
                </asp:Repeater>


            </div>
            <!--加载更多-->

            <div class="loadMore_icon"><i class="fa fa-spinner"></i></div>
            <!--分页-->
            <!-- page 开始-->

            <!-- page 结束-->

            <div class="page_nav">
                <span>2648条  共89页</span><strong>1</strong> <a href="/web/newarticle.html?&page=2">2</a> <a href="/web/newarticle.html?&page=3">3</a> <a href="/web/newarticle.html?&page=4">4</a> <a href="/web/newarticle.html?&page=5">5</a> <a href="/web/newarticle.html?&page=6">...</a> <a href="/web/newarticle.html?&page=2">下一页</a> <a href="/web/newarticle.html?&page=89">尾页</a>
            </div>

            <style>
                .page_nav {
                    TEXT-ALIGN: center;
                    PADDING-BOTTOM: 15px;
                    PADDING-LEFT: 0px;
                    PADDING-RIGHT: 0px;
                    FONT: 12px/24px Arial;
                    COLOR: #666;
                    CLEAR: both;
                    PADDING-TOP: 15px;
                }

                    .page_nav A {
                        BORDER-BOTTOM: #dbe5ee 1px solid;
                        BORDER-LEFT: #dbe5ee 1px solid;
                        PADDING-BOTTOM: 0px;
                        MARGIN: 0px 2px;
                        PADDING-LEFT: 8px;
                        PADDING-RIGHT: 8px;
                        DISPLAY: inline-block;
                        FONT: 12px/22px Arial, Helvetica, sans-serif;
                        BACKGROUND: #fff;
                        HEIGHT: 22px;
                        COLOR: #333;
                        BORDER-TOP: #dbe5ee 1px solid;
                        CURSOR: pointer;
                        BORDER-RIGHT: #dbe5ee 1px solid;
                        PADDING-TOP: 0px;
                        border-radius: 2px;
                        -moz-border-radius: 2px;
                        -webkit-border-radius: 2px;
                        -khtml-border-radius: 2px;
                    }

                    .page_nav STRONG {
                        BORDER-BOTTOM: medium none;
                        BORDER-LEFT: medium none;
                        PADDING-BOTTOM: 0px;
                        LINE-HEIGHT: 24px;
                        MARGIN: 0px 3px;
                        PADDING-LEFT: 8px;
                        PADDING-RIGHT: 8px;
                        DISPLAY: inline-block;
                        BACKGROUND: #c00;
                        HEIGHT: 24px;
                        COLOR: #fff;
                        BORDER-TOP: medium none;
                        FONT-WEIGHT: normal;
                        BORDER-RIGHT: medium none;
                        TEXT-DECORATION: none;
                        PADDING-TOP: 0px;
                        border-radius: 2px;
                        -moz-border-radius: 2px;
                        -webkit-border-radius: 2px;
                        -khtml-border-radius: 2px;
                    }

                    .page_nav A:hover {
                        BORDER-BOTTOM: medium none;
                        BORDER-LEFT: medium none;
                        LINE-HEIGHT: 24px;
                        MARGIN: 0px 3px;
                        BACKGROUND: #c00;
                        HEIGHT: 24px;
                        COLOR: #fff;
                        BORDER-TOP: medium none;
                        BORDER-RIGHT: medium none;
                        TEXT-DECORATION: none;
                    }

                    .page_nav A.select {
                        CURSOR: default;
                    }
            </style>
        </div>
        <div class="blog_r fr">
            <!--博客专家推荐-->
            <!--博文分类-->
            <div class="categ blog_sec">



                <div class="mod_title">
                    <div class="border_b"></div>
                    <h4 class="mod_title_t">
                        <label><a href="/newarticle.html" name="all">博文分类</a></label>
                    </h4>
                </div>
                <div class="blog_category">
                    <ul class="category_list tracking-ad" data-mod="popu_257">
                        <li>
                            <a href="SearchCategory.aspx?caId=1" class="mobile" target="_blank">移动开发</a><a href="SearchCategory.aspx?caId=2" class="web" target="_blank">Web前端</a>
                        </li>
                        <li>
                            <a href="SearchCategory.aspx?caId=3" class="enterprise" target="_blank">架构设计</a><a href="SearchCategory.aspx?caId=4" class="code" target="_blank">编程语言</a>
                        </li>
                        <li>
                            <a href="SearchCategory.aspx?caId=5" class="www" target="_blank">互联网</a><a href="SearchCategory.aspx?caId=6" class="database" target="_blank">数据库</a>
                        </li>
                        <li>
                            <a href="SearchCategory.aspx?caId=7" class="system" target="_blank">系统运维</a><a href="SearchCategory.aspx?caId=8" class="cloud" target="_blank">云计算</a>
                        </li>
                        <li>
                            <a href="SearchCategory.aspx?caId=9" class="software" target="_blank">研发管理</a><a href="SearchCategory.aspx?caId=10" class="other" target="_blank">综合</a>
                        </li>
                    </ul>
                </div>

            </div>
            <!--广告-->
            <div class="categ">
                <!-- 广告位开始 -->
                <ins data-revive-zoneid="180" data-revive-id="8c38e720de1c90a6f6ff52f3f89c4d57"></ins>
                <!-- 广告位结束 -->

            </div>

            <!--热门博主-->

            <div class="categ">
                <div class="mod_title">
                    <div class="border_b"></div>
                    <h4 class="mod_title_t">
                        <label>热门博主</label>
                    </h4>
                </div>
                <div class="expert_wrap tracking-ad" data-mod="popu_260">
                    <asp:Repeater ID="Reppopularuser" runat="server">
                        <ItemTemplate>
                            <dl class="expert_list">
                                <dt><a href="UserBlogs.aspx?userId=<%#Eval("user_id") %>" target="_blank">
                                    <img src="#" alt="img" /></a>
                                </dt>
                                <dd><a href="UserBlogs.aspx?userId=<%#Eval("user_id") %>" target="_blank" class="expert_t"><%#Eval("user_name") %></a>
                                    <p class="expert_intro"><%#Eval("description") %></p>
                                </dd>
                            </dl>
                        </ItemTemplate>
                    </asp:Repeater>

                    <!--广告-->
                    <div class="categ">

                        <!-- 广告位开始 -->
                        <ins data-revive-zoneid="181" data-revive-id="8c38e720de1c90a6f6ff52f3f89c4d57"></ins>
                        <!-- 广告位结束 -->
                    </div>


                    <!--热文排行榜-->

                    <div class="categ">
                        <div class="mod_title">
                            <div class="border_b"></div>
                            <h4 class="mod_title_t">
                                <label>热文排行榜</label>
                            </h4>
                        </div>
                        <asp:Repeater ID="Rephotblogs" runat="server">
                            <ItemTemplate>
                                <ul class="hot_wrap tracking-ad" data-mod="popu_261" id="hot_wrap">
                                    <li><a href="#" target="_blank"><i class="fa fa-caret-right"></i><span><%#Eval("title") %></span></a></li>
                                </ul>
                            </ItemTemplate>
                        </asp:Repeater>

                    </div>
                    <!--联系我们-->
                    <div class="categ">
                        <div class="mod_title">
                            <div class="border_b"></div>
                            <h4 class="mod_title_t">
                                <label>联系我们</label>
                            </h4>
                        </div>
                        <div class="contact">
                            <p class="email"><a href="mailto:admin@csdn.net" target="_blank" class="qq">首页投稿</a></p>
                            <p class="weibo"><a href="http://blog.csdn.net/blogdevteam" target="_blank">官方博客</a></p>
                            <p class="email">联系客服：953606426@qq.com</p>
                            <p class="email">SparkBlog客服QQ：953606426</p>

                        </div>
                    </div>

                </div>
            </div>
            <div class="blog_r_nav">

                <div class="write_blog">
                    <img src="http://static.blog.csdn.net/static/images/write_blog.png" alt="img"><a href="http://write.blog.csdn.net/postedit">撰写博客</a>
                </div>

                <div id="backTop" class="write_blog">
                    <img src="http://static.blog.csdn.net/static/images/back_top.png" alt="img"><a href="javascript:;">返回顶部</a>
                </div>
            </div>
            <script type="text/javascript" src="http://static.blog.csdn.net/static/js/apps/blog_index.js"></script>

            <script language="javascript" type="text/javascript" src="http://ads.csdn.net/js/async_new.js"></script>

            <script id="noticeScript" type="text/javascript" charset="utf-8" btnid="header_notice_num" wrapid="note1" count="5" subcount="5" src="http://c.csdnimg.cn/public/common/toolbar/js/notify.js"></script>

            <script id="csdn-toolbar-id" btnid="header_notice_num" wrapid="note1" count="5" subcount="5" type="text/javascript" src="http://c.csdnimg.cn/public/common/toolbar/js/toolbar.js"></script>
            <style type="text/css">
                .pub_fo {
                    position: static;
                }
            </style>


            <script type="text/javascript" src="http://static.blog.csdn.net/scripts/cnick.js"></script>

            <script type="text/javascript">document.write("<img src=http://counter.csdn.net/pv.aspx?id=25 border=0 width=0 height=0>");</script>




            <div style="width: 100%; height: 0; overflow: visible; position: fixed; z-index: 9999">
                <ins data-revive-zoneid="150" data-revive-id="8c38e720de1c90a6f6ff52f3f89c4d57"></ins>
                <ins data-revive-zoneid="151" data-revive-id="8c38e720de1c90a6f6ff52f3f89c4d57"></ins>
                <ins data-revive-zoneid="152" data-revive-id="8c38e720de1c90a6f6ff52f3f89c4d57"></ins>
            </div>
            <div id="footer">copyright &copy; 2017 <a href="#">CSDN&HarryWang</a></div>
            <style type="text/css">
                #footer { /*尾部样式*/
                    text-align: center;
                    border-top: 5px solid #D6D7D6;
                    padding-top: 10px;
                    clear: left;
                }
            </style>
</body>
</html>
