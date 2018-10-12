<#import "parts/common.ftl" as c>
<#--<#import "parts/login.ftl" as l>-->
<@c.page>
<h3>${userChanel.username}</h3>

    <#if !isCurrentUser>
        <#if isSubscriber>
        <a class="btn btn-link" href="/user/unsubscribe/${userChanel.id}">Unsubscribe</a>
        <#else>
        <a class="btn btn-warning" href="/user/subscribe/${userChanel.id}">Subscribe</a>
        </#if>

    </#if>
<div class="container my-3">
    <div class="row">
        <div class="col">
            <div class="card">
                <div class="card-body">
                    <div class="card-title">Subscriptions</div>
                    <h3 class="card-text">
                        <a href="/user/subscriptions/${userChanel.id}/list">${subscriptionsCount}</a>
                    </h3>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card">
                <div class="card-body">
                    <div class="card-title">Subscribers</div>
                    <h3 class="card-text">
                        <a href="/user/subscribers/${userChanel.id}/list">${subscribersCount}</a>
                    </h3>
                </div>
            </div>
        </div>
    </div>
</div>
    <#if isCurrentUser>
        <#include "parts/messageEdit.ftl"/>
    </#if>

    <#include "parts/messageList.ftl"/>
</@c.page>