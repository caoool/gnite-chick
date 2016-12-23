SyncedCron.config
    log: false


SyncedCron.add
  name: 'cron'
  schedule: (parser) ->
    return parser.text 'every 2 seconds'
  job: () ->
    # console.log 'sent'
    # Chicken.insert
    #   message: 'I love you'
    #   sent: false


Meteor.startup ->
  SyncedCron.start()
