Meteor.startup ->
  if Chicken.find().count() == 0
    fs = Npm.require 'fs'
    stuff = fs.readFileSync(process.env.PWD + '/server/log').toString()
    array = stuff.split '\n'
    array.pop()
    for item in array
      item = JSON.parse item
      Chicken.insert
        message: item.message
        sent: true
        sent_at: item.timestamp
