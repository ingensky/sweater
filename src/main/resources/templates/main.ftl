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
  <a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false"
     aria-controls="collapseExample">
      Add new message
  </a>
<div class="collapse" id="collapseExample">
    <div class="form-group mt-3">
        <form method="post" enctype="multipart/form-data">
            <div class="form-group">
                <input type="text" class="form-control" name="text" placeholder="text">
            </div>
            <div class="form-group">
                <input type="text" class="form-control" name="tag" placeholder="tag">
            </div>
            <div class="form-group">
                <div class="custom-file">
                    <input type="file" name="file" id="customFile">
                    <label class="custom-file-label" for="customFile">Choose file</label>
                </div>
            </div>
            <input type="hidden" class="form-control" name="_csrf" value="${_csrf.token}"/>
            <div class="form-group">
                <button type="submit" class="btn btn-primary ml-2">Post message</button>
            </div>
        </form>
    </div>

</div>
<div class="card-columns">
    <#list messages as message>
        <div class="card my-3">
        <#--<b>${message.id}</b>-->
            <#if message.filename??>
                <img src="/img/${message.filename}" class="card-img-top">
            </#if>
            <div class="m-2">
                <span>${message.text}</span>
                <i>${message.tag}</i>
            </div>
            <div class="card-footer text-muted">
                ${message.authorName}
            </div>
        </div>
    <#else> No messages
    </#list>
</div>
</@c.page>