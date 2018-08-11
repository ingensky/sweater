<#macro login path isRegisterForm>
        <form action="${path}" method="post">
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Username :</label>
                <div class="col-sm-5">
                    <input type="text" name="username" class="form-control" placeholder="username"/>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Password :</label>
                <div class="col-sm-5">
                    <input type="password" name="password" class="form-control" placeholder="password"/>
                </div>
            </div>
            <#if isRegisterForm>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Email:</label>
                <div class="col-sm-5">
                    <input type="email" name="email" class="form-control" placeholder="example@mail.ua"/>
                </div>
            </div>
            </#if>
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <#if !isRegisterForm>
                <a href="/registration" class="btn btn-primary">Add new user</a>
            </#if>
            <button class="btn btn-primary" type="submit">
                <#if isRegisterForm>Create<#else>Sign in</#if>
            </button>
        </form>
</#macro>


<#macro logout>
     <form action="/logout" method="post">
         <button class="btn btn-primary" type="submit">Log out</button>
         <input type="hidden" name="_csrf" value="${_csrf.token}"/>
     </form>
</#macro>