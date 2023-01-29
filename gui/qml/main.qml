import QtQuick 2.15
import QtQuick.Window 2.15
import "appsScreen"

Window {
    width: 771
    height: 451
    visible: true
    color: "#161616"
    title: qsTr("Hello World")

    Apps {
        id: apps
        anchors.fill: parent
    }



}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.75}
}
##^##*/
