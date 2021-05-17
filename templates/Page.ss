<!DOCTYPE html>
<html lang="$ContentLocale">
<head>
    <% base_tag %>
    <title>$Title - $SiteConfig.Title</title>
    <meta name="description" content="$MetaDescription">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link rel="shortcut icon" href="$ThemedResource('images/favicon.png')" />
    <% require themedCSS('main') %>
</head>
<body class="flex-grow">
<% include Nav %>
<div class="has-background-light has-text-dark p-3">
    <section class="container">
        <div class="py-4">
            $Breadcrumbs
        </div>
        <div class="py-4">
            $Layout
        </div>
    </section>
</div>

<% include Footer %>
<% require themedJavascript('bundle.js') %>
</body>
</html>
