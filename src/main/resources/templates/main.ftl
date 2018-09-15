<#import "parts/common.ftl" as c>
<#--<#import "parts/login.ftl" as l>-->
<@c.page>
<div class="form-row">
    <div class="form-group col-md-6">
        <form method="get" action="/main" class="form-inline">
            <input type="text" name="filter" value="${filter!}" class="form-control" placeholder="search by tag">
            <button type="submit" class="btn btn-primary ml-2">Search</button>
        </form>
    </div>
</div>
    <#include "parts/messageEdit.ftl"/>


    <#include "parts/messageList.ftl"/>

</@c.page>