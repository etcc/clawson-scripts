# Description:
#   Hubot was just sitting there, chatting and... fhritp
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   The following phrases will be listened for and responded to:
#
#   "dhitb"
#   "fhritb"
#   "fhritp"
#   "maybe that's what i'll do"
#
# Author:
#   Ben Keating

module.exports = (robot) ->
  robot.hear /fhritp|fhritb|dhitb|maybe that\'s what i\'ll do|maybe thats what ill do/i, (msg) ->
    url = escape(msg.match[1])
    msg.send "http://bpk-disk.s3.amazonaws.com/fhritp.png"
