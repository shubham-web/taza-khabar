<?php
add_theme_support("custom-logo");


register_nav_menus([
    "header-menu" => "Header Menu",
    "footer-menu" => "Footer Menu"
]);


function create_news_post_type()
{
    register_post_type(
        'news',
        array(
            'labels'                => array(
                'name' => __('News Articles'),
                'singular_name' => __('News Article'),
                "add_new" => __("Add News Article")
            ),
            "has_archive"           => true,
            'public'                => true,
            'capability_type'       => 'post',
            'menu_icon'             => 'dashicons-admin-site',
            "menu_position"         => 2,
            'supports'              => array('title', 'editor', 'author', 'thumbnail', 'excerpt', 'trackbacks', 'custom-fields', 'comments', 'revisions', 'post-formats'),
            'show_in_rest' => true,
            "taxonomies"            => array("category"),
        )
    );
}

add_action("init", "create_news_post_type");


function getPostByCategory($cat, $limit = 1)
{
    $args = [
        "post_type" => "news",
        "post_status" => "publish",
        "cat" => $cat,
        "posts_per_page" => $limit,
    ];
    $arr_post = new WP_Query($args);

    $posts = [];
    if ($arr_post->have_posts()) {
        $formattedPost = [];

        $fetchedPosts = $arr_post->get_posts();

        foreach ($fetchedPosts as $post) {
            $formattedPost["id"] = $post->ID;
            $formattedPost["date"] = $post->post_date_gmt;
            $formattedPost["title"] = $post->post_title;
            $formattedPost["thumb"] = get_the_post_thumbnail_url($post);

            $formattedPost["content"] = wp_strip_all_tags($post->post_content);
            $formattedPost["content"] = substr($formattedPost["content"], 0, 800);
            $formattedPost["content"] = substr($formattedPost["content"], 0, strrpos($formattedPost["content"], " "));
            $formattedPost["content"] .= "...";
            $formattedPost["link"] = get_permalink($post);
            array_push($posts, $formattedPost);
        }
    }
    wp_reset_postdata();
    if ($limit === 1) {
        return $posts[0];
    }
    return $posts;
};

function themeColored($title = "")
{
    $title = trim($title);
    if ($title === "") {
        return $title;
    }

    $totalWords = explode(" ", $title);
    $data = [];
    $data["totalWords"] = $totalWords;

    if (count($totalWords) === 1) {
        return '<span class="text_primary">' . $totalWords[0] . '</span>';
    } else if (count($totalWords) === 2) {
        return '<span class="text_primary">' . $totalWords[0] . '</span> <span class="text_normal">' . $totalWords[1] . '</span>';
    }

    return '<span class="text_primary">' . implode(" ", array_slice($totalWords, 0, 2)) . '</span> <span class="text_normal">' . implode(" ", array_slice($totalWords, 2)) . '</span>';
}
