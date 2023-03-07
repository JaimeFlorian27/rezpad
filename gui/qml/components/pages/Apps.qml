import QtQuick 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15
import "../"
import "../../style"
Page{
    width: 1440
    height: 1024

    Rectangle{
        id: bg
        anchors.fill: parent
        color: Style.bg_color

        Row{
            x: 164
            y: 66
            spacing: 8
            Text {
                anchors.verticalCenter: parent.verticalCenter
                id: pinned_apps_icon
                color: Style.green
                text: qsTr("\uf68d") //pin icon
                font.pixelSize: 24
                font.family: Style.iconFonts
            }
            Text {
                id: pinned_apps_text
                color: Style.text_color
                text: qsTr("Pinned Apps")
                font.pixelSize: 24
            }
        }

        Row{
            x: 164
            y: 430
            spacing: 8
            Text {
                anchors.verticalCenter: parent.verticalCenter
                id: all_apps_icon
                color: Style.text_color
                text: qsTr("\uf1f5")
                font.pixelSize: 24
                font.family: Style.iconFonts
            }
            Text {
                id: all_apps_text
                color: "#dbdbf0"
                text: qsTr("All Apps")
                font.pixelSize: 24
            }
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
    D{i:0;formeditorZoom:0.5}
}
##^##*/
