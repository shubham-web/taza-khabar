<?php get_header(); ?>
<?php $catId = get_query_var('cat'); ?>
<main id="content" class="container" role="main">
    <header>
        <h1 class="entry-title font_heading bold" itemprop="name">
            <?php echo themeColored(get_the_archive_description()); ?>
        </h1>

        <!-- <div class="archive-meta" itemprop="description">
            <?php if ('' != the_archive_description()) {
                echo esc_html(the_archive_description());
            } ?>
        </div> -->

        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/">होम</a></li>
                <li class="breadcrumb-item active" aria-current="page"><span><?php echo single_term_title(); ?></span></li>
            </ol>
        </nav>
    </header>
    <?php $posts = getPostByCategory($catId, 10); ?>
    <div class="categorized_posts">
        <?php
        if (count($posts) === 0) {
        ?>
            <div class="alert alert-info" role="alert">
                अभी <?php echo single_term_title(); ?> श्रेणी मे कोई समाचार नहीं है ।
            </div>
        <?php
        }
        ?>
        <?php
        foreach ($posts as $post) :
        ?>
            <a class="unset_link" href="<?= $post["link"]; ?>">
                <div class="newsArticleShort">
                    <div class="articleThumb">
                        <img class="img-fluid" src="<?php echo $post["thumb"]; ?>" alt="" />
                    </div>
                    <div class="articleTitle">
                        <span><?= $post["title"]; ?></span>
                    </div>
                </div>
            </a>
        <?php endforeach; ?>
    </div>
    <?php if (have_posts()) : while (have_posts()) : the_post(); ?>
            <?php get_template_part('entry'); ?>
    <?php endwhile;
    endif; ?>
    <?php get_template_part('nav', 'below'); ?>
</main>
<?php get_footer(); ?>