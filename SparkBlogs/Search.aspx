<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="SparkBlogs.Search" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Android -- CSDN搜索</title>
		<link href="http://csdnimg.cn/public/common/libs/bootstrap/css/bootstrap.css" rel="stylesheet" >
		<link href="http://csdnimg.cn/public/themes/default/css/common.css" rel="stylesheet" >
<!-- 		<link href="http://csdnimg.cn/public/static/css/pagination.css" rel="stylesheet"> -->
		<link href="http://c.csdnimg.cn/public/common/toolbar/css/index.css" rel="stylesheet" >
		<link href="/so/css/bootstrap.min.css" rel="stylesheet" media="screen">
	    <link href="/so/css/bootstrap-responsive.css" rel="stylesheet">
	    <link href="http://csdnimg.cn/public/favicon.ico" rel="SHORTCUT ICON">
	    <link rel="stylesheet" href="/so/css/introduction.css" media="screen" title="no title" charset="utf-8">
	    
    	<link type="text/css" href="/so/css/main.css?1314" rel="stylesheet">
    	
		<script type="text/javascript" src="/so/js/jquery.js"></script>
		<script type="text/javascript" src="/so/js/bootstrap.min.js"></script>
		<script src="/so/js/jsonp.js" type="text/javascript"></script>
		<script src="/so/js/ser_person.js" type="text/javascript"></script>
		

		<!--[if lt IE 8]>-->
         <script src="http://csdnimg.cn/cdn/201502/js/json2.js"></script> 
      <!-- [endif]-->
      
    <link href="/so/snippet/search_files/common.css" rel="stylesheet">
    <link href="/so/snippet/search_files/pagination.css" rel="stylesheet">

    <link href="http://csdnimg.cn/public/favicon.ico" rel="SHORTCUT ICON">
    <link rel="stylesheet" href="/so/snippet/icono.min.css">
    <link rel="stylesheet" href="/so/snippet/codestyle.css" media="screen" title="no title" charset="utf-8">
    <link rel="stylesheet" href="/so/snippet/font-awesome-4.3.0/css/font-awesome.css" media="screen" title="no title" charset="utf-8">
	<link rel="stylesheet" href="/so/snippet/blog_code.css" />
    
    <script language="javascript" type="text/javascript" src="http://ads.csdn.net/js/tracking.js"></script>
    
    <!-- 代码段highlighter -->
    <link type="text/css" rel="stylesheet" href="/so/snippet/syntaxhighlighter_3.0.83/styles/shCore.css"/>
    <script type="text/javascript" src="/so/snippet/syntaxhighlighter_3.0.83/scripts/shCore.js"></script>
    <!-- 这里使用 eclipse 外观，styles 目录下还有很多的外观 -->
    <!--<link type="text/css" rel="stylesheet" href="styles/shThemeEclipse.css"/>-->
    <link type="text/css" rel="stylesheet" href="/so/snippet/syntaxhighlighter_3.0.83/styles/shCoreDefault.css"/>
    <!-- 自动识别 code 语言 -->
    <script type="text/javascript" src="/so/snippet/syntaxhighlighter_3.0.83/scripts/shAutoloader.js"></script>
    <script type="text/javascript">
		$(function(){
			
			/* add by zw start 20160622 */
		    //识别不同语言的code
		    SyntaxHighlighter.defaults['smart-tabs'] = true;
		    SyntaxHighlighter.defaults['collapse']="collapse";
		    SyntaxHighlighter.config.bloggerMode = true;
		    SyntaxHighlighter.config.clipboardSwf = 'scripts/clipboard.swf';
		    SyntaxHighlighter.autoloader(
	           ['as3', 'actionscript3','/so/snippet/syntaxhighlighter_3.0.83/scripts/shBrushAS3.js'],
	           ['bash','shell','/so/snippet/syntaxhighlighter_3.0.83/scripts/shBrushBash.js'],
	           ['cf', 'coldfusion','/so/snippet/syntaxhighlighter_3.0.83/scripts/shBrushColdFusion.js'],
	           ['c-sharp', 'csharp','/so/snippet/syntaxhighlighter_3.0.83/scripts/shBrushCSharp.js'],
	           ['cpp', 'c','/so/snippet/syntaxhighlighter_3.0.83/scripts/shBrushCpp.js'],
	           ['css','/so/snippet/syntaxhighlighter_3.0.83/scripts/shBrushCss.js'],
	           ['delphi', 'pas', 'pascal','/so/snippet/syntaxhighlighter_3.0.83/scripts/shBrushDelphi.js'],
	           ['diff', 'patch','/so/snippet/syntaxhighlighter_3.0.83/scripts/shBrushDiff.js'],
	           ['erl', 'erlang','/so/snippet/syntaxhighlighter_3.0.83/scripts/shBrushErlang.js'],
	           ['groovy','/so/snippet/syntaxhighlighter_3.0.83/scripts/shBrushGroovy.js'],
	           ['js','jscript','javascript','/so/snippet/syntaxhighlighter_3.0.83/scripts/shBrushJScript.js'],
	           ['java','/so/snippet/syntaxhighlighter_3.0.83/scripts/shBrushJava.js'],
	           ['jfx', 'javafx','/so/snippet/syntaxhighlighter_3.0.83/scripts/shBrushJavaFX.js'],
	           ['perl', 'pl','/so/snippet/syntaxhighlighter_3.0.83/scripts/shBrushPerl.js'],
	           ['php','/so/snippet/syntaxhighlighter_3.0.83/scripts/shBrushPhp.js'],
	           ['plain', 'text','/so/snippet/syntaxhighlighter_3.0.83/scripts/shBrushPlain.js'],
	           ['ps', 'powershell','/so/snippet/syntaxhighlighter_3.0.83/scripts/shBrushPowerShell.js'],
	           ['py', 'python','/so/snippet/syntaxhighlighter_3.0.83/scripts/shBrushPython.js'],
	           ['rails', 'ror', 'ruby','/so/snippet/syntaxhighlighter_3.0.83/scripts/shBrushRuby.js'],
	           ['scala','/so/snippet/syntaxhighlighter_3.0.83/scripts/shBrushScala.js'],
	           ['sql','/so/snippet/syntaxhighlighter_3.0.83/scripts/shBrushSql.js'],
	           ['vb', 'vbnet','/so/snippet/syntaxhighlighter_3.0.83/scripts/shBrushVb.js'],
	           ['xml', 'xhtml', 'xslt', 'html', 'xhtml','/so/snippet/syntaxhighlighter_3.0.83/scripts/shBrushXml.js']
		    );
		    SyntaxHighlighter.all();
		    /* add by zw end 20160622 */
		    
			var $href = $( '.rel-search' );
			$href.each( function ( i, item ) {
				var href = item.getAttribute( 'href', 2 );
				var reg = /q=(.*?)&/g;
				item.href = href.replace( reg, function ( all, sub ) {
					return 'q=' + encodeURIComponent( sub ) +"&";
				});
			});
			//console.log( href );
		});
	</script>  
	<script type="text/javascript" src="/so/snippet/saveToCode.js" charset="utf-8"></script> 
	<script type="text/javascript">
	var loginname = getCookie('UserName');
    var currentUserName = loginname;
    function getCookie(objName)
    {
        var arrStr = document.cookie.split("; ");
        for(var i = 0;i < arrStr.length;i ++)
        {
            var temp = arrStr[i].split("=");
            if(temp[0] == objName)
            {
                return decodeURI(temp[1]);
            }
        }
    }
    </script>
    <style type="text/css">
        /** 改一下字号大小，否则格式化后的代码会很大 */
        .syntaxhighlighter {
            margin: 0 0 1em 0 !important;
        }
        .syntaxhighlighter div {
            font-size:12px !important;
            line-height: 1.5em !important;
        }
        .syntaxhighlighter a, .syntaxhighlighter div, .syntaxhighlighter code, .syntaxhighlighter table, .syntaxhighlighter table td, .syntaxhighlighter table tr, .syntaxhighlighter table tbody, .syntaxhighlighter table thead, .syntaxhighlighter table caption, .syntaxhighlighter textarea{
            line-height: 1.5em !important;
        }
        .showinfor {
            font-size: 14px;
            clear:both;
            padding:10px 0;
        }
        .showinfor span{
            color:#666666;
        }
        .showinfor span em{
           color:#be1a21;
           display:inline-block;
           margin-left:5px;
           font-style:normal;
        }
        .showinfor a{
            color: #267AA8;
            display: inline-block;
            margin-left: 5px;
        }
    </style>

    <script src="/so/snippet/clipboard.min.js" charset="utf-8"></script>
	<script src="/so/snippet/test.js" charset="utf-8"></script>
		<script type="text/javascript">
			function GetQueryString(name) {
			   var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)","i");
			   var r = window.location.search.substr(1).match(reg);
			   if (r!=null) return unescape(r[2]); return null;
			}
			//var show_course = false;
			
			$(document).ready(function(){
				
			    $("ul.search-type li").click(function(){
			    	var ili = $(".search-type")[0].children.length;
					for (var i = 0; i < ili; i++) {
						$(".search-type")[0].children[i].style.color="#000000";
					}
					
			    	if (this.innerHTML == "极客头条") {
			    		
			    		leavecode();
			    		$("#tt")[0].value = "news";
			    		$("#tb")[0].value = "news";
			    		
			    		$(".search-type")[0].children[5].style.color="#990000";
			    		
			    		$("#ot")[0].value = $("input[name='o1']:checked").val();
			    		$("#ob")[0].value = $("input[name='o1']:checked").val();
			    		$("#st")[0].value = "";
			    		$("#sb")[0].value = "";
			    		
			    		$("#o_news")[0].style.display="inline";
			    		$("#o_disscus_code")[0].style.display="none";
			    		$("#o_doc")[0].style.display="none";
// 			    		$("#o_ask")[0].style.display="none";
 			    		$("input[name='o1']").each(function() {
 				    		if($(this).val() == "null")
 				    		{
 				    			$(this).attr("checked",true);
 				    		}});
// 			    		$("input[name='o1'][value='time'").attr("checked",true);
						$("#codeSelector")[0].style.display="none";
						$("#codeSelector2")[0].style.display="none";
// 						$(".solve_pupup")[0].style.display="none";
						
			    	} else if (this.innerHTML == "博文") {
			    		leavecode();
			    		$("#tt")[0].value = "blog";
			    		$("#tb")[0].value = "blog";
			    		
			    		$(".search-type")[0].children[2].style.color="#990000";
			    		
			    		$("#ot")[0].value = "";
			    		$("#ob")[0].value = "";
			    		$("#st")[0].value = "";
			    		$("#sb")[0].value = "";
			    		
			    		$("#o_news")[0].style.display="none";
			    		$("#o_disscus_code")[0].style.display="none";
			    		$("#o_doc")[0].style.display="none";
// 			    		$("#o_ask")[0].style.display="none";
			    		$("#codeSelector")[0].style.display="none";
			    		$("#codeSelector2")[0].style.display="none";
// 			    		$(".solve_pupup")[0].style.display="none";
			    	} else if (this.innerHTML == "课程") {
			    		leavecode();
			    		$("#tt")[0].value = "course";
			    		$("#tb")[0].value = "course";
			    		
			    		$(".search-type")[0].children[6].style.color="#990000";
			    		
			    		$("#ot")[0].value = "";
			    		$("#ob")[0].value = "";
			    		$("#st")[0].value = "";
			    		$("#sb")[0].value = "";
			    		
			    		$("#o_news")[0].style.display="none";
			    		$("#o_disscus_code")[0].style.display="none";
			    		$("#o_doc")[0].style.display="none";
// 			    		$("#o_ask")[0].style.display="none";
			    		$("#codeSelector")[0].style.display="none";
			    		$("#codeSelector2")[0].style.display="none";
// 			    		$(".solve_pupup")[0].style.display="none";
			    	} else if (this.innerHTML == "讨论") {
			    		leavecode();
			    		$("#tt")[0].value = "discuss";
			    		$("#tb")[0].value = "discuss";
			    		
			    		$(".search-type")[0].children[3].style.color="#990000";
			    		
			    		$("#ot")[0].value = $("input[name='o1']:checked").val();
			    		$("#ob")[0].value = $("input[name='o1']:checked").val();
			    		$("#st")[0].value = "";
			    		$("#sb")[0].value = "";
			    		
			    		$("#o_news")[0].style.display="none";
			    		$("#o_disscus_code")[0].style.display="inline";
			    		$("#o_doc")[0].style.display="none";
// 			    		$("#o_ask")[0].style.display="none";
			    		$("#codeSelector")[0].style.display="none";
			    		$("#codeSelector2")[0].style.display="none";
// 			    		$(".solve_pupup")[0].style.display="none";
// 			    	} else if (this.innerHTML == "代码项目") {
// 			    		leavecode();
// 			    		$("#tt")[0].value = "code";
// 			    		$("#tb")[0].value = "code";
			    		
// 			    		$(".search-type")[0].children[4].style.color="#990000";
			    		
// // 			    		$("#ot")[0].value = $("input[name='o1']:checked").val();
// // 			    		$("#ob")[0].value = $("input[name='o1']:checked").val();
// 			    		$("#ot")[0].value = "";
// 			    		$("#ob")[0].value = "";
			    		
// 			    		$("#st")[0].value = "";
// 			    		$("#sb")[0].value = "";
			    		
// 			    		$("#o_news")[0].style.display="none";
// 			    		$("#o_disscus_code")[0].style.display="inline";
// 			    		$("#o_doc")[0].style.display="none";
// // 			    		$("#o_ask")[0].style.display="none";
// 			    		$("#codeSelector")[0].style.display="none";
// 			    		$("#codeSelector2")[0].style.display="none";
// // 			    		$(".solve_pupup")[0].style.display="none";
// 			    	} else if (this.innerHTML == "文档") {
			    	} else if (this.innerHTML == "下载资源") {
			    		leavecode();
			    		$("#tt")[0].value = "doc";
			    		$("#tb")[0].value = "doc";
			    		
			    		$(".search-type")[0].children[4].style.color="#990000";
			    		
			    		$("#ot")[0].value = "";
			    		$("#ob")[0].value = "";
			    		$("#st")[0].value = $("input[name='o3']:checked").val();
			    		$("#sb")[0].value = $("input[name='o3']:checked").val();
			    		
			    		$("#o_news")[0].style.display="none";
			    		$("#o_disscus_code")[0].style.display="none";
// 			    		$("#o_doc")[0].style.display="inline";
			    		$("#o_doc")[0].style.display="none";
// 			    		$("#o_ask")[0].style.display="none";
			    		$("#codeSelector")[0].style.display="none";
			    		$("#codeSelector2")[0].style.display="none";
// 			    		$(".solve_pupup")[0].style.display="none";
			    	} else if (this.innerHTML == "代码片") {
			    		codeonready();
			    		$("#tt")[0].value = "codes_snippet";
			    		$("#tb")[0].value = "codes_snippet";
			    		
			    		$(".search-type")[0].children[1].style.color="#990000";
			    		
			    		$("#ot")[0].value = "";
			    		$("#ob")[0].value = "";
			    		$("#st")[0].value = "";
			    		$("#sb")[0].value = "";
			    		
			    		$("#o_news")[0].style.display="none";
			    		$("#o_disscus_code")[0].style.display="none";
			    		$("#o_doc")[0].style.display="none";
			    		$("#codeSelector")[0].style.display="inline";
			    		$("#codeSelector2")[0].style.display="inline";
// 			    		$(".solve_pupup")[0].style.display="inline";
// 			    	} else if (this.innerHTML == "问答") {
// 			    		$("#tt")[0].value = "ask_topic";
// 			    		$("#tb")[0].value = "ask_topic";
			    		
// 			    		$(".search-type")[0].children[6].style.color="#990000";
			    		
// 			    		$("#ot")[0].value = "";
// 			    		$("#ob")[0].value = "";
// 			    		$("#st")[0].value = $("input[name='o4']:checked").val();
// 			    		$("#sb")[0].value = $("input[name='o4']:checked").val();
			    		
// 			    		$("#o_news")[0].style.display="none";
// 			    		$("#o_disscus_code")[0].style.display="none";
// 			    		$("#o_doc")[0].style.display="none";
// // 			    		$("#o_ask")[0].style.display="inline";
			    		
			    	} else {
			    		leavecode();
			    		$("#tt")[0].value = "";
			    		$("#tb")[0].value = "";
			    		
			    		$(".search-type")[0].children[0].style.color="#990000";
			    		
			    		$("#ot")[0].value = "";
			    		$("#ob")[0].value = "";
			    		$("#st")[0].value = "";
			    		$("#sb")[0].value = "";
			    		
			    		$("#o_news")[0].style.display="none";
			    		$("#o_disscus_code")[0].style.display="none";
			    		$("#o_doc")[0].style.display="none";
// 			    		$("#o_ask")[0].style.display="none";
			    		$("#codeSelector")[0].style.display="none";
			    		$("#codeSelector2")[0].style.display="none";
// 			    		$(".solve_pupup")[0].style.display="none";
			    	}
			    	document.search_form_1.submit();
			    });
			});
			function changeOrder(value) {
				$("#ot")[0].value = value;
	    		$("#ob")[0].value = value;
	    		
	    		document.search_form_1.submit();
			}
			function changeDocOrder(value) {
				$("#st")[0].value = value;
	    		$("#sb")[0].value = value;
	    		
	    		document.search_form_1.submit();
			}
			function changeLan(type) {
				var value = "";
				if ("1" == type)
					value = $("#dropdownMenu").val();
				else
					value = $("#dropdownMenu2").val();
				$("#lant")[0].value = value;
	    		$("#lanb")[0].value = value;
	    		
	    		document.search_form_1.submit();
			}
