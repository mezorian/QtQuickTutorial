import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    id : rootId
    visible: true
    width: 640
    height: 480
    title: qsTr("QML Syntax Demo")

    property string textToShow: ""
    Row {
        id : row1
        anchors.centerIn: parent
        spacing: 20

        Rectangle {
            id: redRectId
            width : 150
            height: 150
            color: "red"
            radius: 20
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Clicked on the red Rectangle")
                    textToShow = "red"
                }
            }
        }

        Rectangle {
            id: greenRectId
            width : 150
            height: 150
            color: "green"
            radius: 20
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Clicked on the green Rectangle")
                    textToShow = "green"
                }
            }
        }

        Rectangle {
            id: blueRectId
            width : 150
            height: 150
            color: "blue"
            radius: 20
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Clicked on the blue Rectangle")
                    textToShow = "blue"
                }
            }
        }

        Rectangle {
            id: textRectId
            width : 150
            height: 150
            color: "blue"
            radius: 100
            Text {
                anchors.centerIn: parent
                text: textToShow
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Clicked on the text Rectangle")
                }
            }
        }
    }
}
