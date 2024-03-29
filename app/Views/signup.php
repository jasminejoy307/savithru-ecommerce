<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Writing Pad</title>
    <link href="<?= base_url('assets/css/style.css')?>" rel="stylesheet" />
  </head>
  <body>
    <!-- ======= Header Section ======= -->
    <header class="wp-header sticky-top">
        <nav class="navbar navbar-expand-lg">
            <div class="container">
                <a class="navbar-brand" href="#">
                    <img src="assets/images/writing-pad-logo.svg" alt="Writing Pad Logo" />
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mainMenu" >
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="mainMenu">
                    <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">About Us</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown">
                        Blogs
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="#">Link 1</a></li>
                            <li><a class="dropdown-item" href="#">Link 2</a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Audiobooks</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Discussions</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Videos</a>
                    </li>
                    <li class="nav-item">
                        <a class="btn btn-dark" href="#">Start writing</a>
                    </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header><!-- End Header -->
    <!-- ======= Form and Hero Section ======= -->
    <main class="register-account">
        <div class="register-account__left">
            <div class="wp-hero">
                <div class="wp-hero__content">
                    <!-- Heor Heading Up -->
                    <div class="wp-hero__heading-top">
                        <span class="wp-hero__category">Travel</span>
                        <span class="wp-hero__divider"></span>
                        <span class="wp-hero__mins-read">16Mins read</span>
                    </div>
                    <!-- Heor Heading -->
                    <h1 class="wp-hero__heading">
                        Discover the beauty of the unknown island.
                    </h1>
                    <!-- Heor Description -->
                    <div class="wp-hero__desc">
                        Discover and dive in this astonishing beauty of nature which is located just about 13kms north of Gokarna, Karnataka
                    </div>
                </div>
            </div>
        </div>
        <div class="register-account__right">
            <div class="account-form">
                <!-- Form Heading -->
                <header class="account-form__header">
                    <div class="account-form__heading">Sign up</div>
                    <div class="account-form__heading-down">Start your 30-day free trial.</div>
                </header>
                <!-- Form -->
                <div> <?= \Config\Services::validation()->listErrors() ?></div>
                <div id="errorMessages" class="error-messages"></div>
                <form action="/register" method="post" id="registerForm">
                    <div class="account-form__form-row">
                        <label class="form-label">Name*</label>
                        <input class="form-control" type="text" placeholder="Enter your name"  name="name" id="name"/>
                    </div>
                    <div class="account-form__form-row">
                        <label class="form-label">UserName*</label>
                        <input class="form-control" type="text" placeholder="Enter your Username"   name="username" id="username"/>
                    </div>
                    <div class="account-form__form-row">
                        <label class="form-label">Email*</label>
                        <input class="form-control" type="email" placeholder="Enter your email"   name="email"id="email" />
                    </div>
                    <div class="account-form__form-row">
                        <label class="form-label">Phone*</label>
                        <input class="form-control" type="text" placeholder="Enter your phone"   name="phone" id="phone" />
                    </div>
                    <div class="account-form__form-row">
                        <label class="form-label">Password*</label>
                        <div class="input-group">
                            <input class="form-control border-end-0 pe-0" type="password" placeholder="Create a password"   name="pass" id="password" />
                            <span class="input-group-text">
                                <span class="wpi-password_hide"></span>
                            </span>
                        </div>
                        <div class="form-text">Must be at least 8 characters.</div>
                    </div>
                    <div class="account-form__form-row d-grid">
                        <button type="submit" class="btn btn-dark">Signup</button>
                    </div>
                    <div class="account-form__form-row d-grid">
                        <button class="btn btn-outline-dark">
                            <img src="assets/images/g-icon.png" class="me-1" />
                            Sign up with Google
                        </button>
                    </div>
                </form>
                <!-- Form Down -->
                <div class="account-form__form-down">
                    <span class="account-form__form-down-q">Already have an account?</span>
                    <a href="/login">Log in</a>
                </div>
            </div>
        </div>
    </main><!-- End Form and Hero Section -->

    <script src="<?= base_url('assets/js/jquery.min.js')?>"></script>
    <script src="<?= base_url('assets/js/bootstrap.bundle.min.js')?>"></script>
    <script src="<?= base_url('assets/js/wp-custom.js')?>"></script>
<script>
    $(document).ready(function() {
        $('#registerForm').submit(function(e) {
            e.preventDefault(); 
            $('#errorMessages').html('');
            var name = $('#name').val();
        var username = $('#username').val();
        var email = $('#email').val();
        var phone = $('#phone').val();
        var pass = $('#password').val();

        // Perform client-side validation
        var errors = [];

        if (name === '') {
            errors.push('Name is required');
        }

        if (username === '') {
            errors.push('UserName is required');
        }
        if (email === '') {
            errors.push('Email is required');
        }
        if (phone === '') {
            errors.push('phone is required');
        }
        if (pass === '') {
            errors.push('password is required');
        }


        if (errors.length > 0) {
            var errorHtml = '<div class="card error-card"><div class="card-body" style="color: red;"><ul>';
            errors.forEach(function(error) {
                errorHtml += '<li>' + error + '</li>';
            });
            errorHtml += '</ul></div></div>';
            $('#errorMessages').html(errorHtml);
            return false; 
        }
            // Serialize form data
            var formData = $(this).serialize();

            // Send AJAX request
            $.ajax({
                type: 'POST',
                url: $(this).attr('action'),
                data: formData,
                dataType: 'json',
                success: function(response) {
                    // Handle success response
                    console.log(response);
                    if (response.success) {
                    // Optionally, redirect the user to another page after successful registration
                    window.location.href = '<?= base_url('login') ?>';
                } else {
                    var errorHtml = '<div class="card error-card"><div class="card-body" style="color: red;"><ul>';
                    response.errors.forEach(function(error) {
                        errorHtml += '<li>' + error + '</li>';
                    });
                    errorHtml += '</ul></div></div>';
                    $('#errorMessages').html(errorHtml);
                }
                },
                error: function(xhr, status, error) {
                    // Handle error
                    console.error(xhr.responseText);
                }
            });
        });
    });
</script>

  </body>
</html>