// 			function changeAskOrder(value) {
// 				$("#st")[0].value = value;
// 	    		$("#sb")[0].value = value;
	    		
// 	    		document.search_form_1.submit();
// 			}
			
			
		</script>
		
		<script language="JavaScript" type="text/JavaScript">
		$(document).ready(function(){
			
				var ili = $(".search-type")[0].children.length;
				/* for (var i = 0; i < ili; i++) {
					$(".search-type")[0].children[i].style.color="#000000";
				} */
				var t = GetQueryString("t");
				
				if (t == "news") {
					leavecode();
					$(".search-type")[0].children[5].style.color="#990000";
					
		    		$("#o_news")[0].style.display="inline";
		    		$("#o_disscus_code")[0].style.display="none";
		    		$("#o_doc")[0].style.display="none";
// 		    		$("#o_ask")[0].style.display="none";

			    	$("input[name='o1']").each(function() {
			    		if($(this).val() == "null")
			    		{
			    			$(this).attr("checked",true);
			    		}});
			    	$("#codeSelector")[0].style.display="none";
			    	$("#codeSelector2")[0].style.display="none";
// 			    	$(".solve_pupup")[0].style.display="none";
				} else if (t == "blog") {
					leavecode();
					$(".search-type")[0].children[2].style.color="#990000";
					
		    		$("#o_news")[0].style.display="none";
		    		$("#o_disscus_code")[0].style.display="none";
		    		$("#o_doc")[0].style.display="none";
// 		    		$("#o_ask")[0].style.display="none";
		    		$("#codeSelector")[0].style.display="none";
		    		$("#codeSelector2")[0].style.display="none";
// 		    		$(".solve_pupup")[0].style.display="none";
				} else if (t == "course") {
					leavecode();
					$(".search-type")[0].children[6].style.color="#990000";
					
		    		$("#o_news")[0].style.display="none";
		    		$("#o_disscus_code")[0].style.display="none";
		    		$("#o_doc")[0].style.display="none";
// 		    		$("#o_ask")[0].style.display="none";
		    		$("#codeSelector")[0].style.display="none";
		    		$("#codeSelector2")[0].style.display="none";
// 		    		$(".solve_pupup")[0].style.display="none";
				} else if (t == "discuss") {
					leavecode();
					$(".search-type")[0].children[3].style.color="#990000";
					
					$("#o_news")[0].style.display="none";
		    		$("#o_disscus_code")[0].style.display="inline";
		    		$("#o_doc")[0].style.display="none";
// 		    		$("#o_ask")[0].style.display="none";

		    		$("input[name='o2']").each(function() {
			    		if($(this).val() == "null")
			    		{
			    			$(this).attr("checked",true)
			    		}});
		    		$("#codeSelector")[0].style.display="none";
		    		$("#codeSelector2")[0].style.display="none";
// 		    		$(".solve_pupup")[0].style.display="none";
				} else if (t == "code") {
					leavecode();
					$(".search-type")[0].children[4].style.color="#990000";
					
					$("#o_news")[0].style.display="none";
		    		$("#o_disscus_code")[0].style.display="none";
		    		$("#o_doc")[0].style.display="none";
// 		    		$("#o_ask")[0].style.display="none";

		    		$("input[name='o2']").each(function() {
			    		if($(this).val() == "null")
			    		{
			    			$(this).attr("checked",true)
			    		}});
		    		$("#codeSelector")[0].style.display="none";
		    		$("#codeSelector2")[0].style.display="none";
// 		    		$(".solve_pupup")[0].style.display="none";
				} else if (t == "doc") {
					leavecode();
					$(".search-type")[0].children[4].style.color="#990000";
					
					$("#o_news")[0].style.display="none";
		    		$("#o_disscus_code")[0].style.display="none";
		    		$("#o_doc")[0].style.display="none";
// 		    		$("#o_doc")[0].style.display="inline";
// 		    		$("#o_ask")[0].style.display="none";

		    		$("input[name='o3']").each(function() {
			    		if($(this).val() == "null")
			    		{
			    			$(this).attr("checked",true)
			    		}});
		    		$("#codeSelector")[0].style.display="none";
		    		$("#codeSelector2")[0].style.display="none";
// 		    		$(".solve_pupup")[0].style.display="none";
				} else if (t == "codes_snippet") {
					codeonready();
		    		$(".search-type")[0].children[1].style.color="#990000";
		    		
		    		$("#o_news")[0].style.display="none";
		    		$("#o_disscus_code")[0].style.display="none";
		    		$("#o_doc")[0].style.display="none";
		    		$("#codeSelector")[0].style.display="inline";
		    		$("#codeSelector2")[0].style.display="inline";
// 		    		$(".solve_pupup")[0].style.display="inline";
// 				} else if (t == "ask_topic") {
// 					$(".search-type")[0].children[6].style.color="#990000";
					
// 					$("#o_news")[0].style.display="none";
// 		    		$("#o_disscus_code")[0].style.display="none";
// 		    		$("#o_doc")[0].style.display="none";
// 		    		$("#o_ask")[0].style.display="inline";
// 		    		$("input[name='o3']").each(function() {

// 			    		{
// 			    			$(this).attr("checked",true)
// 			    		}});
				} else {
					leavecode();
					$(".search-type")[0].children[0].style.color="#990000";
					
					$("#o_news")[0].style.display="none";
		    		$("#o_disscus_code")[0].style.display="none";
		    		$("#o_doc")[0].style.display="none";
		    		$("#codeSelector")[0].style.display="none";
		    		$("#codeSelector2")[0].style.display="none";
// 		    		$(".solve_pupup")[0].style.display="none";
		    		//$("#o_ask")[0].style.display="none";
				}
				
// 				function soso( val ) {

// 		    		document.search_form_1.submit();
// 				}
				
// 				$( '.search-btn2' ).bind( 'click', function () {
// 					var $this = $( this );
// 					var $form = $this.parents( '.search-from2' ).find( 'form' );
// 					var val = $form.serialize();
					
// 					console.log( val );
// 					//soso( val );
// 				} );
				
// 				$( '.search-text2' ).bind( 'keydown', function ( et ) {
// 					var evt = et || window.event;
					
// 					if ( evt.keyCode == 13 )
// 					{
// 						var $this = $( this );
// 						var $form = $this.parents( '.search-from2' ).find( 'form' );
// 						var val = $form.serialize();
// 						console.log( val );
// 						//soso( val );
// 					}
// 				} );				
			});
