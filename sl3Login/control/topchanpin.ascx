<%@ Control Language="C#" AutoEventWireup="true" %>
<div class="Sbox">
    <div class="topic">热门产品&nbsp;&nbsp;&nbsp;Hot</div>
    <div class="list">
        <dl>
            <% var prolist = PB.get_article(5, "types='c'", "id desc");
               foreach (var item in prolist)
               {%>
            <dt><%=item.Addtime.GetDateTime().ToString("yyyy-MM-dd") %></dt>
            <dd>· <a href='/product/info.aspx?id=<%=item.ID %>' title='<%=item.Title %>'><%=item.Title.Subs(13,"") %></a></dd>
            <%} %>
        </dl>
    </div>
</div>
<div class="HeightTab clearfix"></div>