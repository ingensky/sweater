<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>
<@c.page>
<div>
    <@l.logout />
    <span><a href="/user">User list</a></span>
</div>
<div>
    <form method="post">
        <input type="text" name="text" placeholder="text">
        <input type="text" name="tag" placeholder="tag">
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button type="submit">Post message</button>
    </form>
</div>
<div>List of messages</div>
<form method="get" action="/main">
    <input type="text" name="filter" value="${filter}">
    <button type="submit">Filter by tag</button>
</form>
<#list messages as message>
    <div>
        <b>${message.id}</b>
        <span>${message.text}</span>
        <i>${message.tag}</i>
        <strong>${message.authorName}</strong>

    </div>
<#else> No messages
</#list>
</@c.page>