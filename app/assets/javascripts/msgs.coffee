# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'turbolinks:load', ->
  class msg
    content: "codeYak"

  msg1 = new msg  
    
  $('span#main_msg_title').text(msg1.content)
    
  $('body').on 'click', 'button#inp-btn', ->
    user1 = $('input.text_in_2').val()
    timeTwelve = Date.now()
    msg2content = $('input#chat-input').val()
    console.log(msg2content)
