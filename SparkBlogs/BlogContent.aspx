<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BlogContent.aspx.cs" Inherits="SparkBlogs.BlogContent" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <link rel="canonical" href="http://blog.csdn.net/xieyunc/article/details/4136125" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="alternate" media="handheld" href="#" />

    <meta name="shenma-site-verification" content="5a59773ab8077d4a62bf469ab966a63b_1497598848">

    <title>博客内容-SparkBlog</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="description" content="" />

    <meta name="keywords" content="callback,timer,dll" />


    <script src="http://static.blog.csdn.net/scripts/blog_static_head.min.js" type="text/javascript"></script>


    <!--new top-->
    <!--new top-->

    <!-- ad begin -->

    <!-- ad end-->

    <link rel="Stylesheet" type="text/css" href="http://static.blog.csdn.net/skin/skin-yellow/css/style.css?v=1.1" />



    <link id="RSSLink" title="RSS" type="application/rss+xml" rel="alternate" href="/xieyunc/rss/list" />
    <link rel="shortcut icon" href="http://c.csdnimg.cn/public/favicon.ico" />
    <link type="text/css" rel="stylesheet" href="http://static.blog.csdn.net/scripts/SyntaxHighlighter/styles/green.css" />





    <link href="http://c.csdnimg.cn/blog/csdn_public_blog_detail.min.css" type="text/css" rel="stylesheet" />

    <link rel="stylesheet" href="http://static.blog.csdn.net/css/csdn_blog_detail.min.css" />




    <!-- 请置于所有广告位代码之前 -->
    <script src="http://dup.baidustatic.com/js/ds.js"></script>

</head>


