var ready;
ready = function() {

  $('.food-info-headline').on('click', function(){
    $(this).next('.food-info-details').slideToggle('slow')
  });

};

$(document).ready(ready);
$(document).on('page:load', ready);
