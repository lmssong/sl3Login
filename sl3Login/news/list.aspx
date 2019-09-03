﻿<%@ Page Language="C#" AutoEventWireup="true" Inherits="Tc.UI.ArtList" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>

<%@ Register Src="~/control/top.ascx" TagPrefix="uc1" TagName="top" %>
<%@ Register Src="~/control/ad.ascx" TagPrefix="uc1" TagName="ad" %>
<%@ Register Src="~/control/about.ascx" TagPrefix="uc1" TagName="about" %>
<%@ Register Src="~/control/bot.ascx" TagPrefix="uc1" TagName="bot" %>
<%@ Register Src="~/control/topart.ascx" TagPrefix="uc1" TagName="topart" %>
<%@ Register Src="~/control/cateart.ascx" TagPrefix="uc1" TagName="cateart" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=7">
    <title><%=cate.Name.Length>0?cate.Name:"新闻动态" %>-<%=PB.Get("webname") %></title>
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
                    <uc1:cateart runat="server" ID="cateart" />
                    <uc1:topart runat="server" ID="topart" />
                </div>
                <!--left end-->
                <!--right start-->
                <div class="right">
                    <div class="Position"><span>你的位置：<%=cate.Name.Length>0?cate.Name:"新闻动态" %></span></div>
                    <div class="HeightTab clearfix"></div>
                    <!--main start-->
                    <div class="main">

                        <div class="ArticleList">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <ul>
                                    <% foreach (System.Data.DataRow item in dt.Rows)
                                       {%>
                                    <tr>
                                        <td width='80%' class='fw_t'>·<a href='/news/info.aspx?id=<%=item["id"] %>' target='_blank'>  <%=item["title"].GetString() %></a></td>
                                        <td width='20%' class='fw_s'>[ <%=item["addtime"].GetString().GetDateTime().ToString("yyyy-MM-dd") %>]</td>
                                    </tr>
                                    <%} %>
                                </ul>
                                <tr>
                                    <td colspan="3" height="10"></td>
                                </tr>
                            </table>
                            <div class="clearfix"></div>
                            <div class='t_page ColorLink'>
                                <webdiyer:AspNetPager ID="aspnetpage" runat="server" FirstPageText="首页" LastPageText="尾页"
                                    NextPageText="下一页" PrevPageText="上一页" OnPageChanged="aspnetpage_PageChanged"
                                    HorizontalAlign="Center" UrlPaging="true" AlwaysShow="true"
                                    ShowMoreButtons="False" ShowPageIndexBox="Never" NumericButtonCount="5" ShowDisabledButtons="False" PageSize="15" PagingButtonSpacing="15px">
                                </webdiyer:AspNetPager>
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