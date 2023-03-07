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
        contentHeight: contentItem.childrenRect.height + main_column.anchors.topMargin*2
        anchors.rightMargin: 0
        anchors.leftMargin: 0
        flickableDirection: Flickable.VerticalFlick


    ColumnLayout {
        id: main_column
        width: 1232
        anchors.horizontalCenter: parent.horizontalCenter
//        anchors.left: parent.left
//        anchors.right: parent.right
        anchors.top: parent.top

        //anchors.horizontalCenter:  parent.horizontalCenter
        anchors.rightMargin: 64
        anchors.leftMargin: 64
        anchors.topMargin: 64
        spacing: 80


        Column {
            id: pinned_apps_column
            Layout.fillWidth: true
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
            Item {
                id: pinned_apps
                height: childrenRect.height
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.leftMargin: 0

                RowLayout {
                    id: pinned_apps_row
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    anchors.leftMargin: 0
                    spacing: 20
                    Repeater {
                        model: 4

                        AppCard {
                            id: appCard
                        }
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
                        color: Style.green
                        text: qsTr("\uf68d") //pin icon
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
                        spacing: 34
                        Repeater {
                            id: all_apps_repeater
                            model: 50

                            AppCard {
                                id: all_apps_AppCard
                            }
                        }
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
