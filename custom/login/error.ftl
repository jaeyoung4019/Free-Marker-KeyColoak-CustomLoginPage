<#macro registrationLayout bodyClass="" displayInfo=false displayMessage=true displayRequiredFields=false displayWide=false showAnotherWayIfPresent=true>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" class="${properties.kcHtmlClass!}">
<#import "template.ftl" as layout>

<@layout.registrationLayout displayInfo=social.displayInfo displayWide=(realm.password && social.providers??); section>

</@layout.registrationLayout>
<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="robots" content="noindex, nofollow">

    <#-- Material Components for the Web -->
    <#--
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    -->

    <#--
    <script src="https://unpkg.com/material-components-web@v4.0.0/dist/material-components-web.min.js"></script>
    -->
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
    <#--                                                <li class="${properties.kcFormSocialAccountListLinkClass!}"><a href="${p.loginUrl}" id="zocial-${p.alias}" class="zocial ${p.providerId}"> <span>${p.displayName}</span></a></li>-->
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
    <#if properties.meta?has_content>
        <#list properties.meta?split(' ') as meta>
            <meta name="${meta?split('==')[0]}" content="${meta?split('==')[1]}"/>
        </#list>
    </#if>
    <title>${msg("loginTitle",(realm.displayName!''))}</title>
    <link rel="icon" href="${url.resourcesPath}/img/favicon.ico" />
    <#if properties.styles?has_content>
        <#list properties.styles?split(' ') as style>
            <link href="${url.resourcesPath}/${style}" rel="stylesheet" />
        </#list>
    </#if>
    <#if properties.scripts?has_content>
        <#list properties.scripts?split(' ') as script>
            <#--
            <script src="${url.resourcesPath}/${script}" type="text/javascript"></script>
            <script src="${url.resourcesPath}/${script}" type="module"></script>
            -->
            <script src="${url.resourcesPath}/${script}" type="text/javascript"></script>
        </#list>
    </#if>
    <#if scripts??>
        <#list scripts as script>
            <script src="${script}" type="text/javascript"></script>
        </#list>
    </#if>
</head>

<body class="${properties.kcBodyClass!}">
  <div class="${properties.kcLoginClass!}">
    <div id="kc-header" class="${properties.kcHeaderClass!}">
      <#-- <div id="kc-header-wrapper" class="${properties.kcHeaderWrapperClass!}">${kcSanitize(msg("loginTitleHtml",(realm.displayNameHtml!'')))?no_esc}</div> -->
    </div>
    <div class="${properties.kcFormCardClass!} <#if displayWide>${properties.kcFormCardAccountClass!}</#if>">
      <header class="${properties.kcFormHeaderClass!}">
        <#if realm.internationalizationEnabled  && locale.supported?size gt 1>
            <div id="kc-locale">
                <div id="kc-locale-wrapper" class="${properties.kcLocaleWrapperClass!}">
                    <div class="kc-dropdown" id="kc-locale-dropdown">
                        <a href="#" id="kc-current-locale-link">${locale.current}</a>
                        <ul>
                            <#list locale.supported as l>
                                <li class="kc-dropdown-item"><a href="${l.url}">${l.label}</a></li>
                            </#list>
                        </ul>
                    </div>
                </div>
            </div>
        </#if>
        <#if !(auth?has_content && auth.showUsername() && !auth.showResetCredentials())>
            <#if displayRequiredFields>
                <div class="${properties.kcContentWrapperClass!}">
                    <div class="${properties.kcLabelWrapperClass!} subtitle">
                        <span class="subtitle"><span class="required">*</span> ${msg("requiredFields")}</span>
                    </div>
                    <div class="col-md-10">
                        <h1 id="kc-page-title"><#nested "header"></h1>
                    </div>
                </div>
            <#else>

                <#-- <h1 id="kc-page-title"><#nested "header"></h1> -->

                <h1 id="kc-page-title" class="mdc-typography mdc-typography--headline4"><#nested "header"></h1>

                <#--
                <div class="mdc-card__primary-action">
                    <h1 id="kc-page-title" class="mdc-typography mdc-typography--headline4"><#nested "header"></h1>
                </div>
                -->

            </#if>
        <#else>
            <#if displayRequiredFields>
                <div class="${properties.kcContentWrapperClass!}">
                    <div class="${properties.kcLabelWrapperClass!} subtitle">
                        <span class="subtitle"><span class="required">*</span> ${msg("requiredFields")}</span>
                    </div>
                    <div class="col-md-10">
                        <#nested "show-username">
                        <div class="${properties.kcFormGroupClass!}">
                            <div id="kc-username">
                                <label id="kc-attempted-username">${auth.attemptedUsername}</label>
                                <a id="reset-login" href="${url.loginRestartFlowUrl}">
                                    <div class="kc-login-tooltip">
                                        <i class="${properties.kcResetFlowIcon!}"></i>
                                        <span class="kc-tooltip-text">${msg("restartLoginTooltip")}</span>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            <#else>
                <#nested "show-username">
                <div class="${properties.kcFormGroupClass!}">
                    <div id="kc-username">
                        <label id="kc-attempted-username">${auth.attemptedUsername}</label>
                        <a id="reset-login" href="${url.loginRestartFlowUrl}">
                            <div class="kc-login-tooltip">
                                <i class="${properties.kcResetFlowIcon!}"></i>
                                <span class="kc-tooltip-text">${msg("restartLoginTooltip")}</span>
                            </div>
                        </a>
                    </div>
                </div>
            </#if>
        </#if>
      </header>
      <div id="kc-content">
        <div id="kc-content-wrapper">

          <#-- App-initiated actions should not see warning messages about the need to complete the action -->
          <#-- during login.                                                                               -->
          <#if displayMessage && message?has_content && (message.type != 'warning' || !isAppInitiatedAction??)>
              <div class="alert alert-${message.type}">
                  <#if message.type = 'success'><span class="${properties.kcFeedbackSuccessIcon!}"></span></#if>
                  <#if message.type = 'warning'><span class="${properties.kcFeedbackWarningIcon!}"></span></#if>
                  <#if message.type = 'error'><span class="${properties.kcFeedbackErrorIcon!}"></span></#if>
                  <#if message.type = 'info'><span class="${properties.kcFeedbackInfoIcon!}"></span></#if>
                  <span class="kc-feedback-text">${kcSanitize(message.summary)?no_esc}</span>
              </div>
          </#if>

          <#nested "form">

          <#if auth?has_content && auth.showTryAnotherWayLink() && showAnotherWayIfPresent>
          <form id="kc-select-try-another-way-form" action="${url.loginAction}" method="post" <#if displayWide>class="${properties.kcContentWrapperClass!}"</#if>>
              <div <#if displayWide>class="${properties.kcFormSocialAccountContentClass!} ${properties.kcFormSocialAccountClass!}"</#if>>
                  <div class="${properties.kcFormGroupClass!}">
                    <input type="hidden" name="tryAnotherWay" value="on" />
                    <a href="#" id="try-another-way" onclick="document.forms['kc-select-try-another-way-form'].submit();return false;">${msg("doTryAnotherWay")}</a>
                  </div>
              </div>
          </form>
          </#if>

          <#if displayInfo>
              <div id="kc-info" class="${properties.kcSignUpClass!}">
                  <div id="kc-info-wrapper" class="${properties.kcInfoAreaWrapperClass!}">
                      <#nested "info">
                  </div>
              </div>
          </#if>
        </div>
      </div>

    </div>
  </div>
</body>
</html>
</#macro>
