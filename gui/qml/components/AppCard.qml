import QtQuick 2.0
import QtQuick.Layouts 1.15
Item {
    id: item1

    width: 280
    height: 200

    states: [
        State {
            name: "hovered"; when: mouseArea.containsMouse
            PropertyChanges {
                target: object

            }
            },
         State {
            name: "default"; when: !mouseArea.containsMouse
            PropertyChanges {
                target: object

            }
            }
    ]
    Rectangle{
        anchors.fill:parent
        color: "#1A1B24"
        radius: 16
        border.color: "#232535"

        gradient: Gradient{

            GradientStop { position: 1; color: "#12e87500" }
            GradientStop { position: 0; color: "#00ff0000" }
        }
    }

    Column {
        id: columnLayout
        anchors.centerIn: parent

        Text {
            id: app_name
            color: "#dbdbf0"
            text: qsTr("Blender")
            font.pixelSize: 40
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Text {
            id: app_version
            color: "#dbdbf0"
            text: qsTr("3.4.2")
            font.pixelSize: 20
            horizontalAlignment: Text.AlignHCenter
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

    MouseArea{
        id: mouseArea
        anchors.fill: parent
        hoverEnabled: true
    }

}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.5}
}
##^##*/
