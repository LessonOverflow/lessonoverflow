class Lessonoverflow.Routers.Resources extends Backbone.Router
  routes:
    '': 'index'

  initialize: ->
    @collection = new Lessonoverflow.Collections.Resources
    @collection.fetch()

  index: ->
    view = new Lessonoverflow.Views.ResourcesIndex(collection: @collection)
    $('#container').html(view.render().el)

