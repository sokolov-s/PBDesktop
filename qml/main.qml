import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Dialogs 1.2
import QtQuick.Layouts 1.1

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("PocketBook desktop")

    toolBar: ToolBar {
        RowLayout {
            anchors.fill: parent
            ToolButton {
                id: btn_search
                iconSource:
            }
        }
    }

}

