<footer class="footer">
    <div class="">
        <div class="followLinks">
            <span class="font_heading">हमें फॉलो करें</span>
            <div class="socialIcons">
                <span class="icon">
                    <img class="img-fluid" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/fb.png" alt="" />
                </span>
                <span class="icon">
                    <img class="img-fluid" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/youtube.png" alt="" />
                </span>
                <span class="icon">
                    <img class="img-fluid" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/insta.png" alt="" />
                </span>
            </div>
        </div>
        <div class="footer_nav">
            <?php wp_nav_menu(["theme_location" => "footer-menu"]) ?>
        </div>
    </div>
    <div class="">
        <div class="copyright">
            कॉपीराइट &copy; 2021 ताज़ा खबर
        </div>
        <div class="logo"><?php echo get_custom_logo(); ?></div>
    </div>
</footer>
<?php /* wp_footer(); */ ?>
<script src="<?php echo get_stylesheet_directory_uri(); ?>/assets/js/global.js"></script>
</body>

</html>