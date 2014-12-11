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
#   robot.hear /\bhot\b|\bheat(ing|er)?\b|warming up|\bhawt\b/i
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
    # bjorn spaceman
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
  "http://www.quotessays.com/images250_/bjorn-ulvaeus-2.jpg"
    # bjorn o face
  "http://www.abbainfo.se/bjorn.jpg"
    # bjorn of the 80s
  "http://koti.mbnet.fi/~abba/bjorn.jpg"
    # bjorn just got a haircut
      "http://3.bp.blogspot.com/_JVlNogttTBA/TQp5R7NDwjI/AAAAAAAABPs/vzJJoaNh7F0/s1600/bjorn%20doc%202%20bravo.jpg"
    # bjorn looking at you
  "http://4.bp.blogspot.com/-BoSFRxPXfJ0/UTzd6S-SIII/AAAAAAAABVk/V3UVg2H6exw/s1600/bjorn+ulvaeus.jpg"
    # bjorn in stripes
  "https://i1.ytimg.com/vi/HkQnkbGKJTQ/hqdefault.jpg"
    # bjorn sitting back in white
  "http://www.virtualgaz.com/bjornlive.gif"
    # bjorn playing guitar wearing gold
  "http://www.concertphotos.uk.com/abba/0271_ABBA_1979_11_09_Wembley/0272f24thBjornUlvaeus.jpg"
    # bjorn singing
  "http://www.hotflick.net/flicks/1979_Abba_-_In_Concert_1979/979AIC_Abba_078.jpg"
    # bjorn laughing on stage
  "http://1.bp.blogspot.com/-qCXER4uKTwY/UZozYW4m-4I/AAAAAAAADJU/jlRJlGP1dTg/s320/20-05-2013+15;35;16.jpg"
    # bjorn in white with black socks
  "http://1.bp.blogspot.com/-V6nWa7mKQsY/T4LjG7b33KI/AAAAAAAABWM/yrVWn3Ksvhk/s320/ABBA_IN_JAPAN-66.jpg"
    # bjorn laughing
  "http://i.ytimg.com/vi/ERjnrm2fV48/0.jpg"
    # bjorn in purple
  "http://abbararites.wz.cz/other/photos/bjorn.jpg"
    # bjorn being interviewed
  ]

module.exports = (robot) ->
  robot.hear /\bhot\b|\bheat(ing|er)?\b|warming up|\bhawt\b/i, (msg) ->
    msg.send msg.random bjorn