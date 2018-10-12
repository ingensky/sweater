<#import "parts/common.ftl" as c>
<#--<#import "parts/login.ftl" as l>-->
<@c.page>
<h3>${userChanel.username}</h3>
<div>
    ${type}
</div>
<ul class="list-group">
    <#list users as user>
        <li class="list-group-item">
            <a class="btn btn-link" href="/user-messages/${user.id}">${user.username}</a>
        </li>
    </#list>
</ul>

</@c.page>