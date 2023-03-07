import QtQuick 2.0
import QtQuick.Controls 2.15
import "."
import "../style"
Item {
    id: side_bar
    width: 160
    height: 1024

    Rectangle{
        id: rectangle
    anchors.fill: parent
    color: "#15171F"
    radius: 24
    border.color: "#232535"
    border.width: 1

    Column{
        id: column
        width: side_bar.width/2
        height: side_bar.height - anchors.topMargin
        anchors.right: parent.right
        anchors.top: parent.top
        spacing: 20
        anchors.topMargin: 172
        anchors.rightMargin: 0

        SideBarButton{
            anchors.horizontalCenter: column.horizontalCenter
            color: Style.side_bar_icon_highlighted_color
        }

        SideBarButton{
            anchors.horizontalCenter: column.horizontalCenter
            icon_text: "\uf561" // box-seam icon
            tooltip_text: "Packages"
        }

        SideBarButton{
            anchors.horizontalCenter: column.horizontalCenter
            icon_text: "\uf2c9" // packages icon
            tooltip_text: "Suites"
        }
    }

    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.1}
}
##^##*/