// 			windows.onload = onload_handler;
		</script>
		<script type="text/javascript">
		domReady(function(){

		    var oT = getByClass(document,'search-text2')[0];
		    var oT2 = getByClass(document,'search-text2')[1];    
		    var oFormcon = getByClass(document,'search-from2');
		    var oForm1 = oFormcon[0].children[0];
		    var oForm2 = oFormcon[1].children[0];

		    var pos1 = getPos(oForm1).top;
		    var pos2 = getPos(oForm2).top;    

		    var oUl = document.getElementById('search-suggest2');
		    var oUl2 = document.getElementById('search-suggest3');
// 		    oUl.style.top = pos1 + 32 + 'px';
// 		    oUl2.style.top = pos2 + 32 + 'px';
		    
		    var url=document.domain;
		    if (window.location.port != 80) {
		    	url += ":" +window.location.port;
		    }
		    var URL = window.location.protocol +'//'+url+'/so/search/so/autocomplete.do';
		    var aLi=oUl.children;
		    var aLi2=oUl2.children;

		    window.iNow=-1;
		    window.iNow2=-1;
		    oT.focus();    
		    var oldValue='';
		    var oldValue2='';

		    oT.onkeyup=function(ev)
		    {
		        var oEvent=ev || event;
		        if(oEvent.keyCode==40 || oEvent.keyCode==38){
		            return; 
		        }

		        if(oEvent.keyCode==13){
		             this.parentNode.parentNode.submit();  
		        }            
		       
		        jsonp(URL, {q: oT.value}, function (json){            
		            
		            if(json.suggestions.length==0)
		            {
		                oUl.style.display='none';
		            }
		            else
		            {
		                oUl.style.display='block';
		                var data = eval('('+json.suggestions+')');  
		            }
		            oUl.innerHTML='';
		            for(var i=0; i<data.length; i++)
		            {
		                var oLi=document.createElement('li');
		                oLi.innerHTML=data[i].key;
		                oUl.appendChild(oLi);
		            }

		            for(var i=0; i<aLi.length; i++){
		            aLi[i].index=i;
		            aLi[i].onmouseover=function(){
		            for(var i=0; i<aLi.length; i++){
		                aLi[i].style.background='';
		            }
		            this.style.background='#ccc';            
		            
		            iNow=this.index;
		           
		            }
		            
		            aLi[i].onclick=function()
		            {
		            	 oT.value=aLi[this.index].innerHTML;
		            }
		            
		            }

		        }, 'callback'); 

		                
		        oldValue=oT.value;
		    }

		    oT.onkeydown=function(ev){

		        var oEvent=ev || event;
		        if(oEvent.keyCode==40){
		            iNow++;
		            
		            if(iNow==aLi.length){
		                iNow=-1;    
		            }
		            
		            for(var i=0; i<aLi.length; i++){
		                aLi[i].style.background='';
		            }
		            if(iNow!=-1){
		                aLi[iNow].style.background='#ccc';
		                oT.value=aLi[iNow].innerHTML;
		            }else{
		                oT.value=oldValue;  
		            }           
		        }
		        
		        if(oEvent.keyCode==38){
		            iNow--;            
		            if(iNow==-2){
		                iNow=aLi.length-1;  
		            }
		            
		            for(var i=0; i<aLi.length; i++){
		                aLi[i].style.background='';
		            }
		            if(iNow!=-1){
		                aLi[iNow].style.background='#ccc';
		                oT.value=aLi[iNow].innerHTML;   
		            }else{
		                oT.value=oldValue;  
		            }
		            return false;   
		        }   
		    }


		    oT2.onkeyup=function(ev)
		    {
		        var oEvent=ev || event;
		        if(oEvent.keyCode==40 || oEvent.keyCode==38){
		            return; 
		        }

		        if(oEvent.keyCode==13){
		             this.parentNode.parentNode.submit();  
		        }            
		       
		        jsonp(URL, {q: oT2.value}, function (json){            
		            
		            if(json.suggestions.length==0)
		            {
		                oUl2.style.display='none';
		            }
		            else
		            {
		                oUl2.style.display='block';
		                var data2 = eval('('+json.suggestions+')');  
		            }
		            oUl2.innerHTML='';
		            for(var i=0; i<data2.length; i++)
		            {
		                var oLi2=document.createElement('li');
		                oLi2.innerHTML=data2[i].key;
		                oUl2.appendChild(oLi2);
		            }

		            for(var i=0; i<aLi.length; i++){
		            aLi2[i].index=i;
		            aLi2[i].onmouseover=function(){
		            for(var i=0; i<aLi2.length; i++){
		                aLi2[i].style.background='';
		            }
		            this.style.background='#ccc';
		            iNow2=this.index;
		            
		            }
		            
		            aLi2[i].onclick=function()
		            {
		            	oT2.value=aLi2[this.index].innerHTML;
		            }
		            
		            }

		        }, 'callback'); 

		                
		        oldValue2=oT2.value;
		    }

		    oT2.onkeydown=function(ev){

		        var oEvent=ev || event;
		        if(oEvent.keyCode==40){
		            iNow2++;
		            
		            if(iNow2==aLi2.length){
		                iNow2=-1;    
		            }
		            
		            for(var i=0; i<aLi2.length; i++){
		                aLi2[i].style.background='';
		            }
		            if(iNow2!=-1){
		                aLi2[iNow2].style.background='#ccc';
		                oT2.value=aLi2[iNow2].innerHTML;
		            }else{
		                oT2.value=oldValue2;  
		            }           
		        }
		        
		        if(oEvent.keyCode==38){
		            iNow2--;            
		            if(iNow2==-2){
		                iNow2=aLi2.length-1;  
		            }
		            
		            for(var i=0; i<aLi2.length; i++){
		                aLi2[i].style.background='';
		            }
		            if(iNow2!=-1){
		                aLi2[iNow2].style.background='#ccc';
		                oT2.value=aLi2[iNow2].innerHTML;   
		            }else{
		                oT2.value=oldValue2;  
		            }
		            return false;   
		        }   
		    }
		    oT.onclick=function(ev){
				var oEvent=ev || event;		
				oEvent.cancelBubble=true;
			}
		    
		    oT2.onclick=function(ev){
				var oEvent=ev || event;		
				oEvent.cancelBubble=true;
			}
		    
		    document.onclick = function()
		    {
		        oUl.style.display='none';
		        oUl2.style.display='none';
		    }
		
		    
// 		    var oSourcon = document.getElementById('source-list');
// 			var oSource = oSourcon.children[1];
// 			var sourceURL = 'http://192.168.5.91:8080/so/search/so/getQualityArticle.do';	
// 			var keyword = GetRequest().q;
// 			jsonp(sourceURL, {q: keyword}, function (json){
		            
// 					var data = eval('('+json.suggestions+')');
		            
// 					if(data.length==0)
// 		            {
// 		                oSourcon.style.display='none';
// 		            }
// 		            else
// 		            {
// 		               oSourcon.style.display='block';
// 		                var data = eval('('+json.suggestions+')');				
// 		            }
					
// 					for(var i=0; i<6; i++)
// 		            {
// 		                var oDl=document.createElement('dl');
// 						var oDt=document.createElement('dt');
// 						var oDd=document.createElement('dd');
// 						var oImg=document.createElement('img');
// 						var oA=document.createElement('a');
// 						var oA2=document.createElement('a');
						
// 						oImg.src = data[i].pic;
// 						oImg.width = 73;
// 						oImg.height = 70;
// 						oA.href = data[i].url;
// 						oA.title = data[i].title;
						
// 						oA2.href = data[i].url;
// 						oA2.title = data[i].title;
// 						oA2.innerHTML = data[i].title;
						
// 						oA.appendChild(oImg);
// 						oDt.appendChild(oA);
// 						oDd.appendChild(oA2);
// 						oDl.appendChild(oDt);
// 						oDl.appendChild(oDd);
// 						oSource.appendChild(oDl);
// 		            }	
					
// 			}, 'callback');
		});
		
