$("#add_place").on "keypress", (e) ->
  $(this).submit()  if e.keyCode is 13