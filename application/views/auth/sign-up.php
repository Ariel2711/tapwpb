<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title><?= $title; ?></title>
    <!-- CSS files -->
    <link href="<?= base_url(); ?>assets/dist/css/tabler.min.css" rel="stylesheet" />
    <link href="<?= base_url(); ?>assets/dist/css/tabler-flags.min.css" rel="stylesheet" />
    <link href="<?= base_url(); ?>assets/dist/css/tabler-payments.min.css" rel="stylesheet" />
    <link href="<?= base_url(); ?>assets/dist/css/tabler-vendors.min.css" rel="stylesheet" />
    <link href="<?= base_url(); ?>assets/dist/css/demo.min.css" rel="stylesheet" />
    
    <style>
        body {
            display: none;
        }
    </style>
</head>

<body class="antialiased border-top-wide  d-flex flex-column bg-dark">
    <div class="flex-fill d-flex flex-column justify-content-center py-4">
        <div class="container-tight py-6">
            <div class="text-center mb-4 text-light">
                
                <h1>OlahBerita</h1>
                <small class="text-light">by <strong>Ariel N.P</strong></small>
            </div>
            <?= form_open('', ['class' => 'card card-md', 'autocomplete' => 'off']); ?>
            <div class="card-body">
                <?= $this->session->flashdata('msg'); ?>
                <h2 class="card-title text-center mb-4">Register</h2>
                <div class="mb-3">
                    <label class="form-label">Nama</label>
                    <input autofocus onfocus="this.select()" value="<?= set_value('fullname'); ?>" name="fullname" type="text" class="form-control" >
                    <?= form_error('fullname'); ?>
                </div>
                <div class="mb-3">
                    <label class="form-label">Username</label>
                    <input value="<?= set_value('username'); ?>" name="username" type="text" class="form-control" >
                    <?= form_error('username'); ?>
                </div>
                <div class="mb-2">
                    <label class="form-label">Password</label>
                    <div class="input-group input-group-flat">
                        <input name="password" type="password" class="form-control" autocomplete="off">
                        <span class="input-group-text">
                            
                        </span>
                    </div>
                    <?= form_error('password'); ?>
                </div>
                <div class="mb-2">
                    <label class="form-label">Ulangi Password</label>
                    <div class="input-group input-group-flat">
                        <input name="password2" type="password" class="form-control" autocomplete="off">
                        <span class="input-group-text">
                            
                        </span>
                    </div>
                    <?= form_error('password2'); ?>
                </div>
                <div class="form-footer">
                    <button type="submit" class="btn btn-secondary w-100">Register</button>
                </div>
            </div>
            <?= form_close(); ?>
            <div class="text-center text-light mt">
                Login akun? <a href="<?= base_url("signin"); ?>" tabindex="-1">Login</a>
            </div>
        </div>
    </div>
    <!-- Libs JS -->
    <script src="<?= base_url(); ?>assets/dist/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Tabler Core -->
    <script src="<?= base_url(); ?>assets/dist/js/tabler.min.js"></script>
    <script>
        document.body.style.display = "block"
    </script>
</body>

</html>