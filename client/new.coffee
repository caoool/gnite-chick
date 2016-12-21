Template.new.events
  'click button': (e) ->
    Chicken.insert message: $('textarea').val()
