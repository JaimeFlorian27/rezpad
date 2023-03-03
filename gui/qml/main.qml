import QtQuick 2.15
import QtQuick.Window 2.15
import "components/pages"

Window {
    width: 1440
    height: 1024
    visible: true
    color: "#161616"
    title: qsTr("Hello Wampi")

    Apps{
    anchors.fill: parent
    }

}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.75}
}
##^##*/
