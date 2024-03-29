const toastBtn = document.querySelector('.toast-btn');
const toastContent = document.querySelector('.toast');

if(toastBtn){
    const toastBootstrap = bootstrap.Toast.getOrCreateInstance(toastContent)
    toastBtn.addEventListener('click', function(){
        toastBootstrap.show();
    })
}

$( document ).ready(function() {

    $('.hero-carousel').owlCarousel({
        loop:true,
        margin:10,
        nav:true,
        items:1
    })
    
    $('.audio-carousel').owlCarousel({
        margin:20,
        nav:true,
        stagePadding: 50,
        autoWidth:true,
        responsive:{
            0:{
                items:1
            },
            768:{
                items:2
            },
            992:{
                items:3
            },
            1200:{
                items:3
            },
            1400:{
                items:4
            }
        }
    });
    
    $('.video-carousel').owlCarousel({
        margin:20,
        nav:true,
        stagePadding: 50,
        autoWidth:true,
        responsive:{
            0:{
                items:1
            },
            768:{
                items:2
            },
            992:{
                items:3
            },
            1200:{
                items:3
            },
            1400:{
                items:4
            }
        }
    })
    
    $('.tag-carousel').owlCarousel({
        margin:10,
        autoWidth:true,
        nav: true,
        items:4
    })
    
    $('.toggle-action').click(function(){
        $('.wp-overlay').show();
        // $('.wp-container__sidebar').show();
        $('.wp-container__sidebar').css('transform', 'translateX(0)');
    });
    
    $('.toggle-menu').click(function(){
        $('.wp-overlay').show();
        // $('.wp-container__left-nav').show();
        $('.wp-container__left-nav').css('transform', 'translateX(0)');
    })
    
    $('.close-nav').click(function(){
        $('.wp-overlay').hide();
        // $('.wp-container__left-nav').hide();
        $('.wp-container__left-nav').css('transform', 'translateX(-100%)');
    })
    
    $('.close-sidebar').click(function(){
        $('.wp-overlay').hide();
        $('.wp-container__sidebar').css('transform', 'translateX(100%)');
    });

    $('.user__notification').click(function(){
        $('.notification').css('transform', 'translateX(0)');
    })

    $('.close-notification').click(function(){
        $('.notification').css('transform', 'translateX(100%)');
    })
    
});

// // Fetch all the forms we want to apply custom Bootstrap validation styles to
// const forms = document.querySelectorAll('.needs-validation')

// // Loop over them and prevent submission
// Array.from(forms).forEach(form => {
// form.addEventListener('submit', event => {
//     if (!form.checkValidity()) {
//     event.preventDefault()
//     event.stopPropagation()
//     }

//     form.classList.add('was-validated')
// }, false)
// });