<body>
    <div class="tracking-ad" data-view="true" data-mod="ad_popu_72" data-mtp="62" data-order="40" data-con="ad_content_2072">
        <script id="popuLayer_js_q" src="http://ads.csdn.net/js/popuLayer.js" defer="defer" type="text/javascript"></script>
        <div id="layerd" style="position: fixed; bottom: 0px; right: 0px; line-height: 0px; z-index: 1000">
            <div class="J_close layer_close" style="display: ; background-color: #efefef; padding: 0px; color: #333; font: 12px/24px Helvetica,Tahoma,Arial,sans-serif; text-align: right;">关闭</div>
            <!-- 广告占位容器 -->
            <div id="cpro_u2895327"></div>
        </div>
        <script>  document.getElementById("popuLayer_js_q").onload = function () { var styObjd = styObj = { width: "300px", "height": parseInt(250) + 28 }; window.CSDN.Layer.PopuLayer("#layerd", { storageName: "layerd", styleObj: styObjd, total: 50, expoire: 1000 * 60 }); }</script>
        <!-- 投放代码 -->
        <script type="text/javascript">                /*服务器频道首页置顶Banner960*90，创建于2014-7-3*/    (window.cproArray = window.cproArray || []).push({ id: "u2895327" });  </script>
        <script src="http://cpro.baidustatic.com/cpro/ui/c.js" type="text/javascript"></script>

    </div>

    <!-- 广告位开始 -->

    <!-- 广告位结束 -->



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

        <script type="text/javascript">
            var username = "xieyunc";
            var _blogger = username;
            var blog_address = "http://blog.csdn.net/xieyunc";
            var static_host = "http://static.blog.csdn.net";
            var currentUserName = "harry_97";
        </script>

        <div id="body">
            <div id="main">
                <div class="main">

                    <script type="text/javascript" src="http://static.blog.csdn.net/scripts/category.js"></script>

                    <script type="text/ecmascript">
                        window.quickReplyflag = true;

                        var isBole = false;


                        var fasrc = "http://my.csdn.net/my/favorite/miniadd?t=timeSetEvent%e7%9a%84%e7%94%a8%e6%b3%95%ef%bc%88%e4%b8%80%ef%bc%89&u=http://blog.csdn.net/xieyunc/article/details/4136125"

                    </script>
                    <div id="article_details" class="details">
                        <asp:Repeater ID="Repblogdetail" runat="server">
                            <ItemTemplate>
                                <div class="article_title">
                                    <span class="ico ico_type_Original"></span>
                                    <h1>
                                        <span class="link_title"><a href="#"><%#Eval("title") %></a></span>
                                    </h1>
                                </div>
                                <div class="article_manage clearfix">
                                    <div class="article_l">
                                        <span class="link_categories">标签：<a href="#"><%#Eval("label") %></a></span>
                                    </div>
                                    <div class="article_r">
                                        <span class="link_postdate"><%#Eval("create_time") %></span>
                                        <span class="link_view"><%#Eval("read_count") %> 次阅读</span>
                                        <span class="link_comments" title="评论次数"><%--<a href="#">评论</a><asp:Label ID="lblCommentCount" runat="server"Text="*" ></asp:Label>--%></span>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                        <div class="embody" style="display: none" id="embody">
                            <span class="embody_t">本文章已收录于：</span>
                            <div class="embody_c" id="lib" value="{&quot;err&quot;:0,&quot;msg&quot;:&quot;ok&quot;,&quot;data&quot;:[]}"></div>
                        </div>
                        <style type="text/css">
                            .embody {
                                padding: 10px 10px 10px;
                                margin: 0 -20px;
                                border-bottom: solid 1px #ededed;
                            }

                            .embody_b {
                                margin: 0;
                                padding: 10px 0;
                            }

                            .embody .embody_t, .embody .embody_c {
                                display: inline-block;
                                margin-right: 10px;
                            }

                            .embody_t {
                                font-size: 12px;
                                color: #999;
                            }

                            .embody_c {
                                font-size: 12px;
                            }

                                .embody_c img, .embody_c em {
                                    display: inline-block;
                                    vertical-align: middle;
                                }

                                .embody_c img {
                                    width: 30px;
                                    height: 30px;
                                }

                                .embody_c em {
                                    margin: 0 20px 0 10px;
                                    color: #333;
                                    font-style: normal;
                                }
                        </style>
                        <script type="text/javascript">
                            $(function () {
                                try {
                                    var lib = eval("(" + $("#lib").attr("value") + ")");
                                    var html = "";
                                    if (lib.err == 0) {
                                        $.each(lib.data, function (i) {
                                            var obj = lib.data[i];
                                            //html += '<img src="' + obj.logo + '"/>' + obj.name + "&nbsp;&nbsp;";
                                            html += ' <a href="' + obj.url + '" target="_blank">';
                                            html += ' <img src="' + obj.logo + '">';
                                            html += ' <em><b>' + obj.name + '</b></em>';
                                            html += ' </a>';
                                        });
                                        if (html != "") {
                                            setTimeout(function () {
                                                $("#lib").html(html);
                                                $("#embody").show();
                                            }, 100);
                                        }
                                    }
                                } catch (err)
                                { }

                            });
                        </script>
                        <div class="category clearfix">
                            <div class="category_l">
                                <img src="http://static.blog.csdn.net/images/category_icon.jpg">
                                <span>分类：</span>
                            </div>
                            <div class="category_r">
                                <label>
                                    #个人分类<em></em></span>
                                    <img class="arrow-down" src="http://static.blog.csdn.net/images/arrow_triangle _down.jpg" style="display: inline;">
                                    <img class="arrow-up" src="http://static.blog.csdn.net/images/arrow_triangle_up.jpg" style="display: none;">
                                    <div class="subItem">
                                        <div class="subItem_t"><a href="#" target="_blank">作者同类文章</a><i class="J_close">X</i></div>
                                        <ul class="subItem_l" id="top_536931">
                                        </ul>
                                    </div>
                                </label>
                            </div>
                        </div>
                        <div class="bog_copyright">
                            <p class="copyright_p">版权声明：本文为博主原创文章，未经博主允许不得转载。</p>
                        </div>

                        <div id="article_content" class="article_content tracking-ad" data-mod="popu_307" data-dsm="post">
                            #文章内容
                        </div>

                        <div class="bdsharebuttonbox tracking-ad" style="float: right;" data-mod="popu_172">
                            <a href="#" class="bds_more" data-cmd="more" style="background-position: 0 0 !important; background-image: url(http://bdimg.share.baidu.com/static/api/img/share/icons_0_16.png?v=d754dcc0.png) !important"></a>
                            <a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间" style="background-position: 0 -52px !important"></a>
                            <a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博" style="background-position: 0 -104px !important"></a>
                            <a href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博" style="background-position: 0 -260px !important"></a>
                            <a href="#" class="bds_renren" data-cmd="renren" title="分享到人人网" style="background-position: 0 -208px !important"></a>
                            <a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信" style="background-position: 0 -1612px !important"></a>
                        </div>
                        <script>window._bd_share_config = { "common": { "bdSnsKey": {}, "bdText": "", "bdMini": "1", "bdMiniList": false, "bdPic": "", "bdStyle": "0", "bdSize": "16" }, "share": {} }; with (document) 0[(getElementsByTagName('head')[0] || body).appendChild(createElement('script')).src = 'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion=' + ~(-new Date() / 36e5)];</script>

                        <!--172.16.140.13-->

                        <!-- Baidu Button BEGIN -->
                        <script type="text/javascript" id="bdshare_js" data="type=tools&amp;uid=1536434"></script>
                        <script type="text/javascript" id="bdshell_js"></script>
                        <script type="text/javascript">
                            document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion=" + Math.ceil(new Date() / 3600000)
                        </script>
                        <!-- Baidu Button END -->

                        <div id="digg" articleid="4136125">
                            <dl id="btnDigg" class="digg digg_enable" onclick="btndigga();">

                                <dt>顶</dt>
                                <dd>0</dd>
                            </dl>


                        </div>
                        <div class="tracking-ad" data-mod="popu_222"><a href="javascript:void(0);">&nbsp;</a>   </div>
                        <div class="tracking-ad" data-mod="popu_223"><a href="javascript:void(0);">&nbsp;</a></div>
                        <script type="text/javascript">
                            function btndigga() {
                                $(".tracking-ad[data-mod='popu_222'] a").click();
                            }
                            function btnburya() {
                                $(".tracking-ad[data-mod='popu_223'] a").click();
                            }
                        </script>

                        <ul class="article_next_prev">
                            <li class="prev_article"><span onclick="_gaq.push(['_trackEvent','function', 'onclick', 'blog_articles_shangyipian']);location.href='/xieyunc/article/details/4131958';">上一篇</span><a href="/xieyunc/article/details/4131958" onclick="_gaq.push(['_trackEvent','function', 'onclick', 'blog_articles_shangyipian'])">#上一篇题目</a></li>
                            <li class="next_article"><span onclick="_gaq.push(['_trackEvent','function', 'onclick', 'blog_articles_xiayipian']);location.href='/xieyunc/article/details/4137592';">下一篇</span><a href="/xieyunc/article/details/4137592" onclick="_gaq.push(['_trackEvent','function', 'onclick', 'blog_articles_xiayipian'])">#下一篇题目</a></li>
                        </ul>

                        <div style="clear: both; height: 10px;"></div>


                    </div>

                    <div>

                        <!-- 广告位：PC端-博客内容页-banner1-960*90 -->
                        <script>
                            (function () {
                                var s = "_" + Math.random().toString(36).slice(2);
                                document.write('<div id="' + s + '"></div>');
                                (window.slotbydup = window.slotbydup || []).push({
                                    id: '4228013',
                                    container: s,
                                    size: '0,0',
                                    display: 'inlay-fix'
                                });
                            })();
                        </script>
                    </div>

                    <div id="suggest"></div>
                    <script language="javascript" type='text/javascript'>
                        $(function () {
                            $.get("/xieyunc/svc/GetSuggestContent/4136125", function (data) {
                                $("#suggest").html(data);
                            });
                        });
                    </script>


                    <style>
                        .blog-ass-articl dd {
                            color: #369;
                            width: 99%; /*修改行*/
                            float: left;
                            overflow: hidden;
                            font: normal normal 12px/23px "SimSun";
                            height: 23px;
                            margin: 0;
                            padding: 0 0 0 10px;
                            margin-right: 30px;
                            background: url(http://static.blog.csdn.net/skin/default/images/blog-dot-red3.gif) no-repeat 0 10px;
                        }
                    </style>



                    <div id="ad_cen">
                        <div>
                            <div class="tracking-ad" data-view="true" data-mod="ad_popu_199" data-mtp="43" data-order="114" data-con="ad_content_1843" style="width: 960px; height: 90px;">
                                <script type="text/javascript">
                                    /*博客内容页下方Banner2-960*90，创建于,2016-11-28*/
                                    var cpro_id = "u2831143";
                                </script>
                                <script type="text/javascript" src="http://cpro.baidustatic.com/cpro/ui/c.js"></script>
                            </div>
                        </div>
                    </div>

                    <!-- 广告位开始 -->
                    <!-- 广告位结束 -->


                    <div class="comment_class">
                        <div id="comment_title" class="panel_head">
                            <span class="see_comment">查看评论</span><a name="comments"></a>
                        </div>
                        <div id="comment_list">
                            <dl class="comment_item comment_topic" id="comment_item_2386721">
                                <dt class="comment_head" floor="9">9楼 <span class="user"><a class="username" href="/xieyunc" target="_blank">小宇飞刀</a> <span class="ptime">2012-09-28 09:59发表</span>  <a href="#reply" class="cmt_btn reply" title="回复">[回复]</a> <span class="comment_manage" style="display: none;" commentid="2386721" username="xieyunc"><a href="#quote" class="cmt_btn quote" title="引用">[引用]</a> <a href="#report" class="cmt_btn report" title="举报">[举报]</a></span></span></dt>
                                <dd class="comment_userface"><a href="/xieyunc" target="_blank">
                                    <img src="http://avatar.csdn.net/5/A/2/3_xieyunc.jpg" width="40" height="40"></a></dd>
                                <dd class="comment_body">毫秒，时间单位，符号ms（英语：millisecond ）.<br>
                                    1毫秒等于一千分之一秒（10-3秒）<br>
                                    微秒，时间单位，符号μs（英语：microsecond ）.<br>
                                    1微秒等于一百万分之一秒（10-6秒）<br>
                                    <br>
                                    1秒=1000毫秒(ms)<br>
                                    1毫秒=1000 微秒</dd>
                            </dl>
                            <dl class="comment_item comment_topic" id="comment_item_2386714">
                                <dt class="comment_head" floor="8">8楼 <span class="user"><a class="username" href="/xieyunc" target="_blank">小宇飞刀</a> <span class="ptime">2012-09-28 09:55发表</span>  <a href="#reply" class="cmt_btn reply" title="回复">[回复]</a> <span class="comment_manage" style="display: none;" commentid="2386714" username="xieyunc"><a href="#quote" class="cmt_btn quote" title="引用">[引用]</a> <a href="#report" class="cmt_btn report" title="举报">[举报]</a></span></span></dt>
                                <dd class="comment_userface"><a href="/xieyunc" target="_blank">
                                    <img src="http://avatar.csdn.net/5/A/2/3_xieyunc.jpg" width="40" height="40"></a></dd>
                                <dd class="comment_body">是的，是毫秒。<br>
                                    s（秒）、ms（毫秒）、μs（微秒）、ns（纳秒），其中：1s=1000ms，1 ms=1000μs，1μs=1000ns</dd>
                            </dl>
                            <dl class="comment_item comment_topic" id="comment_item_2376019">
                                <dt class="comment_head" floor="7">7楼 <span class="user"><a class="username" href="/mail_cm" target="_blank">mail_cm</a> <span class="ptime">2012-09-19 09:58发表</span>  <a href="#reply" class="cmt_btn reply" title="回复">[回复]</a> <span class="comment_manage" style="display: none;" commentid="2376019" username="mail_cm"><a href="#quote" class="cmt_btn quote" title="引用">[引用]</a> <a href="#report" class="cmt_btn report" title="举报">[举报]</a></span></span></dt>
                                <dd class="comment_userface"><a href="/mail_cm" target="_blank">
                                    <img src="http://avatar.csdn.net/1/8/1/3_mail_cm.jpg" width="40" height="40"></a></dd>
                                <dd class="comment_body">是以毫秒为单位的，不是微秒</dd>
                            </dl>
                            <dl class="comment_item comment_topic" id="comment_item_2141202">
                                <dt class="comment_head" floor="6">6楼 <span class="user"><a class="username" href="/laocui172" target="_blank">laocui172</a> <span class="ptime">2012-03-23 09:54发表</span>  <a href="#reply" class="cmt_btn reply" title="回复">[回复]</a> <span class="comment_manage" style="display: none;" commentid="2141202" username="laocui172"><a href="#quote" class="cmt_btn quote" title="引用">[引用]</a> <a href="#report" class="cmt_btn report" title="举报">[举报]</a></span></span></dt>
                                <dd class="comment_userface"><a href="/laocui172" target="_blank">
                                    <img src="http://avatar.csdn.net/F/6/2/3_laocui172.jpg" width="40" height="40"></a></dd>
                                <dd class="comment_body">经测试发现timeSetEvent是在另一个单独的线程里执行回调函数的，<br>
                                    对于公共资源，怎么处理线程同步？</dd>
                            </dl>
                            <dl class="comment_item comment_topic" id="comment_item_2093296">
                                <dt class="comment_head" floor="5">5楼 <span class="user"><a class="username" href="/LonlyGod" target="_blank">LonlyGod</a> <span class="ptime">2012-02-07 16:22发表</span>  <a href="#reply" class="cmt_btn reply" title="回复">[回复]</a> <span class="comment_manage" style="display: none;" commentid="2093296" username="LonlyGod"><a href="#quote" class="cmt_btn quote" title="引用">[引用]</a> <a href="#report" class="cmt_btn report" title="举报">[举报]</a></span></span></dt>
                                <dd class="comment_userface"><a href="/LonlyGod" target="_blank">
                                    <img src="http://avatar.csdn.net/2/4/A/3_lonlygod.jpg" width="40" height="40"></a></dd>
                                <dd class="comment_body">楼主，后续呢。。。</dd>
                            </dl>
                            <dl class="comment_item comment_topic" id="comment_item_1872312">
                                <dt class="comment_head" floor="4">4楼 <span class="user"><a class="username" href="/wuxiao1983" target="_blank">wuxiao1983</a> <span class="ptime">2011-08-11 15:30发表</span>  <a href="#reply" class="cmt_btn reply" title="回复">[回复]</a> <span class="comment_manage" style="display: none;" commentid="1872312" username="wuxiao1983"><a href="#quote" class="cmt_btn quote" title="引用">[引用]</a> <a href="#report" class="cmt_btn report" title="举报">[举报]</a></span></span></dt>
                                <dd class="comment_userface"><a href="/wuxiao1983" target="_blank">
                                    <img src="http://avatar.csdn.net/E/6/7/3_wuxiao1983.jpg" width="40" height="40"></a></dd>
                                <dd class="comment_body">应该是毫秒吧</dd>
                            </dl>
                            <dl class="comment_item comment_topic" id="comment_item_1661528">
                                <dt class="comment_head" floor="3">3楼 <span class="user"><a class="username" href="/majiandongde" target="_blank">majiandongde</a> <span class="ptime">2011-05-05 10:35发表</span>  <a href="#reply" class="cmt_btn reply" title="回复">[回复]</a> <span class="comment_manage" style="display: none;" commentid="1661528" username="majiandongde"><a href="#quote" class="cmt_btn quote" title="引用">[引用]</a> <a href="#report" class="cmt_btn report" title="举报">[举报]</a></span></span></dt>
                                <dd class="comment_userface"><a href="/majiandongde" target="_blank">
                                    <img src="http://avatar.csdn.net/2/C/8/3_majiandongde.jpg" width="40" height="40"></a></dd>
                                <dd class="comment_body">提升进程权限，系统进程也能远程注入</dd>
                            </dl>
                            <dl class="comment_item comment_topic" id="comment_item_1448172">
                                <dt class="comment_head" floor="2">2楼 <span class="user"><a class="username" href="/匿名用户" target="_blank">匿名用户</a> <span class="ptime">2010-07-13 18:43发表</span>  <a href="#reply" class="cmt_btn reply" title="回复">[回复]</a> <span class="comment_manage" style="display: none;" commentid="1448172" username="匿名用户"><a href="#quote" class="cmt_btn quote" title="引用">[引用]</a> <a href="#report" class="cmt_btn report" title="举报">[举报]</a></span></span></dt>
                                <dd class="comment_userface"><a href="/匿名用户" target="_blank">
                                    <img src="http://avatar.csdn.net/7/0/8/3_匿名用户.jpg" width="40" height="40"></a></dd>
                                <dd class="comment_body">uDelay<br>
                                    <br>
                                    Event delay, in milliseconds. If this value is not in the range of the minimum and maximum event delays supported by the timer, the function returns an error.<br>
                                    <br>
                                    uResolution<br>
                                    <br>
                                    Resolution of the timer event, in milliseconds. The resolution increases with smaller values; a resolution of 0 indicates periodic events should occur with the greatest possible accuracy. To reduce system overhead, however, you should use the maximum value appropriate for your application.<br>
                                    <br>
                                    兄弟，失之毫厘，谬以千里[e08]</dd>
                            </dl>
                            <dl class="comment_item comment_topic" id="comment_item_1286637">
                                <dt class="comment_head" floor="1">1楼 <span class="user"><a class="username" href="/xuexingyang" target="_blank">xuexingyang</a> <span class="ptime">2010-03-04 10:22发表</span>  <a href="#reply" class="cmt_btn reply" title="回复">[回复]</a> <span class="comment_manage" style="display: none;" commentid="1286637" username="xuexingyang"><a href="#quote" class="cmt_btn quote" title="引用">[引用]</a> <a href="#report" class="cmt_btn report" title="举报">[举报]</a></span></span></dt>
                                <dd class="comment_userface"><a href="/xuexingyang" target="_blank">
                                    <img src="http://avatar.csdn.net/4/1/6/3_xuexingyang.jpg" width="40" height="40"></a></dd>
                                <dd class="comment_body">[e02][e01]</dd>
                            </dl>
                            <div class="clear"></div>
                        </div>
                        <div id="comment_bar">
                        </div>
                        <div id="comment_form">
                        </div>
                        <div class="announce">
                            * 以上用户言论只代表其个人观点，不代表CSDN网站的观点或立场<a name="reply"></a><a name="quote"></a>
                        </div>
                    </div>

                    <script type="text/javascript">
                        var fileName = '4136125';
                        var commentscount = 9;
                        var islock = false
                    </script>

                    <div id="ad_bot">
                    </div>
                    <div id="report_dialog">
                    </div>

                    <div id="d-top" style="bottom: 60px;">

                        <a id="quick-reply" class="btn btn-top q-reply" title="快速回复" style="display: none;">
                            <img src="http://static.blog.csdn.net/images/blog-icon-reply.png" alt="快速回复">
                        </a>
                        <a id="d-top-a" class="btn btn-top backtop" style="display: none;" title="返回顶部" onclick="_gaq.push(['_trackEvent','function', 'onclick', 'blog_articles_huidaodingbu'])" style="">
                            <img src="http://static.blog.csdn.net/images/top.png" alt="TOP">
                        </a>
                    </div>
                    <script type="text/javascript">
                        $(function () {
                            $("#ad_frm_0").height("90px");

                            setTimeout(function () {
                                $("#ad_frm_2").height("200px");
                            }, 1000);
                        });

                    </script>
                    <style type="text/css">
                        .tag_list {
                            background: none repeat scroll 0 0 #FFFFFF;
                            border: 1px solid #D7CBC1;
                            color: #000000;
                            font-size: 12px;
                            line-height: 20px;
                            list-style: none outside none;
                            margin: 10px 2% 0 1%;
                            padding: 1px;
                        }

                            .tag_list h5 {
                                background: none repeat scroll 0 0 #E0DBD3;
                                color: #47381C;
                                font-size: 12px;
                                height: 24px;
                                line-height: 24px;
                                padding: 0 5px;
                                margin: 0;
                            }

                                .tag_list h5 a {
                                    color: #47381C;
                                }

                        .classify {
                            margin: 10px 0;
                            padding: 4px 12px 8px;
                        }

                            .classify a {
                                margin-right: 20px;
                                white-space: nowrap;
                            }
                    </style>





                    <div id="pop_win" style="display: none; position: absolute; z-index: 10000; border: 1px solid rgb(220, 220, 220); top: 222.5px; left: 630px; opacity: 1; background: none 0px 0px repeat scroll rgb(255, 255, 255);">
                    </div>
                    <div id="popup_mask"></div>
                    <style>
                        #popup_mask {
                            position: absolute;
                            width: 100%;
                            height: 100%;
                            background: #000;
                            z-index: 9999;
                            left: 0px;
                            top: 0px;
                            opacity: 0.3;
                            filter: alpha(opacity=30);
                            display: none;
                        }
                    </style>




                    <script type="text/javascript">
                        $(function () {

                            setTimeout(function () {
                                $(".comment_body:contains('回复')").each(function (index, item) {
                                    var u = $(this).text().split('：')[0].toString().replace("回复", "")
                                    var thisComment = $(this);
                                    if (u) {
                                        $.getJSON("https://passport.csdn.net/get/nick?callback=?", { users: u }, function (a) {
                                            if (a != null && a.data != null && a.data.length > 0) {
                                                nick = a.data[0].n;
                                                if (u != nick) {
                                                    thisComment.text(thisComment.text().replace(u, nick));
                                                }
                                            }
                                        });
                                    }
                                });

                            }, 200);

                            setTimeout(function () {
                                $(".math").each(function (index, value) { $(this).find("span").last().css("color", "#fff"); })
                            }, 5000);

                            setTimeout(function () {
                                $(".math").each(function (index, value) { $(this).find("span").last().css("color", "#fff"); })
                            }, 10000);

                            setTimeout(function () {
                                $(".math").each(function (index, value) { $(this).find("span").last().css("color", "#fff"); })
                            }, 15000);

                            setTimeout(function () {
                                $("a img[src='http://js.tongji.linezing.com/stats.gif']").parent().css({ "position": "absolute", "left": "50%" });
                            }, 300);
                        });

                        function loginbox() {
                            var $logpop = $("#pop_win");
                            $logpop.html('<iframe src="https://passport.csdn.net/account/loginbox?service=http://static.blog.csdn.net/callback.htm" frameborder="0" height="600" width="400" scrolling="no"></iframe>');

                            $('#popup_mask').css({
                                opacity: 0.5,
                                width: $(document).width() + 'px',
                                height: $(document).height() + 'px'
                            });
                            $('#popup_mask').css("display", "block");

                            $logpop.css({
                                top: ($(window).height() - $logpop.height()) / 2 + $(window
                           ).scrollTop() + 'px',
                                left: ($(window).width() - $logpop.width()) / 2
                            });

                            setTimeout(function () {
                                $logpop.show();
                                $logpop.css({
                                    opacity: 1
                                });
                            }, 200);

                            $('#popup_mask').unbind("click");
                            $('#popup_mask').bind("click", function () {
                                $('#popup_mask').hide();
                                var $clopop = $("#pop_win");
                                $("#common_ask_div_sc").css("display", "none");
                                $clopop.css({
                                    opacity: 0
                                });
                                setTimeout(function () {
                                    $clopop.hide();
                                }, 350);
                                return false;
                            });
                        }

                        var articletitle = 'timeSetEvent的用法（一）';

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


                <!-- 广告位开始 -->
                <!-- 广告位结束 -->
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





    <!--new top-->











    <script type="text/javascript" src="http://static.blog.csdn.net/public/res/bower-libs/MathJax/MathJax.js?config=TeX-AMS_HTML"></script>
    <script type="text/javascript">
        //$(function () {
        //    setTimeout(function () {
        //        var searchtitletags = articletitle + ',' + $("#tags").html();
        //        searchService({
        //            index: 'blog',
        //            query: searchtitletags,
        //            from: 5,
        //            size: 5,
        //            appendTo: '#res',
        //            url: 'recommend',
        //            his: 2,
        //            client: "blog_cf_enhance",
        //            tmpl: '<dd style="background:url(http://static.blog.csdn.net/skin/default/images/blog-dot-red3.gif) no-repeat 0 10px;"><a href="#{ url }" title="#{ title }" strategy="#{ strategy }">#{ title }</a></dd>'
        //        });
        //    }, 1000);
        //});

    </script>

    <script src="http://static.blog.csdn.net/scripts/csdn_blog_detail.min.js" type="text/javascript"></script>

    <script type="text/javascript" src="http://c.csdnimg.cn/blog/csdn_public_blog_detail.min.js?20170620001"></script>

    <%-- <script type="text/javascript" src="http://medal.blog.csdn.net/showblogmedal.ashx?blogid=171323"></script>--%>
    <!--隐藏版权信息-->
    <style type="text/css">
        .pub_fo {
            height: 0px;
        }
    </style>






    <div id="a52b5334d" style="width: 1px; height: 1px; display: none;">
        <script id="adJs52b5334"></script>
        <script>document.getElementById("adJs52b5334").src = "http://ads.csdn.net/js/opt/52b5334.js?t=" + Math.random();</script>
    </div>








    <div class="pop_CA_cover" style="display: none"></div>
    <%--    <div class="pop pop_CA" style="display: none">
        <div class="CA_header">
            收藏助手
            <span class="cancel_icon" id="fapancle" onclick="$('.pop_CA').hide();$('.pop_CA_cover').hide();"></span>
        </div>
        <iframe src="" id="fa" frameborder="0" width="100%" height="360" scrolling="no"></iframe>
    </div>--%>


    <script type="text/javascript">

        $(function () {
            var fromjs = $("#fromjs");
            if (fromjs.length > 0) {
                $("#fromjs .markdown_views pre").addClass("prettyprint");
                prettyPrint();

                $('pre.prettyprint code').each(function () {
                    var lines = $(this).text().split('\n').length;
                    var $numbering = $('<ul/>').addClass('pre-numbering').hide();
                    $(this).addClass('has-numbering').parent().append($numbering);
                    for (i = 1; i <= lines; i++) {
                        $numbering.append($('<li/>').text(i));
                    };
                    $numbering.fadeIn(1700);
                });

                $('.pre-numbering li').css("color", "#999");
            }
        });

        $(".markdown_views a[target!='_blank']").attr("target", "_blank");

        //$(".toc a[target='_blank']").attr("target", "");

        setTimeout(function () {
            $(".toc a[target='_blank']").attr("target", "");
        }, 500);

    </script>
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
