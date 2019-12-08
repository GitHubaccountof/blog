<#import "fragments/head.ftl" as c>

<html lang="en">

<@c.header>
<style type="text/css">
    <#include "css/create-page.css">
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
                        <h1>Admin panel</h1>
                        <span class="subheading">Creating page</span>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <article>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-10 mx-auto">
                    <div>
                        <form action="/create_page" method="post" enctype="multipart/form-data">
                            <div class="mb-2">
                                <textarea placeholder="Tag" name="tag" cols="70" rows="1" style="outline: none; resize: none;"></textarea>
                            </div>
                            <div class="mb-2">
                                <textarea placeholder="Title" name="title" cols="70" rows="2" style="outline: none; resize: none;"></textarea>
                            </div>
                            <div class="mb-2">
                                <textarea placeholder="Your Description" name="description" cols="70" rows="5" style="outline: none; resize: none;"></textarea>
                            </div>
                            <div class="mb-5 ml-5">
                                <input name="file" class="btn btn-primary btn-sm file-path validate" type="file">
                            </div>
                            <div class="text-center w-100 mx-auto pl-5">
                                <input type="submit" class="btn btn-success w-100" value="submit"/>
                            </div>
                            <input type="hidden" name="_csrf" value="${_csrf.token}" />
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </article>

    <hr>
    <#include "fragments/footer.ftl">
</body>

</html>