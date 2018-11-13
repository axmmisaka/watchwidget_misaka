// See AttentionApp. I referred that.

using Toybox.Application;

class misakaApp extends Application.AppBase {
	var mainView;
    var mainDelegate;

    function initialize() {
        AppBase.initialize();
    }

    // onStart() is called on application start up
    function onStart(state) {
    }

    // onStop() is called when your application is exiting
    function onStop(state) {
    }

    // Return the initial view of your application here
    function getInitialView() {
        mainView = new misakaView();
        mainDelegate = new misakaDelegate();
        return [mainView, mainDelegate];
    }

}