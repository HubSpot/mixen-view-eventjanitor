Mixen View Event Janitor
======================== 

A class which you can use with [Mixen](https://github.com/HubSpot/Mixen) to cleanup events
when you destroy Backbone subviews.

Usage
-----

```coffeescript
class MyView extends Mixen(EventJanitor, Backbone.View)
  render: ->
    subview = new OtherAwesomeView()

    @rememberView subview
```

When `undelegateEvents` gets called on the view, it will call `stopListening` on all the
registered subviews.
