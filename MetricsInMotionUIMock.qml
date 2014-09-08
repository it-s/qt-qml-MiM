import QtQuick 2.2
import QtQuick.Window 2.0
import QtQuick.Layouts 1.1

import "Common"

import "Browser"

import "Sidebar"
//import "Widgets"

import "JS/palette.js" as Palette
import "JS/helpers.js" as Helpers

Window {
    id: window
    width: Helpers.em(130)
    height: Helpers.em(76)
    minimumWidth: Helpers.em(60)
    minimumHeight: Helpers.em(40)

    property double scale: Helpers.computeScale({
                                                    intendedResolution: {
                                                        width: 1680,
                                                        height: 1050
                                                    },
                                                    currentResolution: {
                                                        width: Screen.width,
                                                        height: Screen.height
                                                    }
                                                })

    property string baseTitle: "METRICS.IM"

    title: "METRICS.IM"

    function setTitle(title) {
        window.title = window.baseTitle + " " + title
    }

    Fonts {
    } //Load custom and icon fonts

    Toolbar {
        id: toolbar
        anchors.right: parent.right
        anchors.left: parent.left
        anchors.top: parent.top
    }
    Rectangle {
        id: view
        anchors.top: toolbar.bottom
        anchors.right: parent.right
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        color: Palette.VIEW_BACKGROUND

        RowLayout {
            spacing: 0
            anchors.fill: parent
            Sidebar {
                anchors.top: parent.top
                anchors.bottom: parent.bottom
            }
//            WidgetView {
//                Layout.fillWidth: true
//                anchors.top: parent.top
//                anchors.bottom: parent.bottom
//            }
        }
    }
}
