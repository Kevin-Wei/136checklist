jQuery.fn.submitOnCheck = ->
  @find('input[type=submit]').remove()
  @find('input[type=checkbox]').click ->
    $(this).parent('form').submit()
  this
  
jQuery ->
  $('.edit_task').submitOnCheck()