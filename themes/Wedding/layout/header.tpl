<!DOCTYPE html>
<html lang="{LANG.Content_Language}">
<head>
<title>{THEME_PAGE_TITLE}</title>
<!-- BEGIN: metatags --><meta {THEME_META_TAGS.name}="{THEME_META_TAGS.value}" content="{THEME_META_TAGS.content}"><!-- END: metatags -->
<link rel="shortcut icon" href="{SITE_FAVICON}">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Dosis:wght@400;500&family=Prata&display=swap" rel="stylesheet">
<!-- BEGIN: links -->
<link<!-- BEGIN: attr --> {LINKS.key}<!-- BEGIN: val -->="{LINKS.value}"<!-- END: val --><!-- END: attr -->>
<!-- END: links -->
<link rel="stylesheet" href="{NV_BASE_SITEURL}themes/{TEMPLATE}/css/fonts.css">
<link rel="stylesheet" href="{NV_BASE_SITEURL}themes/{TEMPLATE}/css/themify-icons.css">
<!-- BEGIN: js -->
<script<!-- BEGIN: ext --> src="{JS_SRC}"<!-- END: ext -->><!-- BEGIN: int -->{JS_CONTENT}<!-- END: int --></script>
<!-- END: js -->
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Organization",
  "url": "{NV_MY_DOMAIN}",
  "logo": "{NV_MY_DOMAIN}{LOGO_SRC}"
}
</script>
<style>
{FILE "../css/app.min.css"}
</style>
</head>
<body>