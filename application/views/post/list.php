<!-- Page title -->
<div class="page-header d-print-none">
    <div class="row align-items-center">
        <div class="col">
            <!-- Page  -->
            
            <h3 class="text-light">
                <?= $selected_category ? " " . get_category($selected_category) : "Semua Berita"; ?>
            </h3>
        </div>
    </div>
</div>

<?php if (!$posts) : ?>
    <div class="row justify-content-center">
        <div class="col-md-6 text-center">
            <div class="alert alert-dark">Tidak ada berita <br> <a href="<?= base_url(); ?>" ></a></div>
        </div>
    </div>
<?php endif; ?>

<div class="row row-cards " >
    <?php
    foreach ($posts as $post) :
        $thumbnail = $post->post_thumbnail ? $post->post_thumbnail : $this->config->item('post_thumbnail_default');
    ?>

        <div class="col-6 col-lg-4">
            <div class="card card-sm h-100">
                <a href="<?= base_url('post/view/') . $post->post_slug; ?>" class="d-block">
                    <img src="<?= base_url('assets/dist/img/posts/') . $thumbnail  ?>" class="card-img-top" height="200" >
                </a>
                <div class="card-body bg-dark">
                    <span class="badge bg-light mb-1 text-dark">
                       
                        <?= $post->category_name; ?>
                    </span>
                    <a href="<?= base_url('post/view/') . $post->post_slug; ?>" class="text-decoration-none text-light">
                        <h3 class="card-title font-weight-bold mb-0"><?= $post->post_title; ?></h3>
                    </a>
                </div>
                <div class="card-footer bg-dark">
                    <div class="d-flex align-items-center ">
                        
                        <div>
                            
                            <div class=" text-light">
                                <?= custom_date('d F Y', $post->post_date); ?>
                            </div>
                        </div>
                        <div class="ml-auto">
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <?php endforeach; ?>
</div>

<div class="row mt-4">
    <div class="col-12">
        <?= $this->pagination->create_links(); ?>
    </div>
</div>