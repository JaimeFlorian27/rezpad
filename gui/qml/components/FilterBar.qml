import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Rectangle{
    height: 52
    color: "#171717"
    radius: height/2
    border.width: 0

    RowLayout {
        id: rowLayout
        anchors.fill: parent
        anchors.rightMargin: 16
        anchors.bottomMargin: 8
        anchors.topMargin: 8
        anchors.leftMargin: 16

        RowLayout {
            id: row
            width: 200
            height: 400
            Layout.fillWidth: false
            Layout.fillHeight: true
            spacing: 8

            TextField {
                id: textEdit
                width: 200
                height: 32
                text: qsTr("Text Edit")
                renderType: Text.QtRendering
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


/*##^##
Designer {
    D{i:0;formeditorZoom:3}D{i:1}
}
##^##*/
