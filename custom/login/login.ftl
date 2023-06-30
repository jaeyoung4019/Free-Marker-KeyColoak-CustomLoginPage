<#import "template.ftl" as layout>

<@layout.registrationLayout displayInfo=social.displayInfo displayWide=(realm.password && social.providers??); section>
<div id="wrap" >
    <header id="header">
        <div class="hd_inner">
            <div id="ham_btn">
                <div class="line_box">
                    <span class="top"></span>
                    <span class="mid"></span>
                    <span class="bot"></span>
                </div>
            </div>
            <div class="hd_left">
                <h1 class="logo"><a href="/">IDTHUB</a></h1>
                <div class="menu">
                    <ul>
                        <li>
                            <a href="#none">Explore</a>
                            <ul class="sub_menu">
                                <li><a href="#none">Explore</a></li>
                                <li><a href="#none">Template</a></li>
                                <li><a href="#none">Product</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="#none">Workspace</a>
                            <ul class="sub_menu">
                                <li><a href="#none">Template</a></li>
                                <li><a href="#none">Product</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="util">
                <div class="btn_search"><i class="icon search"></i></div>
                <div class="btn_login"><a href="./login.html">Sign in</a></div>
            </div>
        </div>

        <nav id="nav">
            <div class="nav_inner">
                <div class="nav_hd">
                    <h2 class="logo"><a href="#none">IDTHUB</a></h2>
                    <div id="nav_close"><span class="sound_only">닫기</span><i class="icon close"></i></div>
                </div>
                <div class="nav_bd">
                    <div class="inp_box">
                        <div class="inp search"><input type="search" name="" id="" placeholder="Search IDTHUB"><button type="submit" class="btn_search"></button></div>
                    </div>
                    <ul class="menu_list acc_wrap">
                        <li class="acc_box">
                            <div class="acc_tit"><span class="tit">Explore</span><i class="icon arrow arrow_d"></i></div>
                            <div class="acc_cont">
                                <ul class="sub_menu_list">
                                    <li><a href="#none">Overview</a></li>
                                    <li><a href="#none">Template</a></li>
                                    <li><a href="#none">Product</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="acc_box">
                            <div class="acc_tit"><span class="tit">Workspace</span><i class="icon arrow arrow_d"></i></div>
                            <div class="acc_cont">
                                <ul class="sub_menu_list">
                                    <li><a href="#none">Template</a></li>
                                    <li><a href="#none">Product</a></li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    <div id="container">
        <section class="sect_login">
            <div class="inner">
                <div class="login_box">
                    <div class="tit">Welcome to <strong>IDTHUB</strong></div>
                    <#if realm.password && social.providers??>
                        <div class="type_box">
                            <#list social.providers as p>
                                <#if p.alias = "google">
                                    <div class="type_item type_google ${properties.kcFormSocialAccountListLinkClass!}">
                                        <i class="icon icon_google"></i>
                                        <a href="${p.loginUrl}" id="zocial-${p.alias}" class="zocial ${p.providerId}" style="color: white">
                                            <span>Continue with Google</span>
                                        </a>
                                    </div>
                                <#elseif p.alias = "github">
                                    <div class="type_item type_github ${properties.kcFormSocialAccountListLinkClass!}">
                                        <i class="icon icon_github"></i>
                                        <a href="${p.loginUrl}" id="zocial-${p.alias}" class="zocial ${p.providerId}" style="color: white">
                                            <span>Continue with GitHub</span>
                                        </a>
                                    </div>
                                </#if>
                            </#list>
                        </div>
                    </#if>
                </div>
            </div>
        </section>
    </div>
    <footer id="footer">
        <div class="ft_inner">
            <div class="left">
                <h1 class="logo"><a href="/">IDTHUB</a></h1>
                <div class="copyright">COPYRIGHT (C)2022 KOREA ELECTRONICS TECHNOLOGY <br class="mo_only">INSTITUTE., All Rights Reserved.</div>
            </div>
            <div class="terms_box">
                <ul>
                    <li><a href="#none">Terms of Service</a></li>
                    <li><a href="#none">Privacy</a></li>
                </ul>
            </div>
        </div>
    </footer>
