<%@ Page Language="C#" AutoEventWireup="true" Inherits="Tc.UI.Index" %>

<%@ Import Namespace="System.Linq" %>

<%@ Register Src="/control/nav.ascx" TagPrefix="uc1" TagName="nav" %>
<%@ Register Src="/control/top.ascx" TagPrefix="uc1" TagName="top" %>
<%@ Register Src="/control/bot.ascx" TagPrefix="uc1" TagName="bot" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=7">
    <title><%=PB.Get("webname") %></title>
    <meta content="<%=PB.Get("keyword") %>" name="keywords" />
    <meta content="<%=PB.Get("description") %>" name="description" />
    <link href="/images/style.css" rel="stylesheet" type="text/css" />
    <link href="/images/common.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="/js/jquery.min.js"></script>
    <script type="text/javascript" src="/js/Functions.js"></script>
    <script type="text/javascript" src="/js/FocusSlide.js"></script>
    <script type="text/javascript" src="/js/ScrollPic.js"></script>
    <script type="text/javascript" src="/images/iepng/iepngfix_tilebg.js"></script>
</head>

<body>
    <div id="wrapper">

        <!--head start-->
        <div id="head">
            <uc1:top runat="server" ID="top" />
            <!--focus start-->
            <div id="FocusBG">
                <div id="Focus">
                    <ul>
                        <% var hdp = PB.get_huandong("index").OrderBy(p => p.Paixu);
                           foreach (var item in hdp)
                           {%>
                        <li><a href='<%=item.Url %>' target='_blank'>
                            <img src='<%=LibFile.get_img(item.Tupian,"","") %>' alt='<%=item.Title %>' height="490" width="1080" /></a></li>
                        <%}  %>
                    </ul>
                </div>
            </div>
            <!--foncus end-->
            <div class="HeightTab clearfix"></div>
        </div>
        <!--head end-->
        <!--body start-->
        <div id="body">
            <!--MainBlock start-->
            <div class="MainBlock">
                <!--right start-->
                <div class="left">
                    <div class="tab">
                        <ul class="tab-hd">
                            <li><a href='/news/list.aspx?c=13'>公司相关</a></li>
                            <li><a href='/news/list.aspx?c=14'>行业新闻</a></li>
                        </ul>
                        <ul class="tab-bd">
                            <li>
                                <div class='DivList'>
                                    <% var newslist = PB.get_article(8, "types='a' and Fenleiid=13", "id desc");
                                       foreach (var item in newslist)
                                       {%>
                                    <div class='DivLi'><span><%=item.Addtime.GetDateTime().ToString("MM-dd") %></span> <a href='/news/info.aspx?id=<%=item.ID %>' target='_blank' title='<%=item.Title %>'><%=item.Title.Subs(20) %></a></div>
                                    <%} %>

                                    <div class='clearfix'></div>
                                </div>
                            </li>
                            <li>
                                <div class='DivList'>
                                    <%  newslist = PB.get_article(8, "types='a' and Fenleiid=14", "id desc");
                                        foreach (var item in newslist)
                                        {%>
                                    <div class='DivLi'><span><%=item.Addtime.GetDateTime().ToString("MM-dd") %></span> <a href='/news/info.aspx?id=<%=item.ID %>' target='_blank' title='<%=item.Title %>'><%=item.Title.Subs(20) %></a></div>
                                    <%} %>

                                    <div class='clearfix'></div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <!--right end-->

                <!--left start-->
                <div class="right">
                    <div class="topic">
                        <div class="TopicTitle">关于公司</div>
                        <div class="TopicMore">
                            <a href='/page/company.aspx'>
                                <img src="images/more.png"></a>
                        </div>
                    </div>
                    <% var _cm = PB.get_danye_model("company"); %>
                    <div class="HeightTab clearfix"></div>
                    <div class="txt ColorLink">
                        <p>
                            <%=_cm.Content.DeleteHMTL().Subs(320) %><a href='/page/company.aspx' target='_blank'>详细>></a>
                        </p>
                    </div>
                    <div class=" clearfix"></div>
                </div>
                <!--left end-->
            </div>
            <!--MainBlock end-->
            <div class="HeightTab2 clearfix"></div>
            <!--MainBlock2 start-->
            <div class='Block2'>
                <div class="MainBlock">
                    <!--right start-->
                    <div class="left">
                        <div class="tab">
                            <ul class="tab-hd">

                                <li><a href='/news/list.aspx?c=18'>行业新闻</a></li>
                            </ul>
                            <ul class="tab-bd">
                                <li>
                                    <div class='DivList'>
                                        <% newslist = PB.get_article(8, "types='a' and Fenleiid=18", "id desc");
                                           foreach (var item in newslist)
                                           {%>
                                        <div class='DivLi'><span><%=item.Addtime.GetDateTime().ToString("MM-dd") %></span> <a href='/news/info.aspx?id=<%=item.ID %>' target='_blank' title='<%=item.Title %>'><%=item.Title.Subs(20) %></a></div>
                                        <%} %>
                                        <div class='clearfix'></div>
                                    </div>
                                </li>
                                <li>
                                    <div class='DivList'>
                                        <div class='clearfix'></div>
                                    </div>
                                </li>
                                <li>
                                    <div class='DivList'>
                                        <div class='DivLi'><span>2013/6/5</span> <a href='/html/5613981018.html' target='_blank' title='反映了检察官对案件高度负责的工作态度'>反映了检察官对案件高度负责的工作态度</a></div>
                                        <div class='clearfix'></div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!--right end-->

                    <!--left start-->
                    <div class="right">
                        <div class="topic">
                            <div class="TopicTitle">公司产品</div>
                            <div class="TopicMore">
                                <a href='/product/list.aspx'>
                                    <img src="images/more.png"></a>
                            </div>
                        </div>
                        <div class="HeightTab clearfix"></div>
                        <div class="img">
                            <% var prolist = PB.get_article(6, "types='c'", "id desc");
                               foreach (var item in prolist)
                               {%>
                            <div class='albumblock'>
                                <div class='inner'>
                                    <a href='/product/info.aspx?id=<%=item.ID %>' target='_blank' title='<%=item.Title %>'>
                                        <img src='<%=LibFile.get_img(item.Tupian.GetString(),"270","270") %>' alt='<%=item.Title %>' /></a><div class='albumtitle'><a href='/product/info.aspx?id=<%=item.ID %>' target='_blank' title='<%=item.Title %>'><%=item.Title.Subs(13) %></a></div>
                                </div>
                            </div>
                            <%} %>
                        </div>

                        <div class=" clearfix"></div>
                    </div>
                    <!--left end-->
                </div>
            </div>
            <!--MainBlock2 end-->
            <div class="HeightTab clearfix"></div>
            <!--MainBlock3 start-->
            <div class="MainBlock">
                <div class="topic">
                    <div class="TopicTitle"><a href='/anli/list.aspx'>案例展示</a></div>
                    <div class="TopicMore">
                        <a href='/anli/list.aspx'>
                            <img src="images/more.png"></a>
                    </div>
                </div>
                <div class="clearfix"></div>
                <div class="blk_29">
                    <div class="LeftBotton" id="LeftArr"></div>
                    <div class="Cont" id="ISL_Cont_1">
                        <!-- 图片列表 begin -->
                        <% var anli = PB.get_article(10, "types='al'", "id desc");
                           foreach (var item in anli)
                           {%>
                        <div class='box'>
                            <a class='imgBorder' href='/anli/info.aspx?id=<%=item.ID %>' target='_blank' title='<%=item.Title %>'>
                                <img alt='<%=item.Title %>' src='<%=LibFile.get_img(item.Tupian,"156","116") %>' alt='<%=item.Title %>'></a><p><a class='imgBorder' href='/anli/info.aspx?id=<%=item.ID %>' target='_blank' title='<%=item.Title %>'><%=item.Title %></a></p>
                        </div>
                        <%} %>

                        <!-- 图片列表 end -->
                    </div>

                    <div class="RightBotton" id="RightArr"></div>
                </div>
                <script language="javascript" type="text/javascript">
		<!--//--><![CDATA[/ /><!--
    var scrollPic_02 = new ScrollPic();
    scrollPic_02.scrollContId = "ISL_Cont_1"; //内容容器ID
    scrollPic_02.arrLeftId = "LeftArr";//左箭头ID
    scrollPic_02.arrRightId = "RightArr"; //右箭头ID

    scrollPic_02.frameWidth = 888;//显示框宽度
    scrollPic_02.pageWidth = 888; //翻页宽度

    scrollPic_02.speed = 3; //移动速度(单位毫秒，越小越快)
    scrollPic_02.space = 50; //每次移动像素(单位px，越大越快)
    scrollPic_02.autoPlay = true; //自动播放
    scrollPic_02.autoPlayTime = 3; //自动播放间隔时间(秒)

    scrollPic_02.initialize(); //初始化

    //--><!]]>
                </script>

                <div class="clearfix"></div>
            </div>
            <!--MainBlock end-->

            <!--links start-->
            <div class="MainBlock">
                <div class="topic">
                    <div class="TopicTitle">友情链接</div>
                </div>
                <div id="Links">

                    <% var linklist = PB.get_links(100, "").OrderBy(p => p.Paixu);
                       foreach (var item in linklist)
                       {
                    %>
                    <a href='<%=item.Url %>' target='_blank'><%=item.Name %></a>
                    <%
                       }
                    %>
                </div>
            </div>
            <!--links end-->
        </div>
        <!--body end-->
        <uc1:bot runat="server" ID="bot" />
    </div>
</body>
</html>