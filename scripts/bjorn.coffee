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
#   robot.hear /(hot|heat|warming up)/i
#
# Author:
#  jenniferburkhart

bjorn = [
  "http://www.houstontheatre.com/broadway/bjorn.jpg" 
    # bjorn jogging
  "http://2.bp.blogspot.com/__HQWKX8g3_0/R4et5H7wruI/AAAAAAAAABQ/uDT6xS4gYA4/s320/bjorn.jpg"
    # bjorn smiling close up in color
  "http://i.ytimg.com/vi/BMLd5ndBp1Q/hqdefault.jpg"
    # bjorn smiling in sepia
  "http://userserve-ak.last.fm/serve/252/585866.jpg"
    # bjorn with green background
  "http://media-cache-ak0.pinimg.com/236x/91/ba/a9/91baa94832bbc438a7c1c92d9adcc150.jpg"
    # bjorn jumpsuit
  "http://1.bp.blogspot.com/-hPGxPqJzHak/TbYWlTpvrUI/AAAAAAAAFd0/L3N8My4S0nk/s320/image0001.jpg"
    # bjorn orange old pic
  "http://www.myabbastory.dk/bj_k.jpg"
    # bjorn looking pensive
  "http://1.bp.blogspot.com/_1apys6CkD38/Sqzs1bStVKI/AAAAAAAABXY/f1wEJ2o0EoU/s200/Scannen0001.jpg"
    # bjorn as a card wearing white jumpsuit
  "http://content8.flixster.com/photo/94/92/63/9492630_gal.jpg"
    # bjorn with his dog
  "http://www.hotflick.net/flicks/1979_Abba_-_In_Concert_1979/979AIC_Abba_008.jpg"
    # bjorn looking in a mirror
  "http://4.bp.blogspot.com/-DuXTTPDwy9s/Tbl28AT7r7I/AAAAAAAAADQ/SHLclSUN76g/s1600/21.jpeg"
    # bjorn close up
  ]

module.exports = (robot) ->
  robot.hear /hot|heat|warming up/i, (msg) ->
    msg.send msg.random bjorn