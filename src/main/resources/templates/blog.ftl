<#import "fragments/head.ftl" as c>

<html lang="en">

<!-- Header -->
<@c.header/>

<body>
    <!-- Navigation -->
    <#include "fragments/navigation.ftl">

    <header class="masthead"
            style="background-image: url('/img/${content.image}')">
        <div class="overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-10 mx-auto">
                    <div class="post-heading">
                        <h1>${content.title}</h1>
                        <span class="meta">Theme:
                                <a href="#">${content.tag}</a>
                                </span>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <article>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-10 mx-auto">
                    <p>${content.description}</p>
                </div>
            </div>
        </div>
    </article>
    <hr>
    <!-- Footer -->
    <#include "fragments/footer.ftl">
</body>

</html>