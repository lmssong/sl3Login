<%@ Control Language="C#" AutoEventWireup="true" %>
<div class="Sbox">
    <div class="topic">
        <div class='TopicTitle'>最新资讯&nbsp;&nbsp;&nbsp;New</div>
    </div>
    <div class="list">
        <dl>
            <% var prolist = PB.get_article(5, "types='a'", "id desc");
               foreach (var item in prolist)
               {%>
            <dt><%=item.Addtime.GetDateTime().ToString("yyyy-MM-dd") %></dt>
            <dd>· <a href='/news/info.aspx?id=<%=item.ID %>' title='<%=item.Title %>'><%=item.Title.Subs(13,"") %></a></dd>
            <%} %>
        </dl>
    </div>
</div>
<div class="HeightTab clearfix"></div>