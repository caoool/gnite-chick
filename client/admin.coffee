Template.admin.onCreated ->
  Session.setDefault 'filter', false


Template.admin.events
  'click #add': (e) ->
    console.log 'hahaha'
    Chicken.insert
      message: $('textarea').val()
      sent: false
      created_at: new Date()

  'click #new': (e) ->
    Session.set 'filter', false

  'click #log': (e) ->
    Session.set 'filter', true


Template.admin.helpers
  chicken: ->
    Chicken.find
      sent: Session.get 'filter'
    , sort: created_at: -1