<#--    <main id="main" class="site-main single">-->
<#--        <section class="content">-->
<#--            <h2 class="screen-reader">본문</h2>-->
<#--            <section class="content-inner">-->
<#--                <div class="page-container">-->
<#--                    <h3 class="screen-reader"></h3>-->
<#--                    <div class="page-body">-->
<#--                        <#if section = "header">-->
<#--                            ${msg("doLogIn")}-->
<#--                        <#elseif section = "form">-->
<#--                            <div id="kc-form" <#if realm.password && social.providers??>class="${properties.kcContentWrapperClass!}"</#if>>-->
<#--                                <div id="kc-form-wrapper" <#if realm.password && social.providers??>class="${properties.kcFormSocialAccountContentClass!} ${properties.kcFormSocialAccountClass!}"</#if>>-->
<#--                                    <#if realm.password>-->
<#--                                        <form id="kc-form-login" onsubmit="login.disabled = true; return true;" action="${url.loginAction}" method="post">-->

<#--                                            &lt;#&ndash;-->
<#--                                            <div class="${properties.kcFormGroupClass!}">-->
<#--                                                <label for="username" class="${properties.kcLabelClass!}"><#if !realm.loginWithEmailAllowed>${msg("username")}<#elseif !realm.registrationEmailAsUsername>${msg("usernameOrEmail")}<#else>${msg("email")}</#if></label>-->

<#--                                                <#if usernameEditDisabled??>-->
<#--                                                    <input tabindex="1" id="username" class="${properties.kcInputClass!}" name="username" value="${(login.username!'')}" type="text" disabled />-->
<#--                                                <#else>-->
<#--                                                    <input tabindex="1" id="username" class="${properties.kcInputClass!}" name="username" value="${(login.username!'')}"  type="text" autofocus autocomplete="off" />-->
<#--                                                </#if>-->
<#--                                            </div>-->
<#--                                            &ndash;&gt;-->

<#--                                            <div class="${properties.kcFormGroupClass!}">-->
<#--                                                <div class="card-body  ${properties.kcLabelClass!} <#if usernameEditDisabled??>mdc-text-field--disabled</#if>">-->
<#--                                                    <div class="form-group-wrap">-->
<#--                                                        <div class="form-group is-col">-->
<#--                                                            <div class="form-item-wrap">-->
<#--                                                                <label for="username"-->
<#--                                                                       class="screen-reader">-->
<#--                                                                    <strong>아이디</strong>-->
<#--                                                                </label>-->
<#--                                                                <input tabindex="0" required id="username" class="mdc-text-field__input ${properties.kcInputClass!}" name="username" value="${(login.username!'')}" type="text" autofocus autocomplete="off" <#if usernameEditDisabled??>disabled</#if>>-->
<#--                                                            </div>-->
<#--                                                        </div>-->
<#--                                                    </div>-->
<#--                                                </div>-->
<#--&lt;#&ndash;                                                    <i class="material-icons mdc-text-field__icon" role="button">ID</i>&ndash;&gt;-->
<#--&lt;#&ndash;                                                    <input tabindex="0" required id="username" class="mdc-text-field__input ${properties.kcInputClass!}" name="username" value="${(login.username!'')}" type="text" autofocus autocomplete="off" <#if usernameEditDisabled??>disabled</#if>>&ndash;&gt;-->
<#--&lt;#&ndash;                                                    <div class="mdc-line-ripple"></div>&ndash;&gt;-->
<#--&lt;#&ndash;                                                    <label for="username" class="mdc-floating-label ${properties.kcLabelClass!}">&ndash;&gt;-->
<#--&lt;#&ndash;                                                        <#if !realm.loginWithEmailAllowed>&ndash;&gt;-->
<#--&lt;#&ndash;                                                            ${msg("username")}&ndash;&gt;-->
<#--&lt;#&ndash;                                                        <#elseif !realm.registrationEmailAsUsername>&ndash;&gt;-->
<#--&lt;#&ndash;                                                            ${msg("usernameOrEmail")}&ndash;&gt;-->
<#--&lt;#&ndash;                                                        <#else>&ndash;&gt;-->
<#--&lt;#&ndash;                                                            ${msg("email")}&ndash;&gt;-->
<#--&lt;#&ndash;                                                        </#if>&ndash;&gt;-->
<#--&lt;#&ndash;                                                    </label>&ndash;&gt;-->
<#--&lt;#&ndash;                                                </div>&ndash;&gt;-->
<#--                                            </div>-->

