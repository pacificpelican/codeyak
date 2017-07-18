App.room = App.cable.subscriptions.create "RoomChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    $('textarea#msg_content').val("")
    $('.content-holder').append("<span class='single_msg'>" + data.content + "</span><span class='single_msg_metadata'>sent: " + data.servertime + " by " + data.sender + "</span>")
    # Called when there's incoming data on the websocket for this channel
