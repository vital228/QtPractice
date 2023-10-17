import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQml.XmlListModel

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("List model")

    XmlListModel {
        id: xmlListModel
        source: "curs.asp"
        query: "/ValCurs/Valute"
        XmlListModelRole {
            name: "Name"
            elementName: "Name"
        }
        XmlListModelRole {
            name: "Value"
            elementName: "Value"
        }
    }
    ListView {
        id: list
        anchors.fill: parent
        model: xmlListModel
        delegate: Text {
            text: Name + ": " + Value
            width: list.width
        }
    }
}
