window.Lessonoverflow =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    new Lessonoverflow.Routers.Resources()

$(document).ready ->
  Lessonoverflow.init()
