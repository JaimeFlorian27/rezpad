import QtQuick 2.0
import QtQuick.Controls 2.15

    Button{
        id: nav_bar_button
        flat: true
        states:[
        State{
                name: "hovered"
                when: nav_bar_button.hovered
                PropertyChanges {
                    target: bg
                    opacity: 1
                }
                PropertyChanges {
                    target: tooltip
                    opacity: 1
                    x: nav_bar_button.width + 8
                }
            }

        ]

        transitions: [
            Transition {
                from: "*"
                to: "*"
                PropertyAnimation{ target: bg ;property: "opacity" ; easing.bezierCurve: [0.0784,0.747,0.201,0.988,1,1];duration: 200 }
                PropertyAnimation{ target: tooltip ;properties: "opacity" ; easing.bezierCurve: [0.0763,0.209,0.306,0.937,1,1];duration: 400 }
                PropertyAnimation{ target: tooltip ;properties: "x" ; easing.bezierCurve: [0.00928,0.908,0.293,0.936,1,1];duration: 200 }

            }
        ]


        anchors.horizontalCenter: parent.horizontalCenter


        contentItem:             Image {
            id: icon
            source: "../../resources/tabler-icon-rocket.svg"
        }


        background: Rectangle{
            id: bg
            anchors.fill: parent
            opacity: 0
            color:"#262a38" ; radius: 8;border.width: 0}


        ToolTip{
            id: tooltip
            opacity: 0.0
            visible: nav_bar_button.hovered
            text: qsTr("Apps Launcher")
            rightPadding: 8
            leftPadding: 8
            y : nav_bar_button.height/2 - height/2
            x: 100
            contentItem: Text {
                text: tooltip.text
                font: tooltip.font
                color: "#dbdbf0"
            }
            background: Rectangle
            {
                color: "#1c1e29"
                border.width: 1
                radius: 4
                border.color: "#232535"
            }
        }

    }




/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.66;height:480;width:640}
}
##^##*/
