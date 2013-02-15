window.Lessonoverflow =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    new Lessonoverflow.Routers.Resources()
    Backbone.history.start()

$(document).ready ->
  Lessonoverflow.init()
