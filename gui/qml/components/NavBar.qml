import QtQuick 2.0
import QtQuick.Controls 2.15
import "."
Item {
    id: nav_bar
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
        width: nav_bar.width/2
        height: nav_bar.height - anchors.topMargin
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.topMargin: 172
        anchors.rightMargin: 0

        NavBarButton{
            anchors.horizontalCenter: column.horizontalCenter
        }
    }

    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.1}
}
##^##*/
