<?php get_header(); ?>
<main id="content" class="container" role="main">
    <?php if (have_posts()) : while (have_posts()) : the_post(); ?>

            <article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
                <header>
                    <?php if (is_singular()) {
                        echo '<h1 class="entry-title" itemprop="headline">';
                    } else {
                        echo '<h2 class="entry-title">';
                    } ?>

                    <h1 class="tac bold font_heading" title="<?php the_title_attribute(); ?>" rel="bookmark"><?= themeColored(get_the_title()); ?></h1>

                    <?php if (is_singular()) {
                        echo '</h1>';
                    } else {
                        echo '</h2>';
                    } ?>

                    <?php if (!is_search()) {
                    ?>
                        <div class="entry-meta on-single-post-page">
                            <?php if (!is_null(get_field("location")) && get_field("location") !== "") : ?>
                                <div class="br_primary_lite">
                                    <?= get_field("location"); ?>
                                </div>
                            <?php endif; ?>
                            <time class="entry-date" datetime="<?php echo esc_attr(get_the_date()); ?>" title="<?php echo esc_attr(get_the_date()); ?>
                            " <?php
                                if (is_single()) {
                                    echo 'itemprop="datePublished" pubdate';
                                }
                                ?>>
                                <?php the_time(get_option('date_format')); ?></time>
                            <?php if (is_single()) {
                                echo '<meta itemprop="dateModified" content="' . esc_attr(get_the_modified_date()) . '" />';
                            } ?>
                        </div>

                    <?php
                    } ?>
                </header>
                <!-- <?php get_template_part('entry', (is_front_page() || is_home() || is_front_page() && is_home() || is_archive() || is_search() ? 'summary' : 'content')); ?> -->

                <div class="entry-content" itemprop="mainEntityOfPage">
                    <?php if (has_post_thumbnail()) : ?>
                        <?php
                        $src = wp_get_attachment_image_src(get_post_thumbnail_id($post->ID), 'full', false);
                        $src = esc_url($src[0]);
                        ?>
                        <div class="post-single-thumbnail" title="<? the_title_attribute() ?>">
                            <img class="news-image img-fluid" src="<?php echo $src; ?>" />
                            <div class="icons">
                                <div class="icon copyPageLink">
                                    <img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/share-icon.svg" alt="" />
                                </div>
                            </div>
                        </div>
                    <?php endif; ?>

                    <meta itemprop="description" content="<?php echo wp_strip_all_tags(get_the_excerpt(), true); ?>" />

                    <div class="news-content">
                        <?php the_content(); ?>
                    </div>
                    <div class="entry-links"><?php wp_link_pages(); ?></div>
                </div>


                <?php if (is_singular()) {
                    // get_template_part('entry-footer');
                } ?>
            </article>


            <?php if (comments_open() && !post_password_required()) {
                // comments_template('', true);
            } ?>
    <?php endwhile;
    endif; ?>
    <footer>
        <!-- <?php get_template_part('nav', 'below-single'); ?> -->
    </footer>
</main>
<?php get_footer(); ?>