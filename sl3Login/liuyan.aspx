<%@ Page Language="C#" AutoEventWireup="true" Inherits="Tc.UI.Liuyan" %>

<%@ Register Src="~/control/top.ascx" TagPrefix="uc1" TagName="top" %>
<%@ Register Src="~/control/ad.ascx" TagPrefix="uc1" TagName="ad" %>
<%@ Register Src="~/control/about.ascx" TagPrefix="uc1" TagName="about" %>
<%@ Register Src="~/control/bot.ascx" TagPrefix="uc1" TagName="bot" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=7">
    <title>在线留言-<%=PB.Get("webname") %></title>
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
                    <div class="Position"><span>你的位置：在线留言</span></div>
                    <div class="HeightTab clearfix"></div>
                    <!--main start-->
                    <div class="main">
                        <!--FeedBack start-->
                        <div class="FeedBack">

                            <div class="IntroTitle clearfix">发表留言</div>
                            <div class="commentbox">
                                <form id="form1" name="form1" method="post" action='/liuyan.aspx?ac=ac'>
                                    <table id="commentform" width="600" border="0" align="center" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td>姓名</td>
                                            <td>
                                                <input name='Xingming' type='text' id='Xingming' size='30' maxlength="30"><span class="FontRed">*</span></td>
                                        </tr>
                                        <tr>
                                            <td>电子邮件</td>
                                            <td>
                                                <input name='Email' type='text' id='Email' size='30' maxlength="80"></td>
                                        </tr>
                                        <tr>
                                            <td>QQ</td>
                                            <td>
                                                <input name='QQ' type='text' id='QQ' size='30' maxlength="30"></td>
                                        </tr>
                                        <tr>
                                            <td>留言内容</td>
                                            <td>
                                                <textarea name="Neirong" cols="60" rows="7" value=""></textarea>
                                                <span class="FontRed">*</span></td>
                                        </tr>
                                        <tr>
                                            <td>验证码</td>
                                            <td>
                                                <input name='vcode' type='text' value=''>
                                                <span class="FontRed">*</span>
                                                <img id="codeimg" src="/images/code.aspx" onclick="this.src='/images/code.aspx?'+Math.random(0,1000);"
                                                    alt="换下一个" /></td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <input class="Cbutton" type='submit' name='submit' value='发表留言'>
                                            </td>
                                        </tr>
                                    </table>
                                </form>
                            </div>
                        </div>
                        <!--FeedBack end-->
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

    <script type="text/javascript">
        $().ready(function () {
            var res = "<%=res%>";
            if (res == "1") {
                alert("留言成功");
            }
            else if (res == "2") {
                alert("留言失败");
            }
        });
    </script>
</body>
</html>