<#macro login path isRegisterForm>

<form action="${path}" method="post" xmlns="http://www.w3.org/1999/html" xmlns="http://www.w3.org/1999/html">
    <div class="form-group">
        <label class="col-sm-2 col-form-label"> Никнейм:</label>
        <div class="col-sm-6">
        <input type="text" name="username" value="<#if user??>${user.username}</#if>"
               class="form-control  ${(usernameError??)?string('is-invalid', '')}"
               placeholder="Никнейм"/>
            <#if usernameError??>
                <div class="invalid-feedback">
                    ${usernameError}
                </div>
            </#if>
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-2 col-form-label"> Пароль: </label>
        <div class="col-sm-6">
        <input type="password" name="password"
               class="form-control ${(passwordError??)?string('is-invalid', '')}"
               placeholder="Пароль"/>
            <#if passwordError??>
                <div class="invalid-feedback">
                    ${passwordError}
                </div>
            </#if>
        </div>
    </div>

    <#if isRegisterForm>

        <div class="form-group">
            <label class="col-sm-2 col-form-label"> Пароль: </label>
            <div class="col-sm-6">
                <input type="password" name="password2"
                       class="form-control ${(password2Error??)?string('is-invalid', '')}"
                       placeholder="Повторите пароль"/>
                <#if password2Error??>
                    <div class="invalid-feedback">
                        ${password2Error}
                    </div>
                </#if>
            </div>
        </div>

    <div class="form-group">
        <label class="col-sm-2 col-form-label"> Электронная почта: </label>
        <div class="col-sm-6">
            <input type="email" name="email"  value = "<#if user??>${user.email}</#if>"
                   class="form-control ${(emailError??)?string('is-invalid', '')}"
                   placeholder="вашадрес@.com"/>
            <#if emailError??>
                <div class="invalid-feedback">
                    ${emailError}
                </div>
            </#if>
        </div>
    </div>

        <div class="col-sm-6">
            <div class="g-recaptcha" data-sitekey="6Lfyp9gpAAAAAI-rnwg45pTnBWrlXhTJb0ZXSWjH"></div>
            <#if captchaError??>
                <div class="alert alert-danger" role="alert">
                    ${captchaError}
                </div>
            </#if>
        </div>

    </#if>
    <input type = "hidden" name = "_csrf" value="${_csrf.token}" />
   <#if !isRegisterForm> <a href = "/registration" >Зарегестрироваться</a> </#if>
    <button class="btn btn-primary" type="submit"/><#if isRegisterForm>Создать аккаунт<#else>Войти</#if></button>
</form>

</#macro>

<#macro logout>
    <form action="/logout" method="post">
        <input type = "hidden" name = "_csrf" value="${_csrf.token}" />
        <button class="btn btn-primary" input type="submit"/>Выйти</button>
    </form>
</#macro>