// 		点击“代码片”进入代码片搜索时调用
		function codeonready(){
		    $(".search-text-con2").css("width","613px");
		    $(".search-text2").css("width","603px");
		    $("#codeSelector").show();
		}
// 		离开“代码片”点击其他时调用
		function leavecode(){
		    $(".search-text-con2").css("width","718px");
		    $(".search-text2").css("width","708px");
		    $("#codeSelector").hide();
		}
		
		$(".search-type").find('li').hover(function(){
			$(this).css("color","rgb(153, 0, 0);");
		},function(){
			$(this).css("color","rgb(153, 0, 0);");
		})
		</script>


		
	</head>
	<body>

		<script id="toolbar-tpl-scriptId"  prod="so" skin="black" src="http://c.csdnimg.cn/public/common/toolbar/js/html.js" domain="http://so.csdn.net/so/" type="text/javascript"></script>
		<div class="topadv">
			<!-- 广告位开始 -->
			<ins data-revive-zoneid="154" data-revive-id="8c38e720de1c90a6f6ff52f3f89c4d57"></ins>
			<!-- 广告位结束 -->
		</div>
		<div class="main-container">
		    <div class="con-l">
		    <ul class="search-type">
		    	<li>全部</li>
		    	<li>代码片</li>
		        <li>博文</li>   
		        <li>讨论</li>    
		        <li>下载资源</li>
		        <li>极客头条</li>
                <li>课程</li>
                <!-- 		        <li>代码项目</li>     -->
