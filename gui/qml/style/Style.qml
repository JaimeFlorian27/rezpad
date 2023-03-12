pragma Singleton

import QtQuick 2.15

Item {

    property var iconFonts : this.fontTablerIcons.name

    property FontLoader fontTablerIcons: FontLoader {
        source: "../../resources/fonts/tabler-icons.ttf"
    }


    property color bg_color : "#12131A"
    property color text_color : "#DBDBF0"
    property color side_bar_icon_color : "#DBDBF0"
    property color side_bar_icon_highlighted_color : "#4CB5A3"
    property color green : "#4CB5A3"



}
