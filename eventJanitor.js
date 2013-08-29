(function() {
  var EventJanitor, _base;

  EventJanitor = (function() {
    function EventJanitor() {}

    EventJanitor.prototype.rememberView = function(view) {
      if (this.views == null) {
        this.views = [];
      }
      this.views.push(view);
      return view;
    };

    EventJanitor.prototype.undelegateEvents = function() {
      var view, _i, _len, _ref, _results;
      this.stopListening();
      if (this.views != null) {
        _ref = this.views;
        _results = [];
        for (_i = 0, _len = _ref.length; _i < _len; _i++) {
          view = _ref[_i];
          _results.push(view.stopListening());
        }
        return _results;
      }
    };

    return EventJanitor;

  })();

  if (typeof define === 'function' && define.amd) {
    define(function() {
      return EventJanitor;
    });
  } else if (typeof exports === 'object') {
    module.exports = EventJanitor;
  } else {
    if (!window.Mixen) {
      throw new Error("Mixen must be defined before including a mixin");
    }
    if ((_base = window.Mixen).View == null) {
      _base.View = {};
    }
    window.Mixen.View.EventJanitor = EventJanitor;
  }

}).call(this);
