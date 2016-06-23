/*
 * QML Material - An application framework implementing Material Design.
 *
 * Copyright (C) 2014-2016 Michael Spencer <sonrisesoftware@gmail.com>
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 */

import QtQuick 2.4
import ProRotoQml.Theme 1.0
import Material 1.0

/*!
   \qmltype Label
   \inqmlmodule Material

   \brief A text label with many different font styles from Material Design.
 */
Text {
    id: label
    property string style: "body1"

    property var fontStyles: {
        "display4": {
            "size": ProtoScreen.guToPx(14),
            "font": "light"
        },

        "display3": {
            "size": ProtoScreen.guToPx(7),
            "font": "regular"
        },

        "display2": {
            "size": ProtoScreen.guToPx(5.625),
            "font": "regular"
        },

        "display1": {
            "size": ProtoScreen.guToPx(5.375),
            "font": "regular"
        },

        "headline": {
            "size": ProtoScreen.guToPx(3),
            "font": "regular"
        },

        "title": {
            "size": ProtoScreen.guToPx(2.5),
            "font": "medium"
        },

        "dialog": {
            "size": ProtoScreen.guToPx(2.25),
            "size_desktop": ProtoScreen.guToPx(2.125),
            "font": "regular"
        },

        "subheading": {
            "size": ProtoScreen.guToPx(2),
            "size_desktop": ProtoScreen.guToPx(1.85),
            "font": "regular"
        },

        "body2": {
            "size": ProtoScreen.guToPx(1.75),
            "size_desktop": ProtoScreen.guToPx(1.625),
            "font": "medium"
        },

        "body1": {
            "size": ProtoScreen.guToPx(1.75),
            "size_desktop": ProtoScreen.guToPx(1.625),
            "font": "regular"
        },

        "caption": {
            "size": ProtoScreen.guToPx(1.5),
            "font": "regular"
        },

        "menu": {
            "size": ProtoScreen.guToPx(1.75),
            "size_desktop": ProtoScreen.guToPx(1.625),
            "font": "medium"
        },

        "button": {
            "size": 14,
            "font": "medium"
        },

        "tooltip": {
            "size_desktop": ProtoScreen.guToPx(1.625),
            "size": ProtoScreen.guToPx(1.75),
            "font": "medium"
        }
    }

    property var fontInfo: fontStyles[style]

    font.pixelSize: (ProtoScreen.font(ProtoScreen.NORMAL))

    font.family: "Roboto"
//    font.weight: {
//        var weight = fontInfo.font
//        if (weight === "medium") {
//            return Font.DemiBold
//        } else if (weight === "regular") {
//            return Font.Normal
//        } else if (weight === "light") {
//            return Font.Light
//        }
//    }

    // This is kinda stupid
    font.capitalization: style == "button" ? Font.AllUppercase : Font.MixedCase
    color: Theme.light.textColor


}