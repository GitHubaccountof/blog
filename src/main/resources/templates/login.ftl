<#import "fragments/login.ftl" as l>

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
                        <h1>Clean Blog</h1>
                        <span class="subheading">Vlad's blog about everything</span>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <div class="col-lg-6 col-md-3 col-sm-3 col-xs-6 mx-auto text-center">
        <div class="top-cover center-block">
            <p class="top-name center-block text-center">Login</p>
            <@l.login "/login" false/>
        </div>
    </div>

    <#include "fragments/footer.ftl">
</body>

</html>

