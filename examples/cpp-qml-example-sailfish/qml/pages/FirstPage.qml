import QtQuick 2.0
import Sailfish.Silica 1.0
import myModule 1.0

Page {
    id: page
    allowedOrientations: Orientation.All

    MyClass {
        id: myClass
        text: "My Class Text"
        onTextChanged: console.log(text)
    }
    Column {
        anchors.fill: parent
        Label {
            anchors.horizontalCenter: parent.horizontalCenter
            text: myClass.text
        }
        Button {
            text: "Button"
            anchors.centerIn: parent
            onClicked: {
                myClass.printText()
                myClass.text = mouse.toString()
            }
        }
    }
}