<!-- 		        <li>文档</li> -->

<!-- 		        <li>问答</li> -->
		    </ul>
		    <div class="search-from2" style="position:relative">
		    	<form id="search_form_1" name="search_form_1" >
		        	<div class="search-text-con2" style="position:relative">
		        		<input type="text"  path="q" class="search-text2" id="q1" name="q" value="Android"  autocomplete="off"/>
		        		<input type="hidden" id="tt" name="t" value="null" />
		        		<input type="hidden" id="ot" name="o" value="null" />
		        		<input type="hidden" id="st" name="s" value="null" />
		        		<input type="hidden" id="lant" name="l" value="null" />
		        		<ul class="search-suggest2" id="search-suggest2" style="top: 32px"></ul>
		        	</div>
		        	
	                <div id="codeSelector" style="display:none;">
	                    <select id="dropdownMenu" onchange="changeLan('1');">
	                        <option value="all"  selected="selected">全部语言</option>
	                        <option value="java" >Java</option>
	                        <option value="cpp" >c++</option>
	                        <option value="html" >html</option>
	                        
	                        
	                        <option value="php" >php</option>
	                        <option value="javascript" >javascript</option>
	                        <option value="css" >css</option>
	                        <option value="objc" >object-c</option>
	                        <option value="csharp" >c#</option>
	                        
	                        <option value="python" >python</option>
	                        <option value="ruby" >ruby</option>
	                        <option value="vb" >vb</option>
	                        <option value="delphi" >delphi</option>
	                        
	                        <option value="sql" >sql</option>
	                        
	                    </select>
	                </div>
		        	<div class="search-btn-con2">
		        		<input type="Submit" value="搜一搜" class="search-btn2">
		        	</div>

		        </form>
		        
		        <div class="search-addition-con" >
		        	<div id="o_news" style="display:none" class="search-addition">
			    		<em><input type="radio" name="o1" value="simi" onchange="changeOrder(this.value);" onClick="this.blur();"  checked></em><span>按相关度排序</span>
	 	             	<em><input type="radio" name="o1" value="time" onchange="changeOrder(this.value);" onClick="this.blur();" ></em><span>按时间排序 </span>
			    	</div>
			    	<div id="o_disscus_code" style="display:none" class="search-addition">
			    		<em><input type="radio" name="o2" value="simi" onchange="changeOrder(this.value);" onClick="this.blur();"  checked></em><span>按相关度排序 </span>
	 	             	<em><input type="radio" name="o2" value="reply" onchange="changeOrder(this.value);" onClick="this.blur();" ></em><span>按回复数排序</span>
			    	</div>
			    	<div id="o_doc" style="display:none" class="search-addition">
			    		<em><input type="radio" name="o3" value="all" onchange="changeDocOrder(this.value);" onClick="this.blur();"  checked></em><span>全部</span>
	 	             	<em><input type="radio" name="o3" value="1" onchange="changeDocOrder(this.value);" onClick="this.blur();" ></em><span>文档</span>
	 	             	<em><input type="radio" name="o3" value="2" onchange="changeDocOrder(this.value);" onClick="this.blur();" ></em><span>代码类</span>
	 	             	<em><input type="radio" name="o3" value="3" onchange="changeDocOrder(this.value);" onClick="this.blur();" ></em><span>工具类</span>
			    	</div>
