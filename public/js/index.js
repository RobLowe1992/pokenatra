//jQuery variables
$pokemon = $('.pokemon');

// jQuery event listeners
$(function() {
    $pokemon.click(function() {
        setTimeout(function() {
            $('body').css('background-color','blue');
        }, 1000);

    });
});

// jQuery Methods
$pokemon.css('cursor','pointer');