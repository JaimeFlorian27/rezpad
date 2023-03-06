import QtQuick 2.15
import QtQuick.Window 2.15
import "components/pages"
import "components"

Window {
    width: 1440
    height: 1024
    visible: true
    color: "#12131A"
    title: qsTr("Hello Wampi")

    Row{
        id: row
    anchors.fill:parent
    clip: true

    SideBar{
        id: side_bar
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: -width/2
    }
    Apps{
        anchors.left: parent.left
        anchors.leftMargin: side_bar.width/2
    }



}
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.66}
}
##^##*/
