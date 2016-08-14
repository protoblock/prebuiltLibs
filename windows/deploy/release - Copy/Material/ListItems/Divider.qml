/*
 * QML Material - An application framework implementing Material Design.
 *
 * Copyright (C) 2015-2016 Michael Spencer <sonrisesoftware@gmail.com>
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 */

import QtQuick 2.4
import Material 1.0
import ProRotoQml.Utils 1.0

/*!
   \qmltype Divider
   \inqmlmodule Material.ListItems

   \brief A divider divides content in a list.
 */
Item {
    id: divider

    anchors {
        left: parent.left
        right: parent.right
    }

    height: 16 * Units.dp

    ThinDivider {
        anchors.verticalCenter: parent.verticalCenter
    }
}
