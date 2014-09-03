# Description:
#   Generates a QR Code from a string you provide
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot qr me <url> - returns a url to a qr code image.
#
# Author:
#   Ben Keating

module.exports = (robot) ->
  robot.respond /qr (.*)/i, (msg) ->
    url = escape(msg.match[1])
    msg.send "http://api.qrserver.com/v1/create-qr-code/?data=#{url}&size=300x300"
