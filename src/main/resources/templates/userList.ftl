<#import "fragments/head.ftl" as c>

<html lang="en">

<!-- Header -->
<@c.header/>

<body>

<!-- Navigation -->
<#include "fragments/navigation.ftl">

    <header class="masthead" style="background-image: url('https://www.odensbacken.pingst.se/sites/default/files/images/top/jeshoots-com-219386-unsplash_0.jpg')">
        <div class="overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-10 mx-auto">
                    <div class="site-heading">
                        <h1>Admin panel</h1>
                        <span class="subheading">User list</span>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <div class="col-lg-8 col-md-10 mx-auto">
        <table class="mx-auto">
            <thead>
            <tr>
                <th>Name</th>
                <th>Role</th>
                <th></th>
            </tr>
            </thead>
            <tbody>
            <#list users as user>
            <tr>
                <td>${user.username}</td>
                <td><#list user.roles as role>${role}<#sep>, </#list></td>
                <td><a href="/admin/${user.id}">edit</a></td>
            </tr>
            </#list>
            </tbody>
        </table>
    </div>
<#include "fragments/footer.ftl">
</body>
</html>