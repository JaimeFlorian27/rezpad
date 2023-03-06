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

        Row{
            x: 164
            y: 66
            spacing: 8
            Text {
                anchors.verticalCenter: parent.verticalCenter
                id: pinned_apps_icon
                color: "#dbdbf0"
                text: qsTr("\uf68d")
                font.pixelSize: 24
                font.family: Fonts.fontTablerIcons.name
            }
            Text {
                id: pinned_apps_text
                color: "#dbdbf0"
                text: qsTr("Pinned Apps")
                font.pixelSize: 24
            }
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
    D{i:0;formeditorZoom:1.25}
}
##^##*/
