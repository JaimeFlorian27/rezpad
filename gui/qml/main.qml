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

    Row{
        id: row
    width: parent.width
    height: parent.height
    clip: false

    SideBar{
        id: side_bar
    }
    Apps{
    }



}
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.5}
}
##^##*/
