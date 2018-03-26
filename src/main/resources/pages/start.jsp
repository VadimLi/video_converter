<%@ page contentType = "text/html; charset = UTF-8" %>
<html>
    <head>
        <title>Video-audio converter</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <link rel="stylesheet"
              href="/webjars/bootstrap/4.0.0-2/css/bootstrap.min.css"/>
    </head>
    <body>
        <nav class="navbar navbar-inverse">
            <div class="container">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">Video-audio converter</a>
                </div>
            </div>
        </nav>
        <div class="container" style="min-height: 500px">
            <div class="starter-template">
                <h1>Converter</h1>
                <form class="form-horizontal" id="search-form">
                    <div class="form-group form-group-lg">
                        <label class="col-sm-2 control-label">Url video</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="data"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" id="bth-search"
                                    class="btn btn-primary btn-lg">Add
                            </button>
                        </div>
                    </div>
                </form>
                <div id="feedback"></div>
            </div>
        </div>
        <div class="container">
            <footer>
                <p>©Video-audio converter 2018</p>
            </footer>
    </div>
    </body>
</html>