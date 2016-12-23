Template.main.events


Template.main.helpers
  chicken: ->
    Chicken.find
      sent: true
    , sort: sent_at: -1
