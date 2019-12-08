<#import "fragments/head.ftl" as c>
<#import "login.ftl" as l>



<html lang="en">

<@c.header>
    <style type="text/css">
        <#include "css/home.css">
    </style>
</@c.header>


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

<div class="container marketing">

        <!-- START THE FEATURETTES -->
        <#list blogs as blog>
        <form action="/delete_post/${blog.id}" method="post">
            <input type="hidden" name="_csrf" value="${_csrf.token}" />
                <div class="row featurette">
                    <div class="col-md-4">
                        <div class="featurette-image img-fluid mx-auto" style="background-image: url('/img/${blog.image}');"></div>
                        <#if isAdmin>
                            <div class="submit-button">
                                <input type="submit" class="close" aria-label="Close" value="&times;">
                            </div>
                        </#if>
                    </div>
                        <div class="col-md-8">
                            <a href="/blog/${blog.id}">
                                <h2 class="featurette-heading">${blog.title}</h2>
                                <div class="cope_text line-clamp">
                                    <p class="lead">${blog.description}</p>
                                </div>
                            </a>
                        </div>
                </div>
        </form>
        </#list>

    <hr class="featurette-divider">

    <!-- /END THE FEATURETTES -->
    <nav aria-label="Page navigation example">
        <ul class="pagination justify-content-md-center ">
            <li class="page-item">
                <a class="page-link text-dark" href="#" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                    <span class="sr-only">Previous</span>
                </a>
            </li>
            <li class="page-item"><a class="page-link text-dark" href="#">1</a></li>
            <li class="page-item"><a class="page-link text-dark" href="#">2</a></li>
            <li class="page-item"><a class="page-link text-dark" href="#">3</a></li>
            <li class="page-item"><a class="page-link text-dark" href="#">4</a></li>
            <li class="page-item"><a class="page-link text-dark" href="#">...</a></li>
            <li class="page-item">
                <a class="page-link text-dark" href="#" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                    <span class="sr-only">Next</span>
                </a>
            </li>
        </ul>
    </nav>
    <#include "fragments/footer.ftl">
</body>

</html>
