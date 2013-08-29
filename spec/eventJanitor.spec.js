(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  describe('EventJanitor', function() {
    return it('should be defined', function() {
      var MyThing, _ref;
      return MyThing = (function(_super) {
        __extends(MyThing, _super);

        function MyThing() {
          _ref = MyThing.__super__.constructor.apply(this, arguments);
          return _ref;
        }

        return MyThing;

      })(Mixen(Mixen.View.EventJanitor));
    });
  });

}).call(this);
