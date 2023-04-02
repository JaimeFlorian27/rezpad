import QtQuick 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15
import "../"
import "../../style"

Page {
    id: page
    width: 1360
    height: 1024
    Rectangle {
        id: bg
        anchors.fill: parent
        color: Style.bg_color
    }
    Flickable{
        id: flickable
        anchors.fill: parent
        maximumFlickVelocity: 3000
        contentHeight: contentItem.childrenRect.height + main_column.anchors.topMargin*2
        anchors.rightMargin: 0
        anchors.leftMargin: 0
        flickableDirection: Flickable.VerticalFlick
        onContentYChanged: {
            //flickable.verticalOvershoot != 0 ? true : flickable.verticalVelocity >0 ?
            //(production_bar.state == "hidden" ? true : production_bar.state ="default") :true
        }

    ColumnLayout {
        id: main_column
        width: 1232
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.rightMargin: 64
        anchors.leftMargin: 64
        anchors.topMargin: 64
        spacing: 80


        Column {
            id: pinned_apps_column
            Layout.fillWidth: true
            height: contentHeight
            spacing: 24
            Row {
                spacing: 8
                Text {
                    id: pinned_apps_icon
                    anchors.verticalCenter: parent.verticalCenter
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
            RowLayout{
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.leftMargin: 0
                Repeater{
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    model: 4
                    AppCard {
                        id: appCard
                        Layout.fillWidth: true
                        Layout.maximumWidth: implicitWidth
                    }
                }

            }

        }

            Column {
                id: all_apps_column
                Layout.fillWidth: true
                spacing: 24
                Row {
                    spacing: 8
                    Text {
                        id: all_apps_icon
                        anchors.verticalCenter: parent.verticalCenter
                        color: "#5721C9"
                        text: qsTr("\uf1f5") //category-2 icon
                        font.pixelSize: 24
                        font.family: Style.iconFonts
                    }
                    Text {
                        id: all_apps_text
                        color: Style.text_color
                        text: qsTr("All Apps")
                        font.pixelSize: 24
                    }
                }
                Item {
                    id: all_apps
                    height: childrenRect.height
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    anchors.leftMargin: 0

                    Flow {
                        id: all_apps_layout
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.rightMargin: 0
                        anchors.leftMargin: 0
                        spacing: 32
                        Repeater {
                            id: all_apps_repeater
                            model: data_bridge.fruits || []

                            AppCard {
                                id: all_apps_AppCard
                                app_name: modelData
                            }
                        }
                    }
                }


            }

        }
    }

    ProductionBar{
        id: production_bar
        y : 36
        anchors.horizontalCenter: parent.horizontalCenter
        onClicked: {this.y == data_bridge.get_test_scale(); console.log(data_bridge.get_test_scale())}

    }
    }

/*##^##
Designer {
    D{i:0;formeditorZoom:0.75}
}
##^##*/
