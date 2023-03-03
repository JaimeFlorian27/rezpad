import QtQuick 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15
import "../"
Page{
    width: 1440
    height: 1024

    Rectangle{
        id: bg
        anchors.fill: parent
        color: "#12131A"


        Text {
            id: text1
            x: 164
            y: 57
            color: "#dbdbf0"
            text: qsTr("Pinned Apps")
            font.pixelSize: 24
        }

        Text {
            id: text2
            x: 183
            y: 448
            color: "#dbdbf0"
            text: qsTr("All Apps")
            font.pixelSize: 24
        }
        Row{
            id: row
            x: 164
            y: 125
            spacing: 24
        AppCard {
            id: appCard

        }
        AppCard {
            id: appCard1

        }

}
    }

}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.66}
}
##^##*/
