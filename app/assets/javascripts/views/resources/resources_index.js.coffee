class Lessonoverflow.Views.ResourcesIndex extends Backbone.View

  template: JST['resources/index']

  initialize: ->
    # this means context binding for function
    @collection.on('reset', @render, this)

  render: ->
    $(@el).html(@template(collection: @collection))
    this