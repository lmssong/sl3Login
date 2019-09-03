<%@ Page Language="C#" AutoEventWireup="true" Inherits="Tc.UI.AnliList" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>

<%@ Register Src="~/control/top.ascx" TagPrefix="uc1" TagName="top" %>
<%@ Register Src="~/control/ad.ascx" TagPrefix="uc1" TagName="ad" %>
<%@ Register Src="~/control/about.ascx" TagPrefix="uc1" TagName="about" %>
<%@ Register Src="~/control/bot.ascx" TagPrefix="uc1" TagName="bot" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=7">
    <title><%=cate.Name.Length>0?cate.Name:"案例展示" %>-<%=PB.Get("webname") %></title>
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
                        <!--image start-->
                        <div class='ImageList'>
                            <% foreach (System.Data.DataRow item in dt.Rows)
                               {%>
                            <div class='ImageBlockBG'>
                                <div class='ImageBlock'>
                                    <a href='/anli/info.aspx?id=<%=item["id"] %>' target='_blank'>
                                        <img src='<%=LibFile.get_img(item["tupian"].GetString(),"356","262") %>' alt='<%=item["title"].GetString() %>' /></a><p><a href='/anli/info.aspx?id=<%=item["id"] %>' target='_blank'><%=item["title"].GetString().Subs(10) %></a></p>
                                </div>
                            </div>
                            <%} %>
                            <div class="clearfix"></div>
                            <div class='t_page ColorLink'>

                                <webdiyer:AspNetPager ID="AspNetPager1" runat="server" FirstPageText="首页" LastPageText="尾页"
                                    NextPageText="下一页" PrevPageText="上一页" OnPageChanged="aspnetpage_PageChanged"
                                    HorizontalAlign="Center" UrlPaging="true" AlwaysShow="true"
                                    ShowMoreButtons="False" ShowPageIndexBox="Never" NumericButtonCount="10" ShowDisabledButtons="False" PageSize="9">
                                </webdiyer:AspNetPager>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <!--image end -->
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