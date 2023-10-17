import QtQuick
import QtQuick.Window

Window {
    width: 900
    height: 600
    visible: true
    title: qsTr("Hello World")
    Rectangle {
     id: redRect
     color: "red"
     width: 300; height: 300
    }
    Rectangle {
     id: greenRect
     color: "green"
     width: 300; height: 300
     anchors {
         left: redRect.right
         top: redRect.verticalCenter
     }
    }
    Rectangle {
     color: "blue"
     width: 300; height: 300
     anchors {
         left: greenRect.horizontalCenter
     }
     Text{
        color: "white"
        text: "Квадрат"
        anchors {
         centerIn: parent
        }
        font.pointSize: 48
     }
    }

}
