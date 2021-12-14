<div class="sharethis-sticky-share-buttons"></div>
<div class="row row-cards">
    <div class="col-lg-8">
        <!-- <div class="card mb-2">
            <div class="card-body">
                <ol class="breadcrumb breadcrumb-arrows" aria-label="breadcrumbs">
                    <li class="breadcrumb-item">
                        <a href="<?= base_url(); ?>">
                           
                            Home
                        </a>
                    </li>
                    
                    <li class="breadcrumb-item active" aria-current="page"><?= $post->post_title; ?></li>
                </ol>
            </div>
        </div> -->
        <div class="card mb-3">
            <div class="card-body">
                <span class="badge bg-grey-lt mb-1">
                    
                    <?= $post->category_name; ?>
                </span>
                <h1 class="text-capitalize mb-3"><?= $post->post_title; ?></h1>
                <div class="post-meta">
                    <div>
                        
                        <button type="button" class="btn btn-sm">
                           
                            <?= custom_date('d M Y', $post->post_date); ?>
                        </button>
                        
                    </div>
                </div>
                <hr class="my-3">
                <?php if ($post->post_thumbnail) : ?>
                    <img src="<?= base_url('assets/dist/img/posts/') . $post->post_thumbnail ?>" class="img-fluid mb-2 " height="250" width="680">
                <?php endif; ?>
                <div class="markdown">
                    <?= $post->post_body; ?>
                </div>
            </div>
           
        </div>

        
    </div>
    <div class="col-lg-4">
        <?php $this->load->view('post/sidebar'); ?>
    </div>
</div>