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
                        <span class="subheading">User edit</span>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <div class="col-lg-8 col-md-10 mx-auto text-center">
        <form action="/admin" method="post">
            <input type="text" name="username" value="${edit_user.username}">
            <#list roles as role>
                <div>
                    <label><input type="checkbox" name="${role}" ${edit_user.roles?seq_contains(role)?string("checked", "")}>${role}</label>
                </div>
            </#list>
            <input type="hidden" value="${edit_user.id}" name="userId">
            <input type="hidden" value="${_csrf.token}" name="_csrf">
            <button type="submit">Save</button>
        </form>
    </div>
<#include "fragments/footer.ftl">
</body>
</html>