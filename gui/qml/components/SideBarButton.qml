import QtQuick 2.0
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15
import "."
import "../style"

Button {
    id: side_bar_button

    property color color: Style.side_bar_icon_color
    property color highlighted_color: Style.side_bar_icon_highlighted_color
    property color pressed_color
    property color disabled_color
    property string icon_text: "\uec45" //icon "rocket"
    property string tooltip_text: qsTr("Apps Launcher")
    property color icon_color
    width: 48
    height: 48
    flat: true
    states: [
        State {
            name: "pressed"
            when: side_bar_button.pressed
            PropertyChanges {
                target: bg
                opacity: 1
            }
            PropertyChanges {
                target: icon
                scale: 0.95
            }
        },
        State {
            name: "hovered"
            when: side_bar_button.hovered
            PropertyChanges {
                target: bg
                opacity: 1
            }
            PropertyChanges {
                target: icon
                scale: 1.1
            }
        }
    ]

    transitions: [
        Transition {
            from: "*"
            to: "*"
            PropertyAnimation {
                target: bg
                property: "opacity"
                easing.bezierCurve: [0.0784, 0.747, 0.201, 0.988, 1, 1]
                duration: 200
            }
            PropertyAnimation {
                target: icon
                property: "scale"
                easing.bezierCurve: [0.27, 0.559, 0.327, 0.828, 1, 1]
                duration: 2000
            }
        },
        Transition {
            reversible: true
            from: "*"
            to: "pressed"
            PropertyAnimation {
                target: icon
                property: "scale"
                easing.bezierCurve: [0.27, 0.559, 0.327, 0.828, 1, 1]
                duration: 200
            }
        }
    ]

    contentItem: Text {
        id: icon
        color: side_bar_button.color
        text: side_bar_button.icon_text
        font.pixelSize: 40
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.centerIn: parent
        font.family: Style.iconFonts
        font.styleName: "Regular"
    }

    background: Rectangle {
        id: bg
        anchors.fill: parent
        opacity: 0
        color: "#262a38"
        radius: 8
        border.width: 0
    }

    ToolTip {
        id: tooltip
        opacity: 0.0
        visible: side_bar_button.hovered
        text: side_bar_button.tooltip_text
        rightPadding: 8
        leftPadding: 8
        y: side_bar_button.height / 2 - height / 2
        x: 70

        enter: Transition {
            PropertyAnimation {
                target: tooltip
                properties: "opacity"
                to: 1.0
                easing.bezierCurve: [0.0763, 0.209, 0.306, 0.937, 1, 1]
                duration: 400
            }
            PropertyAnimation {
                target: tooltip
                properties: "x"
                to: side_bar_button.width + 8
                easing.bezierCurve: [0.237, 0.582, 0.38, 0.923, 1, 1]
                duration: 130
            }
        }
        exit: Transition {
            PropertyAnimation {
                target: tooltip
                properties: "x"
                to: 70
                duration: 130
            }
            NumberAnimation {
                property: "opacity"
                from: 1.0
                to: 0.0
                duration: 130
            }
        }

        contentItem: Text {
            text: tooltip.text
            font: tooltip.font
            color: "#dbdbf0"
        }
        background: Rectangle {
            color: "#1c1e29"
            border.width: 1
            radius: 4
            border.color: "#232535"
        }
    }
}

/*##^##
                                Designer {
                                    D{i:0;formeditorZoom:6}
                                }
                                ##^##*/
