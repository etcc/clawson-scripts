# Description:
#   Bjorn is hot
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   robot.hear /hot | heat \ warming up/i
#
# Author:
#  jenniferburkhart

bjorn = [
  "http://www.houstontheatre.com/broadway/bjorn.jpg"
  "http://2.bp.blogspot.com/__HQWKX8g3_0/R4et5H7wruI/AAAAAAAAABQ/uDT6xS4gYA4/s320/bjorn.jpg"
  "http://i.ytimg.com/vi/BMLd5ndBp1Q/hqdefault.jpg"
  "http://userserve-ak.last.fm/serve/252/585866.jpg"
  "http://media-cache-ak0.pinimg.com/236x/91/ba/a9/91baa94832bbc438a7c1c92d9adcc150.jpg"
  ]

module.exports = (robot) ->
  robot.hear /hot | heat | warming up/i, (msg) ->
    msg.send msg.random bjorn
