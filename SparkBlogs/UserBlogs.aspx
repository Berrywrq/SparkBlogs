<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserBlogs.aspx.cs" Inherits="SparkBlogs.UserBlogs" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="alternate" media="handheld" href="#" />

    <meta name="shenma-site-verification" content="5a59773ab8077d4a62bf469ab966a63b_1497598848">

    <title>博主专栏-SparkBlog</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="description" content="" />

    <meta name="keywords" content="" />


    <script src="http://static.blog.csdn.net/scripts/blog_static_head.min.js" type="text/javascript"></script>

    <link rel="Stylesheet" type="text/css" href="http://static.blog.csdn.net/skin/skin-yellow/css/style.css?v=1.1" />



    <link id="RSSLink" title="RSS" type="application/rss+xml" rel="alternate" href="/xieyunc/rss/list" />
    <link rel="shortcut icon" href="http://c.csdnimg.cn/public/favicon.ico" />
    <link type="text/css" rel="stylesheet" href="http://static.blog.csdn.net/scripts/SyntaxHighlighter/styles/green.css" />

    <link href="http://c.csdnimg.cn/blog/csdn_public_blog_detail.min.css" type="text/css" rel="stylesheet" />

    <style>
        .gist_edit {
            display: none;
        }
    </style>

    <!-- 请置于所有广告位代码之前 -->
    <script src="http://dup.baidustatic.com/js/ds.js"></script>
</head>


