import QtQuick 2.0

import "./"

import "../JS/helpers.js" as Helpers
import "../JS/palette.js" as Palette
import "../JS/fonts.js" as Fonts
import "../JS/resolutionHelperTools.js" as RHT

Rectangle{
    id: bage

    property bool inverse: false
    property alias text: bageText.text

    width: Helpers.clamp(bageText.paintedWidth+15, 28)
    height: bageText.paintedHeight+5
    radius: height/2

    color: bage.inverse ? Palette.TEXT_DEFAULT_COLOR_I : Palette.TEXT_DEFAULT_COLOR

    Text{
        id: bageText

        color: bage.inverse ? Palette.TEXT_DEFAULT_COLOR: Palette.TEXT_DEFAULT_COLOR_I

        size: Fonts.SIZE_TINY

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
}
