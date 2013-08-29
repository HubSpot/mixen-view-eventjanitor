class EventJanitor
  rememberView: (view) ->
    @views ?= []
    @views.push view
    view

  undelegateEvents: ->
    @stopListening()

    if @views?
      for view in @views
        view.stopListening()

if typeof define is 'function' and define.amd
  # AMD
  define -> EventJanitor
else if typeof exports is 'object'
  # Node
  module.exports = EventJanitor
else
  # Global
  if not window.Mixen
    throw new Error "Mixen must be defined before including a mixin"

  window.Mixen.View ?= {}
  window.Mixen.View.EventJanitor = EventJanitor
