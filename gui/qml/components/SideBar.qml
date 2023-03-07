import QtQuick 2.0
import QtQuick.Controls 2.15
import "."
import "../style"
Item {
    id: side_bar
    width: 80
    height: 1024
    clip: true

    Rectangle{
        id: bg
    color: "#15171F"
    radius: 24
    border.color: "#232535"
    border.width: 1
    anchors.fill: parent
    anchors.leftMargin: -80
    }

    Column{
        id: column
        width: side_bar.width/2
        height: side_bar.height - anchors.topMargin
        anchors.horizontalCenter: side_bar.horizontalCenter
        anchors.top: side_bar.top
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


