<!DOCTYPE html>
<html lang="en">

<head>
    <title>{$title}</title>
    <link rel="shortcut icon" href="../img/squid.ico"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta charset="utf-8">
    <!-- Bootstrap CSS CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

    <!-- FontAwesome CSS & JS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js"
        integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ"
        crossorigin="anonymous"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js"
        integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY"
        crossorigin="anonymous"></script>

    <!-- Fonts CSS -->
    <link href="https://fonts.googleapis.com/css?family=Lexend+Exa|Questrial|Righteous&display=swap" rel="stylesheet">

    <!-- Template CSS -->
    <link rel="stylesheet" href="../css/temp_style.css">
    {$AdditionalCSS}
    

</head>

<body>
    <header class="shadow">
        <div class="container">
            <div class="row">
                <div class="col-2" id="logoImg">
                    <img id="icon" src="../img/icon.png" alt="icon">
                </div>
                <div class="col-4" id="logo">
                    <div class="row">
                        <div class="col">
                            <h1>KRAKEN</h1>
                            <h2 id="subtitle">social music library</h2>
                        </div>
                    </div>
                </div>
                <div class="col-4" id="search">
                    <form class="form-inline" action="../songList" method="get">
                        <i class="fas fa-search" aria-hidden="true"></i>
                        <input class="form-control form-control-sm ml-3 w-75" type="text" placeholder="Search" id="searchField" name="search"
                            aria-label="Search">
                        <div class = "col-1">
                            <button name="submit" type="submit" class="btn">Search</button>
                        </div>
                    </form>
                </div>
                <div class = "offset-1 col-1" id = "profile">
                    <a href="profile.html"><img id="profile_pics" src="../img/profile.jpg" alt="profile" style ="
                    width: 100px;"></a>
                </div>
            </div>
        </div>
    </header>

    <main class="wrapper">
        <div class="row">

            <nav class="col" id="sidebar">
                <div class="container">
                    <div class="row">
                        <div class="col">

                            <div class="sidebar-header">
                                <h2>Social Feed</h2>
                            </div>

                            <div class="card shadow feed-item">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-3">
                                            <img class="feed-icon" src="../img/icon.png" alt="icon">
                                        </div>
                                        <div class="col-9">
                                            <h3>@Scribhneoir favorited a new album!</h3>
                                            <p>The Click - AJR</p>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="card shadow feed-item">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-3">
                                            <img class="feed-icon" src="../img/icon.png" alt="icon">
                                        </div>
                                        <div class="col-9">
                                            <h3>@Bandboy sent you a playlist!</h3>
                                            <p>Groovy Tunes</p>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="col-1">
                            <button type="button" id="sidebarCollapse" class="btn shadow">
                                <i id="sbToggle" class="fas fa-arrow-alt-circle-left"></i>
                            </button>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">

                        </div>
                    </div>
                </div>
            </nav>

            <div class="col-9" id="content">
                {block name="content"}{/block}
            </div>
        </div>
    </main>
    <footer>
        <p>&copy; 2019 KrakenMedia LLC</p>
    </footer>

    <!-- jQuery CDN  -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <!-- Popper.JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>

    <script type="text/javascript">

        $(document).ready(function () {
            //sidebar
            $('#sidebarCollapse').on('click', function () {
                $('#sidebar').toggleClass('active');
                $('#sbToggle').toggleClass('fa-arrow-alt-circle-right');
                $('#sbToggle').toggleClass('fa-arrow-alt-circle-left');
            });

            //edit playlist (toggle delete)
            $(".edit").click(function () {
                $('.delete').toggleClass('active');
            });

            //go to song
            $(".song").click(function () {
                window.location.href = "../viewSong/?songId=".concat($(this).attr("id"));
            });

            $(".collapsible").click(function () {
                
            });
        });

        //library expansion
        var coll = document.getElementsByClassName("collapsible");
        var playlistArr = document.getElementsByClassName("playlist");
        var i;
        var j;
        var k;

        for (i = 0; i < coll.length; i++) {
            coll[i].addEventListener("click", function () {
                for (k = 0; k < coll.length; k++) {
                    if (coll[k] === this) {
                        for (j = 0; j < playlistArr.length; j++) {
                            var content = playlistArr[j];
                            if (content.style.maxHeight) {
                                content.style.maxHeight = null;
                            }
                            else if (k == j) {
                                content.style.maxHeight = content.scrollHeight + "px";
                            }
                        }
                    }
                }
            });
        }

    </script>
</body>

</html>