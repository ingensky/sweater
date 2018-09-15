<#import "parts/common.ftl" as c>
<#--<#import "parts/login.ftl" as l>-->
<@c.page>
<#if isCurrentUser>
    <#include "parts/messageEdit.ftl"/>
</#if>

    <#include "parts/messageList.ftl"/>
</@c.page>