import QtQuick 2.0


Rectangle {
    property alias textColor: text.color
    property alias fon: rect.color
    property alias text: text.text
    id: rect
    height: 120
    radius: 3
    color: "white"
    width: 200
    Text {
        id: text
        anchors.centerIn: parent
        text: "black"
        color: "black"
    }
}
