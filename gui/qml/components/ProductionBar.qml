import QtQuick 2.15
import QtQuick.Controls 2.15
import "../style"
import QtGraphicalEffects 1.15

Button {
    id: production_bar
   height: childrenRect.height
   width: childrenRect.width

   states:
    [

       State{
        name:"hovered"
        when: production_bar.hovered
        PropertyChanges {
            target: production_bar
            scale: 1.02
        }
        PropertyChanges {
            target: bg_gradient
            opacity: 0.10
        }
        PropertyChanges {
            target: shadow
            radius: 12.0
            verticalOffset: 4
        }
        PropertyChanges {
            target: chevron_transform
            y:2
        }
       }
   ]

   transitions:[
        Transition{
            from: "*"
            to: "*"

            PropertyAnimation{
                targets: [bg_gradient, production_bar, chevron_transform, shadow]
                properties: "opacity, scale, y, verticalOffset, radius"
                easing.bezierCurve: [0.149,0.786,0.567,0.93,1,1]
                duration: 300
            }
            PropertyAnimation{
                target: chevron_transform
                property: "y"
                easing.bezierCurve: [0.149,0.786,0.567,0.93,1,1]
                duration: 2000
            }
            }
]


    background: Rectangle
    {
        id: bg
        anchors.fill: parent
        border.color: "#232535"
        border.width: 1
        color: "#191B26"
        radius: height/2
    }
    DropShadow {
            id: shadow
            anchors.fill: bg
            horizontalOffset: 0
            verticalOffset: 3
            radius: 4.0
            samples: 17
            color: "#40000000"
            source: bg
            cached: true
        }

    Rectangle
    {
        id: bg_gradient
        opacity: 0.2
        anchors.fill: text_layout
        radius: height/2
        gradient: Gradient{

            GradientStop{color: "#000000"; position: 0}
            GradientStop{color: "#23253500"; position: 1 }
        }
    }

    Row{
        id: text_layout
        spacing: 8
        leftPadding: 32
        rightPadding: 32
        topPadding: 6
        bottomPadding: 6

        Text {
            id: production_text
            text: qsTr("Production:")
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 16
            color: Style.text_color
        }
        Text {
            id: production_name_text
            text: qsTr("Minecraft, The musical")
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 16
            color: Style.text_color
        }
        Text {
            transform: Translate{
                id: chevron_transform
                y: 0
                //used for hovering animation

            }
            id: chevron_icon
            text: qsTr("\uea5f")
            anchors.verticalCenter: parent.verticalCenter //chevron-down icon
            font.pixelSize: 20

            font.family: Style.iconFonts
            color: Style.text_color
        }
    }


}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.33}
}
##^##*/
