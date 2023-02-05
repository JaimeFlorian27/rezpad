import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtGraphicalEffects 1.15
import "../components"

Page{
    id: root
    width: 784
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
                    anchors.bottomMargin: 16
                    anchors.topMargin: 16
                    anchors.rightMargin: 16
                    anchors.leftMargin: 16

                    Flickable {
                        id: flickable
                        anchors.fill: parent
                        contentHeight: gridflow.childrenRect.height +56 > height ? gridflow.childrenRect.height + 56 : height
                        onContentYChanged: {

                            // I need to ignore the logic if there is vertical overshoot as the velocity get inversed when coming
                            // out of the overshoot and it will behave as if it was scrolling to the opposite side.

                            verticalOvershoot == 0 ? (verticalVelocity > 0 ? filterBar.state = "hidden": filterBar.state = "") : true
                        }
                        ScrollBar.vertical: ScrollBar {
                            x: 705
                            width: 8
                        }

                        Flow {
                            id: gridflow
                            anchors.left: parent.left
                            anchors.right: parent.right
                            anchors.top: parent.top
                            anchors.bottom: parent.bottom
                            topPadding: filterBar.height + 16
                            flow: Flow.LeftToRight
                            rightPadding: 16
                            leftPadding: 16
                            //anchors.fill: parent
                            spacing: 74

                            SequentialAnimation{
                                running: true

                                PropertyAction{target: flickable; property: "enabled"; value: false}
                                PropertyAction{target: gridflow; property: "opacity"; value: 0.0}

                                PauseAnimation {duration: 700}

                                PropertyAction{target: flickable; property: "enabled"; value: true}
                                ParallelAnimation{
                                    PropertyAnimation{target: gridflow; duration:800; property:"opacity"; easing.bezierCurve: [0.00722,0.0364,0.483,1.03,1,1]; to: 1}
                                }
                            }
                            move:Transition{
                                SequentialAnimation{
                                    PropertyAnimation { easing.bezierCurve: [0.623,0.0329,0.221,1,1,1];properties: "x,y"; duration :400;}
                                }
                            }
                                    Repeater{
                                    model:26
                                    delegate:
                                  Rectangle {
                                    id: rectangle1
                                    width: 160
                                    height: 160
                                    color: "#00000000"

                                    Layout.alignment: Qt.AlignHCenter | Qt.AlignTop

                                    Rectangle{
                                        anchors.fill : parent
                                        id: testbg
                                        color: "#2b2b2b"
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



                        }




                    }

                    FilterBar {
                        id: filterBar
                        x: -16
                        y: 0
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
    D{i:0;formeditorZoom:0.75}
}
##^##*/
