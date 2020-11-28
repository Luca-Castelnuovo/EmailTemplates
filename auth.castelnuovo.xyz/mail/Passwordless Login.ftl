[#setting url_escaping_charset="UTF-8"]
You have requested to log into FusionAuth using this email address. If you do not recognize this request please ignore this email.
<p>
  [#assign url = "https://auth.castelnuovo.xyz/oauth2/passwordless/${code}?tenantId=${user.tenantId}" /]
  [#list state!{} as key, value][#if key != "tenantId" && value??][#assign url = url + "&" + key?url + "=" + value?url/][/#if][/#list]
  <a href="${url}">${url}</a>
</p>

- Luca Castelnuovo
