import QtQuick
import QtQuick.Window
import myModule

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    MyClass {
        id: myClass
        text: "My Class Text"
        onTextChanged: console.log(text)
    }
    Column {
        anchors.fill: parent
        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            text: myClass.text
        }
        Rectangle {
            height: 100
            width: 100
            anchors.horizontalCenter: parent.horizontalCenter
            Text { text: "Button" }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    myClass.printText()
                    myClass.text = mouse.toString()
                }
            }
        }
    }
}
