import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Dialogs 1.2
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.4

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    minimumWidth: 300
    minimumHeight: 300
    title: qsTr("PocketBook desktop")

    toolBar: ToolBar {
        style: ToolBarStyle {
            background: Rectangle {
                color: "#85b85c"
            }
        }
        SearchButton {
            id: searchButton
            anchors {
                leftMargin: 5
                left: parent.left
                verticalCenter: parent.verticalCenter
            }
        }
    }
}

