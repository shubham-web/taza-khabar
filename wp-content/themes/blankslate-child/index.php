<?php get_header(); ?><main class="homepage container">
    <div class="majorMinorGrid">
        <div class="major section_bg newsCard">
            <?php $mainPost = getPostByCategory(3); ?>
            <h1 class="font_heading bl_primary">
                <span class="text_normal">
                    <?php echo themeColored($mainPost['title']); ?>
                </span>
            </h1>
            <div class="newsContent">
                <?php echo $mainPost["content"]; ?>
                <span class="read_more_main_post">
                    <a href="<?php echo $mainPost["link"]; ?>">ओर पढ़ें</a>
                </span>
            </div>
            <div class="newsImage">
                <img src="<?php echo $mainPost["thumb"]; ?>" alt="" class="img-fluid" />
            </div>
        </div>
        <div class="minor section_bg headlingList newsCard">

            <h1 class="font_heading bl_primary">
                <?= themeColored("बड़ी खबरें"); ?>
                <a href="/" class="read_more">ओर देखें</a>
            </h1>
            <div class="headlinesList">
                <div class="headline">
                    बुमराह ने विकेट के साथ किया चौथे दिन का अंत, जीत से 6 विकेट दूर भारत
                </div>
                <div class="headline">रेजिडेंट डॉक्टरों से दिल्ली पुलिस ने नहीं मांगी माफी, हड़ताल जारी रखने का ऐलान</div>
                <div class="headline">
                    PM की रैली के दौरान कार में तोड़फोड़ के आरोपियों पर सपा का एक्शन
                </div>
            </div>
        </div>
    </div>
    <div class="videosSection section_bg newsCard">
        <h1 class="font_heading bl_primary">
            <span class="text_normal">वीडियोज़</span>
            <a href="/" class=" read_more">ओर देखें</a>
        </h1>
        <div class="videoList">
            <div class="video">
                <div class="thumb">
                    <img class="img-fluid" src="https://imgur.com/C2fK0eX.png" alt="" />
                </div>
                <div class="overlay">
                    <img class="play-icon" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/play-icon.png" alt="" />
                </div>
            </div>
            <div class="video">
                <div class="thumb">
                    <img class="img-fluid" src="https://imgur.com/xPTo86E.png" alt="" />
                </div>
                <div class="overlay">
                    <img class="play-icon" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/play-icon.png" alt="" />
                </div>
            </div>
            <div class="video">
                <div class="thumb">
                    <img class="img-fluid" src="https://imgur.com/3g3cM5G.png" alt="" />
                </div>
                <div class="overlay">
                    <img class="play-icon" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/play-icon.png" alt="" />
                </div>
            </div>
        </div>
    </div>
    <div class="majorMinorGrid inverse">
        <div class="minor section_bg headlingList newsCard">
            <h1 class="font_heading bl_primary">
                <span class="text_normal">मनोरंजन</span>
                <a href="/" class="read_more">ओर देखें</a>
            </h1>
            <div class="headlinesList">
                <div class="headline">
                    बुमराह ने विकेट के साथ किया चौथे दिन का अंत, जीत से 6 विकेट दूर भारत
                </div>
                <div class="headline">रेजिडेंट डॉक्टरों से दिल्ली पुलिस ने नहीं मांगी माफी, हड़ताल जारी रखने का ऐलान</div>
                <div class="headline">
                    PM की रैली के दौरान कार में तोड़फोड़ के आरोपियों पर सपा का एक्शन
                </div>
            </div>
        </div>
        <div class="major section_bg newsCard">
            <?php $mainPost = getPostByCategory(5); ?>
            <h1 class="font_heading bl_primary">
                <span class="text_normal">
                    <?php echo themeColored($mainPost['title']); ?>
                </span>
            </h1>
            <div class="newsContent">
                <?php echo $mainPost["content"]; ?>
                <span class="read_more_main_post">
                    <a href="<?php echo $mainPost["link"]; ?>">ओर पढ़ें</a>
                </span>
            </div>
            <div class="newsImage">
                <img src="<?php echo $mainPost["thumb"]; ?>" alt="" class="img-fluid" />
            </div>
        </div>
    </div>
</main>
<?php get_footer(); ?>