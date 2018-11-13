using Toybox.WatchUi;
using Toybox.Graphics;
using Toybox.Application;

class misakaView extends WatchUi.View {

var picList;
var selectedIndex = 0;
var maxIndex = 1;
    function initialize() {
        View.initialize();
        picList = [WatchUi.loadResource( Rez.Drawables.fubuki ),
        		   WatchUi.loadResource( Rez.Drawables.misaka )];
        
    }

    // Load your resources here
    function onLayout(dc) {
    }

    // Called when this View is brought to the foreground. Restore
    // the state of this View and prepare it to be shown. This includes
    // loading resources into memory.
    function onShow() {
    }

    // Update the view
    function onUpdate(dc) {
        // Call the parent onUpdate function to redraw the layout
        dc.setColor(Graphics.COLOR_BLACK, Graphics.COLOR_BLACK);
        dc.fillRectangle(0, 0, dc.getWidth(), dc.getHeight());
        dc.drawBitmap(0,0,picList[selectedIndex]);
    }

    // Called when this View is removed from the screen. Save the
    // state of this View here. This includes freeing resources from
    // memory.
    function onHide() {
    }

	// Decrement the currently selected option index
    function incIndex() {
        if (null != selectedIndex) {
            selectedIndex += 1;
            if (maxIndex < selectedIndex) {
                selectedIndex = 0;
            }
        }
    }

    // Decrement the currently selected option index
    function decIndex() {
        if (null != selectedIndex) {
            selectedIndex -= 1;
            if (0 > selectedIndex) {
                selectedIndex = maxIndex;
            }
        }
    }
}