<#--                                            &lt;#&ndash;-->
<#--                                            <div class="${properties.kcFormGroupClass!}">-->
<#--                                                <label for="password" class="${properties.kcLabelClass!}">${msg("password")}</label>-->
<#--                                                <input tabindex="2" id="password" class="${properties.kcInputClass!}" name="password" type="password" autocomplete="off" />-->
<#--                                            </div>-->
<#--                                            &ndash;&gt;-->

<#--                                            <div class="${properties.kcFormGroupClass!}">-->

<#--                                                <div class="mdc-text-field mdc-text-field--with-leading-icon ${properties.kcLabelClass!}">-->
<#--                                                    <i class="material-icons mdc-text-field__icon" role="button">lock</i>-->
<#--                                                    <input tabindex="0" required id="password" class="mdc-text-field__input ${properties.kcInputClass!}" name="password" type="password" autocomplete="off">-->
<#--                                                    <div class="mdc-line-ripple"></div>-->
<#--                                                    <label for="password" class="mdc-floating-label ${properties.kcLabelClass!}">${msg("password")}</label>-->
<#--                                                </div>-->

<#--                                            </div>-->

<#--                                            &lt;#&ndash;-->
<#--                                            <div class="${properties.kcFormGroupClass!} ${properties.kcFormSettingClass!}">-->
<#--                                               <div id="kc-form-options">-->
<#--                                                   <#if realm.rememberMe && !usernameEditDisabled??>-->
<#--                                                       <div class="checkbox">-->
<#--                                                           <label>-->
<#--                                                               <#if login.rememberMe??>-->
<#--                                                                   <input tabindex="3" id="rememberMe" name="rememberMe" type="checkbox" checked> ${msg("rememberMe")}-->
<#--                                                               <#else>-->
<#--                                                                   <input tabindex="3" id="rememberMe" name="rememberMe" type="checkbox"> ${msg("rememberMe")}-->
<#--                                                               </#if>-->
<#--                                                           </label>-->
<#--                                                       </div>-->
<#--                                                   </#if>-->
<#--                                               </div>-->
<#--                                               <div class="${properties.kcFormOptionsWrapperClass!}">-->
<#--                                                   <#if realm.resetPasswordAllowed>-->
<#--                                                       <span><a tabindex="5" href="${url.loginResetCredentialsUrl}">${msg("doForgotPassword")}</a></span>-->
<#--                                                   </#if>-->
<#--                                               </div>-->
<#--                                            </div>-->
<#--                                            &ndash;&gt;-->

<#--                                            <div class="${properties.kcFormGroupClass!} ${properties.kcFormSettingClass!}">-->
<#--                                                <div id="kc-form-options">-->
<#--                                                    <#if realm.rememberMe && !usernameEditDisabled??>-->

