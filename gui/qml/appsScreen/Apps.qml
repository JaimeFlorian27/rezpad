import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
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
        spacing: 16
        anchors.rightMargin: 16
        anchors.leftMargin: 16
        anchors.bottomMargin: 16

        Rectangle {
            id: menuPlaceholder
            width: 112
            height: 41
            color: "#ffffff"
            radius: 10
            border.width: 0
            Layout.fillWidth: false
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
        }

        Rectangle {
            id: frame
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: "#0E0E0E"
            radius: 16

            ColumnLayout{
                anchors.fill : parent

                Item{
                    id: item1
                    height: 28
                    Layout.margins: 8
                    Layout.topMargin: 8
                    Layout.preferredHeight: 28
                    Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                    //padding: 8
                    Layout.fillWidth: true

                    FilterBar {
                        id: filterBar
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
}


/*##^##
Designer {
    D{i:0;formeditorZoom:0.75}
}
##^##*/
