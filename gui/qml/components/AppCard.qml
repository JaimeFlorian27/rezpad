import QtQuick 2.0
import QtQuick.Layouts 1.15
Item {
    id: app_card
    width: 280
    height: 200
    states: [
     State {
        name: "pressed"; when: mouseArea.containsPress
        PropertyChanges {target: app_card; scale: 1.05;}
        PropertyChanges {target: gradient_rect; opacity: 0.2;}

        },
      State {
         name: "hovered"; when: mouseArea.containsMouse
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


 Rectangle{
     anchors.fill:parent
     color: "#1A1B24"
     radius: 16
     border.color: "#232535"}

 Rectangle{
     id: gradient_rect
     anchors.fill:parent
     color: "#1A1B24"
     radius: 16
     border.color: "#232535"
     opacity:0.05
     gradient: Gradient{

         stops:[
         GradientStop { position: 1; color: "#e87500" },
             GradientStop { position: 0; color: "#00000000" }
         ]
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