<body>

    <!--new top-->
    <script id="toolbar-tpl-scriptId" fixed="true" prod="blog" skin="black" src="http://c.csdnimg.cn/public/common/toolbar/js/html.js" type="text/javascript"></script>
    <!--new top-->
    <div id="container">
        <div id="header">
            <div class="header">
                <div id="blog_title">
                    <asp:Repeater ID="Repuserinfo" runat="server">
                        <ItemTemplate>
                            <h2>
                                <a href="#"><%#Eval("user_name") %> 的专栏</a></h2>
                            <h3><%#Eval("description") %></h3>
                            <div class="clear">
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
                <div class="clear">
                </div>


            </div>
        </div>

        <%--<script type="text/javascript">
            var username = "xieyunc";
            var _blogger = username;
            var blog_address = "http://blog.csdn.net/xieyunc";
            var static_host = "http://static.blog.csdn.net";
            var currentUserName = "";
        </script>--%>

        <div id="body">
            <div id="main">
                <div class="main">
                    <div class="ad_class">
                    </div>
                    <div class="list_item_new">

                        <div id="article_toplist" class="list">
                        </div>

                        <div id="article_list" class="list">

                            <div class="list_item article_item">
                                <asp:Repeater ID="Repuserblogs" runat="server">
                                    <ItemTemplate>
                                        <div class="article_title">
                                            <span class="ico ico_type_Original"></span>
                                            <h1>
                                                <span class="link_title"><a href="#"><%#Eval("title") %> </a></span>
                                            </h1>
                                        </div>
                                        <div class="article_description">
                                            <%#Eval("distribution") %>
                                        </div>
                                        <div class="article_manage">
                                            <span class="link_postdate"><%#Eval("create_time") %></span>
                                            <span class="link_view"><a href="#">阅读</a>(<%#Eval("read_count") %>)</span>
                                            <%--<span class="link_comments"><a href="#">评论</a><%#Eval("comment_count") %></span>--%>
                                            <div class="clear"></div>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>

                            </div>

                        </div>

                        <!--显示分页-->

                        <div id="papelist" class="pagelist">
                            <span>328条  共22页</span><strong>1</strong> <a href="/xieyunc/article/list/2">2</a> <a href="/xieyunc/article/list/3">3</a> <a href="/xieyunc/article/list/4">4</a> <a href="/xieyunc/article/list/5">5</a> <a href="/xieyunc/article/list/6">...</a> <a href="/xieyunc/article/list/2">下一页</a> <a href="/xieyunc/article/list/22">尾页</a>
                        </div>

                    </div>
                    <script type="text/ecmascript">
                        $(function () {
                            setTimeout(function () {
                                $("a img[src='http://js.tongji.linezing.com/stats.gif']").parent().css({ "position": "absolute", "left": "50%" });
                            }, 300);
                        });
                    </script>


                    <div class="clear">
                    </div>
                </div>

            </div>

            <div id="side">

                <div class="side">
                    <div id="panel_Profile" class="panel">
                        <asp:Repeater ID="Repuserdetail" runat="server">
                            <ItemTemplate>
                                <ul class="panel_head"><span>个人资料</span></ul>
                                <ul class="panel_body profile">
                                    <div id="blog_userface">
                                        <a href="#" target="_blank">
                                            <img src="#" style="max-width: 90%" />
                                        </a>
                                        <br />
                                        <span><a href="#" class="user_name" target="_blank"><%#Eval("user_name") %></a></span>
                                    </div>
                                    <div class="interact">
                                    </div>
                                    <div id="blog_medal">
                                        <div id="bms_box">
                                        </div>
                                    </div>

                                    <ul id="blog_statistics">
                                        <li>文章：<span><%#Eval("blog_count") %> 篇</span></li>
                                        <li>评论：<span><%#Eval("comment_count") %> 条</span></li>
                                    </ul>
                                </ul>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>


                    <div class="panel" id="panel_Search">
                        <ul class="panel_head"><span>文章搜索</span></ul>
                        <ul class="panel_body" class="form_search">
                            <form id="frmSearch" action="http://so.csdn.net/search" class="form_search csdn-tracking-statistics" target="_blank" data-mod="popu_306">
                                <span>
                                    <input id="inputSearch" type="text" class="blogsearch" title="请输入关键字" /></span>
                                <input id="btnSubmit" type="button" value="搜索" title="search in blog" />
                                <input type="hidden" name="q" id="inputQ" />
                                <input type="hidden" name="t" value="blog" />
                                <a id="btnSearchBlog" target="_blank"></a>
                            </form>
                        </ul>
                    </div>

                    <script type="text/javascript">


                        $(function () {
                            $("#btnSubmit").unbind("click");
                            $("#btnSubmit").click(function () {
                                search();
                            });

                            $("#frmSearch").submit(function () {
                                search();
                                return false;
                            });

                            function search() {
                                if ($("#inputSearch").val() == "") {
                                    alert("请录入搜索关键词！");
                                    return false;
                                }
                                //var url = "http://so.csdn.net/so/search/s.do?q=" + encodeURIComponent($("#inputSearch").val()) + "&u=" + username + "&t=blog";           
                                var url = "https://www.baidu.com/s?wd=" + encodeURIComponent($("#inputSearch").val()) + "%20site%3Ablog.csdn.net"
                                window.location.href = url;
                            }
                        });
                    </script>
                    <div id="panel_Category" class="panel">
                        <ul class="panel_head"><span>文章分类</span></ul>
                        <ul class="panel_body">
                            <asp:Repeater ID="Reppersonalcate" runat="server">
                                <ItemTemplate>
                                    <li>
                                        <a href="#"><%#Eval("personal_category") %></a><span>(<%#Eval("blog_count") %>)</span>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                    <div id="hotarticls" class="panel">
                        <ul class="panel_head">
                            <span>阅读排行</span>
                        </ul>
                        <ul class="panel_body itemlist">
                            <asp:Repeater ID="Reptopreadcount" runat="server">
                                <ItemTemplate>
                                    <li>
                                        <a href="#"><%#Eval("title") %></a><span>(<%#Eval("read_count") %>)</span>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>

                    </div>
                    <div id="hotarticls2" class="panel">
                        <ul class="panel_head"><span>评论排行</span></ul>
                        <ul class="panel_body itemlist">
                            <asp:Repeater ID="Reptopcommentcount" runat="server">
                                <ItemTemplate>
                                    <li>
                                        <a href="#"><%#Eval("title") %></a><span>(<%#Eval("comment_count") %>)</span>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>

                </div>
                <div class="clear">
                </div>

                <div class="tracking-ad" data-view="true" data-mod="ad_popu_189" data-mtp="63" data-order="40" data-con="ad_content_1259" style="width: 250px; height: 250px;">
                    <div id="nav_show_top_stop" style="width: 250px; height: 250px; z-index: 1000">
                        <div id="cpro_u2734133"></div>
                    </div>
                </div>
                <script>

                    setTimeout(function () {
                        var naviga_offsetTop = 0; function naviga_stay_top() {
                            var scrollTop = jQuery(document).scrollTop();
                            if (scrollTop > naviga_offsetTop) {
                                jQuery("#nav_show_top_stop").css({ "position": "fixed" });
                                jQuery("#nav_show_top_stop").css({ "top": "0px" });
                            } else { jQuery("#nav_show_top_stop").css({ "position": "fixed" }); jQuery("#nav_show_top_stop").css({ "top": naviga_offsetTop - scrollTop + "px" }); }
                        }
                        function onload_function() {
                            naviga_offsetTop = jQuery("#nav_show_top_stop").position().top;
                            jQuery(window).bind("scroll", naviga_stay_top); jQuery(window).bind("mousewheel", naviga_stay_top);
                            jQuery(document).bind("scroll", naviga_stay_top); jQuery(document).bind("mousewheel", naviga_stay_top);
                        } jQuery(document).ready(onload_function);
                    }, 200);

                </script>
                <script type="text/javascript">    (window.cproArray = window.cproArray || []).push({ id: "u2734133" });  </script>
                <script src="http://cpro.baidustatic.com/cpro/ui/c.js" type="text/javascript"></script>

            </div>

            <div class="clear">
            </div>
        </div>

        <script type="text/javascript" src="http://passport.csdn.net/content/loginbox/login.js"></script>
        <script type="text/javascript">
            $(function () {
                function __get_code_toolbar(snippet_id) {
                    return $("<span class='tracking-ad' data-mod='popu_167'><a href='https://code.csdn.net/snippets/"
                            + snippet_id
                            + "' target='_blank' title='在CODE上查看代码片'  style='text-indent:0;'><img src='https://code.csdn.net/assets/CODE_ico.png' width=12 height=12 alt='在CODE上查看代码片' style='position:relative;top:1px;left:2px;'/></a></span>"
                            + "<span class='tracking-ad' data-mod='popu_170'><a href='https://code.csdn.net/snippets/"
                            + snippet_id
                            + "/fork' target='_blank' title='派生到我的代码片' style='text-indent:0;'><img src='https://code.csdn.net/assets/ico_fork.svg' width=12 height=12 alt='派生到我的代码片' style='position:relative;top:2px;left:2px;'/></a></span>");
                }

                $("[code_snippet_id]").each(function () {
                    __s_id = $(this).attr("code_snippet_id");
                    if (__s_id != null && __s_id != "" && __s_id != 0 && parseInt(__s_id) > 70020) {
                        __code_tool = __get_code_toolbar(__s_id);
                        $(this).prev().find(".tools").append(__code_tool);
                    }
                });

                $(".bar").show();
            });
        </script>
    </div>
    <!--new top-->
    <script>
        var islock = 0;
        var fileName = "";
        var commentscount = 0;
    </script>

    <%--        <script src="http://static.blog.csdn.net/scripts/csdn_blog_detail.min.js" type="text/javascript"></script>
        
    <script type="text/javascript" src="http://c.csdnimg.cn/blog/csdn_public_blog_detail.min.js?20170626001"></script>

    <script type="text/javascript" src="http://medal.blog.csdn.net/showblogmedal.ashx?blogid=171323"></script>--%>

    <div id="a52b5334d" style="width: 1px; height: 1px; display: none;">
        <script id="adJs52b5334"></script>
        <script>document.getElementById("adJs52b5334").src = "http://ads.csdn.net/js/opt/52b5334.js?t=" + Math.random();</script>
    </div>

    <div class="pop_CA_cover" style="display: none"></div>
    <div class="pop pop_CA" style="display: none">
        <div class="CA_header">
            收藏助手
            <span class="cancel_icon" id="fapancle" onclick="$('.pop_CA').hide();$('.pop_CA_cover').hide();"></span>
        </div>
        <iframe src="" id="fa" frameborder="0" width="100%" height="360" scrolling="no"></iframe>
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

