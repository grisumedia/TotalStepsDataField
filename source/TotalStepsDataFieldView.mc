import Toybox.Activity;
import Toybox.Lang;
import Toybox.Time;
import Toybox.WatchUi;
using Toybox.ActivityMonitor;
using Toybox.WatchUi;

class TotalStepsDataFieldView extends WatchUi.SimpleDataField {

    // Set the label of the data field here.
    function initialize() {
        SimpleDataField.initialize();
        label = WatchUi.loadResource(Rez.Strings.Label);
    }

    // The given info object contains all the current workout
    // information. Calculate a value and return it in this method.
    // Note that compute() and onUpdate() are asynchronous, and there is no
    // guarantee that compute() will be called before onUpdate().
    function compute(info as Activity.Info) as Numeric or Duration or String or Null {

        // get ActivityMonitor info
        var activityMonitorInfo = ActivityMonitor.getInfo();

        var steps = activityMonitorInfo.steps;
        return steps;
    }

}