<!-- 			    	<div id="o_doc" style="display:none" class="search-addition"> -->
<!-- 			    		<em><input type="radio" name="o3" value="all" onchange="changeDocOrder(this.value);" onClick="this.blur();"  checked></em><span>全部</span> -->
<!-- 	 	             	<em><input type="radio" name="o3" value="doc" onchange="changeDocOrder(this.value);" onClick="this.blur();" ></em><span>DOC</span> -->
<!-- 	 	             	<em><input type="radio" name="o3" value="ppt" onchange="changeDocOrder(this.value);" onClick="this.blur();" ></em><span>PPT</span> -->
<!-- 	 	             	<em><input type="radio" name="o3" value="txt" onchange="changeDocOrder(this.value);" onClick="this.blur();" ></em><span>TXT</span> -->
<!-- 	 	             	<em><input type="radio" name="o3" value="pdf" onchange="changeDocOrder(this.value);" onClick="this.blur();" ></em><span>PDF</span> -->
<!-- 			    	</div> -->
<!-- 			    	<div id="o_ask" style="display:none" class="search-addition"> -->
<!-- 			    		<em><input type="radio" name="o4" value="1" onchange="changeAskOrder(this.value);" onClick="this.blur();"  checked></em><span>已解答</span> -->
<!-- 	 	             	<em><input type="radio" name="o4" value="0" onchange="changeAskOrder(this.value);" onClick="this.blur();" ></em><span>未解答</span> -->
<!-- 			    	</div> -->
		        </div>
		    </div>
		    <p class="showinfor" id="showfault"  style="display:none"><span>您是不是要找:</span>
                                    <a href='?p=1&q=Android&t=null&domain=&o=null&s=null&u=null&l=null&f=false' id='research'>Android</a><span>?</span></p>
		    
		    <div 
		    	 class="search-list-con csdn-tracking-statistics" data-mod="popu_281" data-dsm="post"
		    	 >
		    	
		    	<div class="baidu_img" 
		    				
		    				 style="text-align: center; font-size: 14px; color:#999; line-height:14px;"
		    	>
		    		<span>搜索技术由</span> 
		    		<img src="/so/images/Baidu_LOGO.png" style="vertical-align: bottom"> 
		    		<span>提供</span>
		    	</div>
		    	

