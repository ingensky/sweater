<#macro login path>
        <form action="${path}" method="post">
            <div><label>Username : <input type="text" name="username"/></label></div>
            <div><label>Password  : <input type="password" name="password"/></label></div>
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <div><input type="submit" value="Log in"/></div>
        </form>
</#macro>


<#macro logout>
     <form action="/logout" method="post">
         <input type="submit" value="Log out"/>
         <input type="hidden" name="_csrf" value="${_csrf.token}"/>
     </form>
</#macro>