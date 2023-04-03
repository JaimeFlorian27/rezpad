import QtQuick 2.15
import QtQuick.Window 2.15
import "components/pages"
import "components"
import "./style"

Window {
    width: 1440
    height: 1024
    visible: true
    color: Style.bg_color
    title: qsTr("mdkAppLauncher")


    Apps{
        anchors.fill:parent
        id: apps_screen
        anchors.leftMargin: side_bar.width
    }

    SideBar{
        id: side_bar
        anchors.top: parent.top
        anchors.bottom: parent.bottom

    }


}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.5}
}
##^##*/
