<div class="row">
    
    <!-- ./col -->
    <div class="col-lg-3 col-6">
        <!-- small box -->
        <div class="small-box bg-secondary">
            <div class="inner">
                <h3><?= count($posts); ?></h3>

                <p>Konten</p>
            </div>
            <div class="icon">
                
            </div>
            <a href="<?= base_url('post/data'); ?>" class="small-box-footer">Lihat </a>
        </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-6">
        <!-- small box -->
        <div class="small-box bg-secondary">
            <div class="inner">
                <h3><?= count($members); ?></h3>

                <p>Member</p>
            </div>
            <div class="icon">
                
            </div>
            <a href="<?= base_url('member'); ?>" class="small-box-footer">Lihat</a>
        </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-6">
        <!-- small box -->
        
    </div>
    <!-- ./col -->
</div>