<#include "security.ftlh">
<#import "login.ftlh" as l>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="/">TestProject</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="/">Главная</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/main">Стена</a>
            </li>
           <#if isAdmin>
            <li class="nav-item">
                <a class="nav-link" href="/user">Список пользователей</a>
            </li>
            </#if>

            <#if user??>
            <#if known>
                <li class="nav-item">
                    <a class="nav-link" href="/user/profile">Профиль</a>
                </li>
                </#if>
            </#if>

            </ul>

        <#if known>
            <div class="navbar-text mr-3">${name}</div>
        <@l.logout />
        </#if>
    </div>
</nav>