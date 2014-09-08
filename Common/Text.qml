import QtQuick 2.0

import "../JS/fonts.js" as Fonts
import "../JS/palette.js" as Palette

Text {
    font.family: Fonts.BASE_FONT
    color: Palette.TEXT_DEFAULT_COLOR
    property int size: Fonts.SIZE_NORMAL
    font.pixelSize: size
}
