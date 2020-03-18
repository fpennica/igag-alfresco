<@markup id="custom-header" target="header" action="replace" scope="global">

<div class="theme-company-logo"></div>
    <#if theme == msg(theme + "." + "theme.id")>
        <div class="product-name">${msg(theme + "." + "custom.name")}</div>
        <div class="product-tagline">${msg(theme + "." + "custom.tagline")}</div>
        <div class="product-community">${msg(theme + "." + "custom.community")}</div>
    <#else>
        <div class="product-name">${msg("app.name")}</div>
        <div class="product-tagline">${msg("app.tagline")}</div>
        <div class="product-community">${msg("app.community")}</div>
    </#if>
</@>

<@markup id="custom-footer" target="footer" action="replace" scope="global">

    <#if theme == msg(theme + "." + "theme.id")>
        <div class="login-copy">${msg(theme + "." + "custom.copyright")}</div>
    <#else>
        <div class="login-copy">${msg("label.copyright")}</div>
    </#if>
<div class="login-tagline"></div>

</@>