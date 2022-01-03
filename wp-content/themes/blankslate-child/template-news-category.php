<?php
/*
Template Name: News Category
 */
?>
<?php get_header(); ?><main class="news-categories container">
    <?php $list = get_categories();
    $list = array_reverse($list);
    ?>
    <br>
    <h1 class="font_heading tac bold">
        <span class="text_primary">समाचार</span>
        <span class="text_normal">श्रेणियाँ</span>
    </h1>
    <br>
    <?php
    $divsPrinted = 0;
    foreach ($list as $category) :
        if ($category->category_nicename === "other") {
            continue;
        }
    ?>
        <?php if ($divsPrinted % 2 === 0) : ?>
            <div class="half2Grid">
            <?php endif; ?>
            <div class="half newsCard section_bg">
                <h1 class="font_heading bl_primary"><?= $category->name; ?> <a href="<?php echo get_category_link($category->cat_ID); ?>" class="read_more">ओर पढ़ें</a></h1>
                <div class="categoryNewsItems">
                    <?php $post = getPostByCategory($category->cat_ID); ?>
                    <div class="category-news">
                        <div class="news-thumb">
                            <img class="img-fluid" src="<?php echo $post["thumb"]; ?>" alt="" />
                        </div>
                        <div class="overlay">
                            <a href="<?php echo $post["link"]; ?>">
                                <h2 class="color_white font_heading"><?php echo $post["title"]; ?></h2>
                            </a>
                        </div>
                        <div class="arrows">
                            <span>
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-left" viewBox="0 0 16 16">
                                    <path fill-rule="evenodd" d="M11.354 1.646a.5.5 0 0 1 0 .708L5.707 8l5.647 5.646a.5.5 0 0 1-.708.708l-6-6a.5.5 0 0 1 0-.708l6-6a.5.5 0 0 1 .708 0z"></path>
                                </svg>
                            </span>
                            <span>
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-right" viewBox="0 0 16 16">
                                    <path fill-rule="evenodd" d="M4.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L10.293 8 4.646 2.354a.5.5 0 0 1 0-.708z"></path>
                                </svg>
                            </span>
                        </div>
                    </div>
                </div>
            </div>
            <?php if ($divsPrinted % 2 !== 0) : ?>
            </div>
            <br><br>
        <?php endif; ?>
    <?php
        $divsPrinted++;
    endforeach;
    ?>
</main>
<?php get_footer(); ?>