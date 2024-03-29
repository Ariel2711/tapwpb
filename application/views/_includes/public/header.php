<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title><?= $title; ?></title>
    <!-- CSS files -->
    
    <link href="<?= base_url(); ?>assets/dist/libs/jqvmap/dist/jqvmap.min.css" rel="stylesheet" />
    <link href="<?= base_url(); ?>assets/dist/css/tabler.min.css" rel="stylesheet" />
    <link href="<?= base_url(); ?>assets/dist/css/tabler-flags.min.css" rel="stylesheet" />
    <link href="<?= base_url(); ?>assets/dist/css/tabler-payments.min.css" rel="stylesheet" />
    <link href="<?= base_url(); ?>assets/dist/css/tabler-vendors.min.css" rel="stylesheet" />
    <link href="<?= base_url(); ?>assets/dist/css/demo.min.css" rel="stylesheet" />
    <script type='text/javascript' src='https://platform-api.sharethis.com/js/sharethis.js#property=undefined&product=undefined' async='async'></script>
    <style>
        body {
            display: none;
        }
    </style>
</head>

<body class="antialiased bg-secondary">
    <div class="page">
        <header class="navbar navbar-expand-md navbar-dark d-print-none">
            <div class="container-xl">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-menu">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <a href="<?= base_url(); ?>" class="page-title navbar-brand navbar-brand-autodark d-none-navbar-horizontal pr-0 pr-md-3 ">
                   
                    &nbsp; OlahBerita
                </a>
                <div class="navbar-nav flex-row order-md-last ml-md-4">
                    <div class="nav-item dropdown d-none d-md-flex mr-3">
                        
                        <div class="dropdown-menu dropdown-menu-right dropdown-menu-card">
                            <div class="card">
                                <div class="">
                                   
                                </div>
                            </div>
                        </div>
                    </div>
                    <?php if (userdata()) : ?>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link d-flex lh-1 text-reset p-0" data-toggle="dropdown">
                                <?php if (userdata()->avatar) : ?>
                                    <span class="avatar avatar-sm" style="background-image: url(<?= base_url('assets/dist/img/users/') . userdata()->avatar ?>)"></span>
                                <?php else : ?>
                                    <span class="avatar avatar-sm bg-blue-lt"><?= user_initial(userdata()->fullname); ?></span>
                                <?php endif; ?>
                                <div class="d-none d-xl-block pl-2">
                                    <div><?= userdata()->fullname; ?></div>
                                    <div class="mt-1 small text-muted text-capitalize"><?= userdata()->role; ?></div>
                                </div>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">
                                <?php if (userdata()->role != "member") : ?>
                                    <a href="<?= base_url('dashboard'); ?>" class="dropdown-item">Dashboard Admin</a>
                                    <div class="dropdown-divider"></div>
                                <?php endif; ?>
                                <a href="<?= base_url('configuration/account') ?>" class="dropdown-item">Akun Saya</a>
                                <a href="<?= base_url('signout'); ?>" class="dropdown-item">Logout</a>
                            </div>
                        </div>
                    <?php else : ?>
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link" href="<?= base_url('signin') ?>">
                                    <span class="nav-link-icon d-md-none d-lg-inline-block">
                                        <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                                            <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                            <circle cx="9" cy="7" r="4" />
                                            <path d="M3 21v-2a4 4 0 0 1 4 -4h4a4 4 0 0 1 4 4v2" />
                                            <path d="M16 11l2 2l4 -4" />
                                        </svg>
                                    </span>
                                    <span class="nav-link-title text-light">
                                        Login
                                    </span>
                                </a>
                            </li>
                        </ul>
                    <?php endif; ?>
                </div>
                <div class="collapse navbar-collapse" id="navbar-menu">
                    <div class="d-flex flex-column flex-md-row flex-fill align-items-stretch align-items-md-center">
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link" href="<?= base_url() ?>">
                                   
                                    <span class="nav-link-title text-light">
                                        Home
                                    </span>
                                </a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#navbar-extra" data-toggle="dropdown" role="button" aria-expanded="false">
                                    
                                    <span class="nav-link-title text-light">
                                        Kategori
                                    </span>
                                </a>
                                <div class="dropdown-menu ">
                                    <?php foreach (get_category() as $category) : ?>
                                        <a class="dropdown-item" href="<?= base_url('post/index') . '?category=' . $category->category_id . '&search=' ?>">
                                            <?= $category->category_name; ?>
                                        </a>
                                    <?php endforeach; ?>
                                   
                                </div>
                            </li>
                        </ul>
                       
                    </div>
                </div>
            </div>
        </header>
        <div class="content bg-secondary">
            <div class="container-xl bg-secondary">