﻿<%@ Page Language="C#" AutoEventWireup="true" Inherits="Tc.UI.ArtInfo" %>

<%@ Register Src="~/control/top.ascx" TagPrefix="uc1" TagName="top" %>
<%@ Register Src="~/control/ad.ascx" TagPrefix="uc1" TagName="ad" %>
<%@ Register Src="~/control/about.ascx" TagPrefix="uc1" TagName="about" %>
<%@ Register Src="~/control/bot.ascx" TagPrefix="uc1" TagName="bot" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=7">
    <title><%=art.Title %>-<%=PB.Get("webname") %></title>
    <meta content="<%=PB.Get("keyword") %>" name="keywords" />
    <meta content="<%=PB.Get("description") %>" name="description" />
    <link href="/images/inner.css" rel="stylesheet" type="text/css" />
    <link href="/images/common.css" rel="stylesheet" type="text/css" />
    <script src="/js/jquery.min.js"></script>
    <script type="text/javascript" src="/js/functions.js"></script>
    <script type="text/javascript" src="/images/iepng/iepngfix_tilebg.js"></script>
</head>

<body>
    <div id="wrapper">

        <!--head start-->
        <div id="head">
            <uc1:top runat="server" ID="top" />

            <!--focus start-->
            <div id="InnerFocus">
                <div id="FocusBG">
                </div>
            </div>
            <!--foncus end-->
            <div class="HeightTab clearfix"></div>
        </div>
        <!--head end-->
        <!--body start-->
        <div id="body">
            <uc1:ad runat="server" ID="ad" />
            <!--inner start -->
            <div class="inner">
                <!--left start-->
                <div class="left">
                    <uc1:about runat="server" ID="about" />
                </div>
                <!--left end-->
                <!--right start-->
                <div class="right">
                    <div class="Position"><span>你的位置：<%=cate.Name.Length>0?cate.Name:"案例展示" %></span></div>
                    <div class="HeightTab clearfix"></div>
                    <!--main start-->
                    <div class="main">

                        <!--content start-->
                        <div class="content">
                            <div class="title">
                                <h3><%=art.Title %></h3>
                            </div>
                            <div class="infos"><%=art.Addtime.GetDateTime().ToString("yyyy-MM-dd") %></div>
                            <div class="maincontent clearfix">
                                <center>
                                    <img src="<%=LibFile.get_img(art.Tupian.GetString(),"356","262") %>" /></center>
                                <div class="IntroTitle">详细说明</div>
                                <%=art.Content %>
                            </div>
                        </div>
                    </div>
                    <!--content end-->
                </div>
                <!--main end-->
            </div>
            <!--right end-->
        </div>
        <!--inner end-->
    </div>
    <!--body end-->
    <uc1:bot runat="server" ID="bot" />
    </div>
</body>
</html>