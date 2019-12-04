<!DOCTYPE HTML>
<html>
<head>
    <title>Getting Started: Serving Web Content</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
</head>
<body>
<div>By ID</div>
<#list contents as content>
    Id: ${content.id} <br/>
    Description: ${content.description}<br/>
    Image: ${content.image}<br/>
    Title: ${content.title}<br/>
    Tag: ${content.tag}<br/>
</#list>
</body>
</html>