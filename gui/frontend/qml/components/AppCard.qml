import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
Button {

    property string app_name : "Blender"
    property string app_version : "3.4.2"
    property string app_icon_path : "../../resources/blender_logo.png"
    property color gradient_color : "#fca103"
    id: app_card
    implicitWidth: 280
    implicitHeight: 200
    states: [
     State {
        name: "pressed"; when: app_card.pressed
        PropertyChanges {target: app_card; scale: 1.05;}
        PropertyChanges {target: gradient_rect; opacity: 0.2;}

        },
      State {
         name: "hovered"; when: app_card.hovered || app_card.visualFocus
         PropertyChanges {target: app_card; scale: 1.1;}
         PropertyChanges {target: gradient_rect; opacity: 0.3;}

         }


 ]


     transitions: [
         Transition {
             from: "*"
             to: "*"


             NumberAnimation {
                 target: app_card
                 property: "scale"
                 duration: 200
                 easing.type: Easing.OutExpo
             }


                 NumberAnimation {
                     target: gradient_rect
                     property: "opacity"
                     easing.bezierCurve: [0.0845,0.793,0.542,0.963,1,1]
                     duration: 500
                     //easing.type: Easing.OutExpo
                 }



               }


     ]


 background: Rectangle{
     anchors.fill:parent
     color: "#1A1B24"
     radius: 16
     border.color: "#232535"
     Image {
         anchors.fill: parent
         id: bg_image
         opacity: 0.02
         sourceSize.height: parent.height
         sourceSize.width: parent.width
     source: "../../resources/blender_logo.png"
     antialiasing: true
     fillMode: Image.PreserveAspectFit
     asynchronous: true
     }
 }

 Rectangle{
     id: gradient_rect
     anchors.fill:parent
     color: "#1A1B24"
     radius: 16
     border.color: "#232535"
     opacity:0.05
     gradient: Gradient{
         stops:[
         GradientStop { position: 1; color : gradient_color },
             GradientStop { position: 0; color: "#00000000" }
         ]
     }
 }


ColumnLayout {
    id: columnLayout
    anchors.centerIn: parent
    anchors.horizontalCenter: parent.horizontalCenter
    Row{
        id: row
        spacing: 4
        Component.onCompleted: {width = childrenRect.width}
        Image {
            id: icon
            anchors.verticalCenter: parent.verticalCenter
            source: "../../resources/blender_logo.png"
            sourceSize.height: 40
            sourceSize.width: 40
            asynchronous: true
        }
        Text {
            width: 200
            id: app_name_text
            color: "#dbdbf0"
            text: app_name
            font.pixelSize: 40
            wrapMode: Text.Wrap
            horizontalAlignment: Text.AlignHCenter
            elide: Text.ElideRight
            maximumLineCount : 2
            
            Component.onCompleted: {width = contentWidth}

        }
    }

    Text {
        id: app_version
        color: "#dbdbf0"
        text: qsTr("3.4.2")
        font.pixelSize: 20
        Layout.alignment: Qt.AlignHCenter
        horizontalAlignment: Text.AlignHCenter
    }
}

//  MouseArea{
//      id: mouseArea
//      anchors.fill: parent
//      hoverEnabled: true
//  }

}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.66}
}
##^##*/
