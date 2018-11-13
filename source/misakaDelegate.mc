// See AttentionDelegate. I referred that.

using Toybox.WatchUi;
using Toybox.Application;

class misakaDelegate extends WatchUi.InputDelegate {

    function initialize() {
        InputDelegate.initialize();
    }

    // Handle key  events
    function onKey(evt) {
        var app = Application.getApp();
        var key = evt.getKey();
        if (WatchUi.KEY_START == key) {
            app.mainView.incIndex();
        } else if (WatchUi.KEY_ENTER == key) {
            app.mainView.incIndex();
        } else {
            return false;
        }
        WatchUi.requestUpdate();
        return true;
    }

}