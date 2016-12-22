Template.main.events
  'click button': (e) ->
    e.preventDefault()
    console.log 'clicked'


Template.main.helpers
  chicken: ->
    Chicken.find()
