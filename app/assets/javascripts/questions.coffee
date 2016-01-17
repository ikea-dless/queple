ready = ->
  $('.ui.form .ui.dropdown')
    .dropdown()

$(document).ready(ready)
$(document).on('page:load', ready)