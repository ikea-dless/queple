ready = ->
  $('.ui.radio.checkbox')
    .checkbox()

$(document).ready(ready)
$(document).on('page:load', ready)