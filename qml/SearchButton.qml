import QtQuick 2.0
import QtQuick.Controls 1.4

Item {
    id: searchBoxItem
    width: 197
    height: 30


    Rectangle {
        id: searchBox
        anchors.fill: parent
        border.color: borderColorNormal
        border.width: 1
        color: bakgroundColorNoraml

        property string borderColorNormal: "#97c374"
        property string borderColorSelected: "#6a934a"
        property string bakgroundColorNoraml: "#7dad57"

        property string name: "SearchButton"
        property alias book: txt.text

        FocusScope {
            id: focusScope
            anchors.fill: parent

            MouseArea {
                anchors.fill: parent
                hoverEnabled: true
                onClicked: {
                    focusScope.focus = true;
                }
                onEntered: {
                    searchBox.border.color=searchBox.borderColorSelected;
                    searchBorder.source = "images/window_title/button_checked.png"
                }
                onExited: {
                    searchBox.border.color=searchBox.borderColorNormal;
                    searchBorder.source = ""
                }
            }

            BorderImage {
                id: searchBorder
                anchors.fill: parent;
                horizontalTileMode: BorderImage.Stretch
                border { left: 3; top: 5; right: 3; bottom: 5 }
            }

            Image {
                id: img
                anchors {
                    verticalCenter: parent.verticalCenter
                    left: parent.left
                    leftMargin: 8
                }
                source: "images/window_title/search.svg"
            }

            Text {
                id: txt
                text: qsTr("Search")
                anchors {
                    left: img.right
                    right: parent.right
                    verticalCenter: parent.verticalCenter
                    leftMargin: 8
                    rightMargin: 8
                }
            }

            TextInput {
                id: textInput
                anchors {
                    left: img.right
                    right: parent.right
                    verticalCenter: parent.verticalCenter
                    leftMargin: 8
                    rightMargin: 8
                }
                focus: true
                selectByMouse: true
                color: "white"

            }
        }
    }
    function cliced() {

    }
}