<!-- 					<dl class="search-list intro-wrap  csdn-tracking-statistics" data-mod="popu_173" data-dsm="post"> -->


<!-- 						<dd class="intro-con"> -->
<!-- 							<div class="intro-detail"> -->

<!-- 							</div> -->

<!-- 								<div class="intro-detail"> -->
<!-- 									<p>最新收录：</p> -->

<!-- 								</div> -->

<!-- 						</dd> -->
<!-- 					</dl> -->

		        
		         
		    </div>
		    
		    <div class="csdn-pagination hide-set"  style="display:none">
		        <span class="page-nav">
			        <span class="text">共0条结果</span>
			        
			        
			        
			        
			        
				    
				    
			        
		        </span>
		        <span class="page-go">
			        <span class="text">到第</span>
			        <input type="text" style="width:30px; border:1px solid #ccc;" id="p1" value="1"/>
			        <span class="text">页</span>

			        
			        <button type="button"  class="btn btn-xs btn-default btn-go"  onclick="location.href='?p=' + $('#p1').val() + '&q=Android&t=null&o=null&s=null&u=null&l=null&f=null'">GO</button>
		        </span>
			</div>
		    

			<div >
		    	<p class="pointout"></p>
		    </div>
	    	<div class="relation-search csdn-tracking-statistics" data-mod="popu_49"  data-dsm="post" >
			    <p><em>Android</em>的相关搜索</p>
			    <ul>
			    	
			    		<li>


							<a href='/so/search/s.do?q=android android:paddingstart&t=null' class="rel-search" title="android android:paddingstart" target="_self">android android:paddingstart</a>

			    		</li>
			    	
			    		<li>


							<a href='/so/search/s.do?q=android com.android.internal.r&t=null' class="rel-search" title="android com.android.internal.r" target="_self">android com.android.internal.r</a>

			    		</li>
			    	
			    		<li>


							<a href='/so/search/s.do?q=android深入透析之android事件分发机制&t=null' class="rel-search" title="android深入透析之android事件分发机制" target="_self">android深入透析之android...</a>

			    		</li>
			    	
			    		<li>


							<a href='/so/search/s.do?q=android入门篇（一）android工程的搭建，导入与导出，图标的修改&t=null' class="rel-search" title="android入门篇（一）android工程的搭建，导入与导出，图标的修改" target="_self">android入门篇（一）andro...</a>

			    		</li>
			    	
			    		<li>


							<a href='/so/search/s.do?q=android 深入理解android中的自定义属性&t=null' class="rel-search" title="android 深入理解android中的自定义属性" target="_self">android 深入理解android中...</a>

			    		</li>
			    	
			    		<li>


							<a href='/so/search/s.do?q=android文件缓存实现&t=null' class="rel-search" title="android文件缓存实现" target="_self">android文件缓存实现</a>

			    		</li>
			    	
			    		<li>


							<a href='/so/search/s.do?q=android webkit&t=null' class="rel-search" title="android webkit" target="_self">android webkit</a>

			    		</li>
			    	
			    		<li>


							<a href='/so/search/s.do?q=android悬浮框&t=null' class="rel-search" title="android悬浮框" target="_self">android悬浮框</a>

			    		</li>
			    	
			    		<li>


							<a href='/so/search/s.do?q=android  开源项目&t=null' class="rel-search" title="android  开源项目" target="_self">android  开源项目</a>

			    		</li>
			    	
			    </ul> 
		    </div>
		    <div class="search-from2"   style="display:none">
		    	<form>
		        	<div class="search-text-con2" style="position:relative">
		        		<input type="text" path="q" class="search-text2" name="q" value="Android"  autocomplete="off" />
		        		<input type="hidden" id="tb" name="t" value="null" />
		        		<input type="hidden" id="ob" name="o" value="null" />
		        		<input type="hidden" id="sb" name="s" value="null" />
		        		<input type="hidden" id="lanb" name="l" value="null" />
		        		<ul class="search-suggest2" id="search-suggest3" style="bottom: 30px;"></ul>
		        	</div>
		        	<div id="codeSelector2"  class="search-ul-con2 dropup" style="display:none;">
	                    <select id="dropdownMenu2" onchange="changeLan('2');" style="width: 103px;height: 30px;border: 0;font-family:'Microsoft Yahei';">
	                        <option value="all"  selected="selected">全部语言</option>
	                        <option value="java" >Java</option>
	                        <option value="cpp" >c++</option>
	                        <option value="html" >html</option>
	                        
	                        
	                        <option value="php" >php</option>
	                        <option value="javascript" >javascript</option>
	                        <option value="css" >css</option>
	                        <option value="objc" >object-c</option>
	                        <option value="csharp" >c#</option>
	                        
	                        <option value="python" >python</option>
	                        <option value="ruby" >ruby</option>
	                        <option value="vb" >vb</option>
	                        <option value="delphi" >delphi</option>
	                        
	                        <option value="sql" >sql</option>
	                    </select>
	                </div>
		        	<div class="search-btn-con2">
		        		<input type="Submit" value="搜一搜" class="search-btn2">
		        	</div>        
		        </form>
		    </div>
		        
		    </div>
			<div class="con-r">
		    	<div style="height:96px;"> </div>
		    	
