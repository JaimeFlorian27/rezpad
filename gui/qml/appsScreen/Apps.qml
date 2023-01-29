import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtGraphicalEffects 1.15
import "../components"

Page{
    width: 771
    height: 451
    Rectangle {
        id: rectangle

        anchors.fill: parent
        color: "#161616"
        border.width: 0
        ColumnLayout {
            id: columnLayout
            anchors.fill:parent
            anchors.topMargin: 16
            spacing: 16
            anchors.rightMargin: 16
            anchors.leftMargin: 16
            anchors.bottomMargin: 16


            Text {
                id: text1
                color: "#ffffff"
                text: qsTr("Apps")
                font.pixelSize: 18
                horizontalAlignment: Text.AlignHCenter
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            }
            Rectangle {
                id: frame
                Layout.fillHeight: true
                Layout.fillWidth: true
                color: "#0E0E0E"
                radius: 16
                clip: true

                StackView {
                    id: stackView
                    anchors.fill: parent
                    anchors.rightMargin: 16
                    anchors.leftMargin: 16
                    anchors.bottomMargin: 16
                    anchors.topMargin: 16

                    Flickable {
                        id: scrollView
                        x: 0
                        y: 0
                        anchors.fill: parent
                        contentHeight: height*2
                        onContentYChanged: {

                            // I need to ignore the logic if there is vertical overshoot as the velocity get inversed when coming
                            // out of the overshoot and it will behave as if it was scrolling to the opposite side.

                            verticalOvershoot == 0 ? (verticalVelocity > 0 ? filterBar.visible = false : filterBar.visible = true) : true
                        }



                        Rectangle {
                            id: rectangle1
                            x: 9
                            y: 50
                            width: 160
                            height: 160
                            color: "#00ffffff"
                            Rectangle{
                                id : testbg
                                anchors.fill : parent
                                color: "#1b1b1b"
                                radius: 8
                            }
                            DropShadow {
                                anchors.fill: parent
                                horizontalOffset: 0
                                verticalOffset: 3
                                radius: 8.0
                                samples: 16
                                color: "#40000000"
                                source: testbg
                                cached: true
                            }
                        }


                    }
                    FilterBar {
                        id: filterBar
                        x: 8
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.rightMargin: 0
                        anchors.leftMargin: 0

                    }
                }


            }
        }


    }
}




/*##^##
Designer {
    D{i:0;formeditorZoom:0.66}D{i:5}
}
##^##*/
