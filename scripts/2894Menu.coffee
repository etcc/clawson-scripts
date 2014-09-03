# Description:
#   East Troy's 2894 On Main cafe [Food] menu for Hubot.
#
# Dependencies:
#   "cheerio: "0.7.0"
#
# Configuration:
#   None
#
# Commands:
#   hubot (breakfast|lunch|full) menu - displays this weeks menu
#
# Author:
#   bkeating

cheerio = require('cheerio')

module.exports = (robot) ->
  robot.hear /(breakfast|lunch|full) menu/i, (msg) ->
    name = msg.match[1].trim()
    menu(msg, name)

menu = (msg, name) ->
  msg
    .http("https://s3.amazonaws.com/bpk-disk/2894Menu.html")
    .header("Mozilla/1.22 (compatible; MSIE 2.0; Windows 3.1)")
    .get() (err, res, body) ->
      msg.send "#{getMenu body,name}"

getMenu = (body, name) ->
  $ = cheerio.load(body,  {ignoreWhitespace: false })

  weekOf = $('h2').text()

  # Count how many items each menu has
  breakfastCount = $('#breakfast').children().length
  lunchCount = $('#lunch').children().length

  if name == "breakfast"
    itemArray = $('#breakfast').find('tr')

  else if name == "lunch"
    itemArray = $('#lunch').find('tr')

  else if name == "full"
    itemArray = $('body').find('table tr')

  # Slack will beautify lines prepended with a greater-than symbol
  menuResult = itemArray.text().replace(/(.+)/g, "> $1")

  "Cafe menu for the #{weekOf}: \n#{menuResult}"

  # Pick a random item from the selected menu
  #randItemNum = Math.floor(Math.random() * itemArray.length)
  #randItem = itemArray.get(randItem)
