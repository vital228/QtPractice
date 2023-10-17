import QtQuick 2.9
import QtQuick.Controls 2.2


ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("List model")

    ListView {
        id: container
        spacing: 2
        orientation: ListView.Vertical
        anchors.fill: parent
        model: ListModel {
            ListElement { textColor: "white"; fon: "gray"; text: "gray"  }
            ListElement { textColor: "black"; fon: "yellow"; text: "yellow" }
            ListElement { textColor: "green"; fon: "blue"; text: "blue" }
            ListElement { textColor: "red"; fon: "orange"; text: "orange" }
            ListElement { textColor: "blue"; fon: "orange"; text: "orange" }
            ListElement { textColor: "white"; fon: "yellow"; text: "yellow" }
        }
        delegate: RectColor {
            width: container.width
            textColor: model.textColor
            fon: model.fon
            text: model.text
        }
    }
}
