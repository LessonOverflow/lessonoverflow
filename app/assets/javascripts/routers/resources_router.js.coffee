class Lessonoverflow.Routers.Resources extends Backbone.Router
  routes:
    '': 'index'

  index: ->
    alert "home page"
    l = new Lessonoverflow.Collections.Resources
    l.fetch()
    alert "found #{l.entries} resources in api"
