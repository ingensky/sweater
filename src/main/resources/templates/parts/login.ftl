<#macro login path isRegisterForm>
        <form action="${path}" method="post">
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Username :</label>
                <div class="col-sm-5">
                    <input type="text" name="username" value="<#if user??>${user.username}</#if>"
                           class="form-control ${(usernameError??)?string('is-invalid', '')}"
                           placeholder="username"/>
                     <#if usernameError??>
                        <div class="invalid-feedback">
                            ${usernameError}
                        </div>
                     </#if>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Password :</label>
                <div class="col-sm-5">
                    <input type="password" name="password"
                           class="form-control ${(passwordError??)?string('is-invalid', '')}"
                           placeholder="password"/>
                    <#if passwordError??>
                        <div class="invalid-feedback">
                            ${passwordError}
                        </div>
                    </#if>
                </div>
            </div>
            <#if isRegisterForm>
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Password :</label>
                    <div class="col-sm-5">
                        <input type="password" name="password2"
                               class="form-control ${(password2Error??)?string('is-invalid', '')}"
                               placeholder="password retype"/>
                    <#if password2Error??>
                        <div class="invalid-feedback">
                            ${password2Error}
                        </div>
                    </#if>
                    </div>
                </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Email:</label>
                <div class="col-sm-5">
                    <input type="email" name="email" value="<#if user??>${user.email}</#if>"
                           class="form-control ${(emailError??)?string('is-invalid', '')}"
                           placeholder="example@mail.ua"/>
                    <#if emailError??>
                        <div class="invalid-feedback">
                            ${emailError}
                        </div>
                    </#if>
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