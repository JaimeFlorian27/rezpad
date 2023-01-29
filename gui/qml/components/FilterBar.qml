import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Rectangle{
    height: 40
    color: "#171717"
    radius: height/2
    border.width: 0

    RowLayout {
        id: rowLayout
        anchors.fill: parent
        anchors.rightMargin: 16
        anchors.bottomMargin: 4
        anchors.topMargin: 4
        anchors.leftMargin: 16

        RowLayout {
            id: row
            width: 200
            height: 400
            Layout.fillWidth: true
            Layout.fillHeight: true
            spacing: 8

            Image {
                id: image
                width: 20
                height: 20
                source: "../../resources/search.svg"
                sourceSize.height: width
                sourceSize.width: height
                mipmap: false
                smooth: false
                antialiasing: false
                fillMode: Image.PreserveAspectFit
            }

            TextField {
                id: textEdit
                width: 200
                text: qsTr("")
                Layout.fillWidth: true
                font.family: "Arial"
                placeholderText: "Search..."
                antialiasing: true
                Layout.maximumWidth: 200
                Layout.preferredWidth: 200
                Layout.fillHeight: true

                selectByMouse: true
                color: "#FFFFFF"
                background: Rectangle{

                    anchors.fill: parent
                    color: "#1F1F1F"
                    radius: parent.height
                    border.width: 0

                }
            }
        }
    }


}



