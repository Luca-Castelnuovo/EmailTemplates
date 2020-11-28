[#setting url_escaping_charset="UTF-8"]
To change your password click on the following link.
<p>
  [#assign url = "https://auth.castelnuovo.xyz/password/change/${changePasswordId}?tenantId=${user.tenantId}" /]
  [#list state!{} as key, value][#if key != "tenantId" && value??][#assign url = url + "&" + key?url + "=" + value?url/][/#if][/#list]
  <a href="${url}">${url}</a>
</p>

- Luca Castelnuovo