<!-- 		    	<div class="adv"> -->

<!-- 		    	</div> -->
		        
<!-- 		    	<div class="common-box"  style="margin-top:116px;"> -->
<!-- 		        	<h3>精品文档</h3> -->
<!-- 		        	<div class="source-list tracking-ad" data-mod="popu_51" data-pid="so" > -->



<!-- 		            </div> -->
<!-- 		        </div> -->
		        
<!-- 		        <div class="common-box"  id="source-list" > -->
<!-- 		        	<h3>精品文档</h3> -->
<!-- 		        	<div class="source-list tracking-ad" data-mod="popu_51" data-pid="so" > -->
		            
<!-- 		            </div> -->
<!-- 				</div> -->

		        
<!-- 		        <div class="common-box" id="rel_job" style="display:none"> -->
<!-- 		        	<h3 id="job-pos-title" style="display:none">相关职位</h3> -->
<!-- 		        	<ul class="relation-pos tracking-ad" data-mod="popu_50" data-pid="so" > -->
<!-- 		            </ul> -->
<!-- 		        </div> -->


                <!--学院课程[edu course] 的div  if (t != null && t != "" && t != "course") {-->
               	
		        <div class="rightadv">
		        <!-- 广告位开始 -->
<!-- 				<ins data-revive-zoneid="155" data-revive-id="8c38e720de1c90a6f6ff52f3f89c4d57"></ins> -->
					<script type="text/javascript">
					    /*CSDN搜索结果页右侧视窗-300*250，创建于 2015-10-22*/
					    var cpro_id = "u2364991";
					</script>
					<script type="text/javascript" src="http://cpro.baidustatic.com/cpro/ui/c.js"></script>
				<!-- 广告位结束 -->
		        </div>
		        
		        
		        
		        
<!-- 		        <div class="common-box"> -->
<!-- 		        	<h3>相关外包项目</h3> -->
<!-- 		        	<ul class="relation-project"> -->
<!-- 		            <li><a href="#">一个好玩的录屏mac项目</a></li> -->
<!-- 		            <li><a href="#">win32项目移植到Android</a></li> -->
<!-- 		            <li><a href="#">从svn上检出为的web项目，检出后不能发布到...</a></li> -->
<!-- 		            <li><a href="#">dwz框架项目 中调用uploadify方法上传图片</a></li> -->
<!-- 		            <li><a href="#">GitHub上最热门的开源项目</a></li>            -->
<!-- 		            </ul> -->
<!-- 		        </div> -->
		    
		    
		    
		  </div>
		</div>
		
		<!--add by zw : 解决问题弹窗 start -->
<!-- 		<div class="solve_pupup"> -->
<!-- 		    <a class="close_btn" href="javascript:;">X</a> -->
<!-- 		    <div class="pop_con tracking-ad" data-mod="popu_214"> -->
<!-- 		        <span><i class="pop_confirm"></i>亲，这次搜索结果解决了你的问题吗？</span> -->

<!-- 			                		onclick="return false"><i class="pop_smile"></i>解决了我的问题</a> -->
<!-- 		        <em>vs</em> -->

<!-- 			                		onclick="return false""><i class="pop_frown"></i>没有解决我的问题</a> -->
<!-- 		    </div> -->
<!-- 		</div> -->
		<!--add by zw : 解决问题弹窗 end -->
		
		<div id="csdn_pub_footer" class="margin_foot_top" style="padding-top:20px; padding-bottom:20px;">
			<script language="javascript" type="text/javascript" src="http://ads.csdn.net/js/async_new.js"></script>
			<script src="http://csdnimg.cn/pubfooter/js/publib_footer.js"></script>
		</div>
		<script id="csdn-toolbar-id" btnId="header_notice_num" wrapId="note1" count="5" subCount="5" type="text/javascript" src="http://c.csdnimg.cn/public/common/toolbar/js/toolbar.js"></script>
		<script src="/so/js/baidu_site_search.js" type="text/javascript"></script>
	</body>
	
</html>