<#--                                                        <div class="mdc-form-field">-->
<#--                                                            <div class="mdc-checkbox">-->
<#--                                                                <input tabindex="0"-->
<#--                                                                       id="rememberMe"-->
<#--                                                                       name="rememberMe"-->
<#--                                                                       type="checkbox"-->
<#--                                                                       class="mdc-checkbox__native-control"-->
<#--                                                                       <#if login.rememberMe??>checked</#if>-->
<#--                                                                />-->
<#--                                                                <div class="mdc-checkbox__background">-->
<#--                                                                    <svg class="mdc-checkbox__checkmark"-->
<#--                                                                         viewBox="0 0 24 24">-->
<#--                                                                        <path class="mdc-checkbox__checkmark-path"-->
<#--                                                                              fill="none"-->
<#--                                                                              d="M1.73,12.91 8.1,19.28 22.79,4.59"/>-->
<#--                                                                    </svg>-->
<#--                                                                    <div class="mdc-checkbox__mixedmark"></div>-->
<#--                                                                </div>-->
<#--                                                                <div class="mdc-checkbox__ripple"></div>-->
<#--                                                            </div>-->
<#--                                                            <label for="rememberMe">${msg("rememberMe")}</label>-->
<#--                                                        </div>-->

<#--                                                    </#if>-->
<#--                                                </div>-->
<#--                                                <div class="${properties.kcFormOptionsWrapperClass!}">-->
<#--                                                    <#if realm.resetPasswordAllowed>-->
<#--                                                        <span><a tabindex="0" href="${url.loginResetCredentialsUrl}">${msg("doForgotPassword")}</a></span>-->
<#--                                                    </#if>-->
<#--                                                </div>-->
<#--                                            </div>-->

<#--                                            &lt;#&ndash;-->
<#--                                            <div id="kc-form-buttons" class="${properties.kcFormGroupClass!}">-->
<#--                                                <input type="hidden" id="id-hidden-input" name="credentialId" <#if auth.selectedCredential?has_content>value="${auth.selectedCredential}"</#if>/>-->
<#--                                                <input tabindex="4" class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonBlockClass!} ${properties.kcButtonLargeClass!}" name="login" id="kc-login" type="submit" value="${msg("doLogIn")}"/>-->
<#--                                            </div>-->
<#--                                            &ndash;&gt;-->

<#--                                            <div class="mdc-card__action-icons">-->
<#--                                                <div class="btn-group">-->
<#--                                                    <button tabindex="0" name="login" id="kc-login" type="submit" class="btn btn-large btn-block btn-submit btn-fill-primary-white">-->
<#--                                                        ${msg("doLogIn")}-->
<#--                                                    </button>-->
<#--                                                </div>-->
<#--                                            </div>-->

<#--                                        </form>-->
<#--                                    </#if>-->
<#--                                </div>-->
<#--                                <#if realm.password && social.providers??>-->
<#--                                    <div id="kc-social-providers" class="${properties.kcFormSocialAccountContentClass!} ${properties.kcFormSocialAccountClass!}">-->
<#--                                        <ul class="${properties.kcFormSocialAccountListClass!} <#if social.providers?size gt 4>${properties.kcFormSocialAccountDoubleListClass!}</#if>">-->
<#--                                            <#list social.providers as p>-->
<#--                                                <li class="${properties.kcFormSocialAccountListLinkClass!}"><a href="${p.loginUrl}" id="zocial-${p.alias}" class="zocial ${p.providerId}"> <span>${p.displayName}111</span></a></li>-->
<#--                                            </#list>-->
<#--                                        </ul>-->
<#--                                    </div>-->
<#--                                </#if>-->
<#--                            </div>-->
<#--                        <#elseif section = "info" >-->
<#--                            <#if realm.password && realm.registrationAllowed && !registrationDisabled??>-->
<#--                                <hr class="mdc-list-divider divider-mdc">-->
<#--                                <div id="kc-registration" class="registration-label-mdc">-->
<#--                                    <span>${msg("noAccount")} <a tabindex="0" href="${url.registrationUrl}">${msg("doRegister")}</a></span>-->
<#--                                </div>-->
<#--                            </#if>-->
<#--                        </#if>-->
<#--                    </div>-->
<#--                </div>-->
<#--            </section>-->
<#--        </section>-->
<#--    </main>-->
</div>

</@layout.registrationLayout>
