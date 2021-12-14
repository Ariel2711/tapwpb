<div class="card mb-3">
    <div class="card-body py-3">
        <div class="d-flex">
            <h5 class="card-title m-0">
                Berita Terbaru
            </h5>
            <div class="ml-auto">
               
            </div>
        </div>
    </div>
    <div class="list-group list-group-flush">
        <?php foreach ($recent_posts as $rp) : ?>
            <a href="<?= base_url('post/view/') . $rp->post_slug; ?>" class="list-group-item list-group-item-action flex-column align-items-start">
                <div class="media">
                    <div class="media-body">
                        <h3 class="mt-0 mb-1"><?= $rp->post_title; ?></h3>
                        <span class="small text-secondary">
                            
                            <?= custom_date('d M Y', $rp->post_date); ?>
                            
                             &nbsp; <?= $rp->category_name; ?>
                        </span>
                    </div>
                </div>
            </a>
        <?php endforeach; ?>
    </div>
</div>

        
    </div>
</div> 