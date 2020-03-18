<@markup id="custom-footer" target="html" action="replace" scope="global">
    <@uniqueIdDiv>
        <#assign fc=config.scoped["Edition"]["footer"]>

    <div class="footer ${fc.getChildValue("css-class")!"footer-com"}">

        <#if theme == msg(theme + "." + "theme.id")>
            <span class="copyright">
                <a href="#" onclick="Alfresco.module.getAboutShareInstance().show(); return false;">
                    <#if msg(theme + "." + "footer.logo")?has_content>
                        <img src="${url.context}/res/themes/${theme}/images/${msg(theme + "." + "footer.logo")}" border="0" style="height: 28px"/>
                    <#else>
                        <img src="${url.context}/res/components/images/${fc.getChildValue("logo")!"alfresco-logo.svg"}" alt="${fc.getChildValue("alt-text")!"Alfresco Community"}" border="0"/>
                    </#if>
                </a>
                <span>
                    <span class="licenseHolder">${msg(theme + "." + "license.text")}</span><br>
                    <span>${msg(theme + "." + "copyright.text")}</span>
                </span>
            </span>
        <#else>
            <span class="copyright">
                <a href="#" onclick="Alfresco.module.getAboutShareInstance().show(); return false;">
                    <img src="${url.context}/res/components/images/${fc.getChildValue("logo")!"alfresco-logo.svg"}" alt="${fc.getChildValue("alt-text")!"Alfresco Community"}" border="0"/>
                </a>
                <#if licenseHolder != "" && licenseHolder != "UNKNOWN">
                    <span class="licenseHolder">${msg("label.licensedTo")} ${licenseHolder}</span><br>
                </#if>
                <span>${msg(fc.getChildValue("label")!"label.copyright")}</span>
             </span>
        </#if>
    </div>
    </@>
</@>
