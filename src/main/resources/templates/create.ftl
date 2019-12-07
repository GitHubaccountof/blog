<#import "fragments/head.ftl" as c>

<html lang="en">

<@c.header>
<style type="text/css">
    <#include "css/create-page.css">
</style>
</@c.header>

<body>
    <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
        <div class="container">
            <a class="navbar-brand" href="index.html">Blog</a>
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
                data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
                aria-label="Toggle navigation">
                Menu
                <i class="fas fa-bars"></i>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="../">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/blog">Blog</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/create_page">Create page</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Contact</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <header class="masthead"
        style="background-image: url('https://via.placeholder.com/1903x693'); width: 100%; height: 693px;">
        <div class="overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-10 mx-auto">
                    <div class="post-heading">
                        <a class="bt more-bt" href="javascript:void(0)">
                            <span class="fl"></span><span class="sfl"></span><span class="cross"></span><i></i>
                            <p>add image</p>
                        </a>
                    </div>
                </div>
            </div>
        </div>

    </header>
    <article>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-10 mx-auto">
                    <div class="add-button">
                        <a class="bt more-bt" href="javascript:void(0)">
                            <span class="fl"></span><span class="sfl"></span><span class="cross"></span><i></i>
                            <p>add title</p>
                        </a>
                    </div>
                    <div class="add-button">
                        <a class="bt more-bt" href="javascript:void(0)">
                            <span class="fl"></span><span class="sfl"></span><span class="cross"></span><i></i>
                            <p>add tag</p>
                        </a>
                    </div>
                    <div class="add-button">
                        <a class="bt more-bt" href="javascript:void(0)">
                            <span class="fl"></span><span class="sfl"></span><span class="cross"></span><i></i>
                            <p>add description</p>
                        </a>
                    </div>
                    <div>
                        <form action="/create_page" method="post" enctype="multipart/form-data">
                            <input type="text" name="tag" placeholder="Tag">
                            <textarea placeholder="Title" name="title" cols="70" rows="2" style="outline: none; resize: none;"></textarea>
                            <textarea placeholder="Your Description" name="description" cols="70" rows="5" style="outline: none; resize: none;"></textarea>
                            <div class="btn btn-primary btn-sm float-left">
                                <span>Choose file</span>
                                <input name="file" class="file-path validate" type="file">
                            </div>
                            <input type="hidden" name="_csrf" value="${_csrf.token}" />
                            <input type="submit" class="btn btn-success" value="submit"/>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </article>

    <hr>
    <#include "fragments/footer.ftl">
    <script
            src="https://code.jquery.com/jquery-3.4.1.min.js"
            integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
            crossorigin="anonymous"></script>
    <script src="../js/create-page.js"></script>
</body>

</html>