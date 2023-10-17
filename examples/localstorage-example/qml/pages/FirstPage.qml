import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.LocalStorage 2.0
import "../assets/Database.js" as JS
import "../assets"

Page {
    id: page
    allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill: parent
        Column {
            id: form
            width: parent.width
            anchors.top: parent.top

            Label {
                text: "Date"
            }
            TextField {
                id: dateInput
                validator: RegExpValidator {
                    regExp: /[0-9/,:.]+/
                }
            }
            Label {
                text: "Description"
            }
            TextField {
                id: descInput
            }
            Row {
                spacing: 10
                Button {
                    id: saveButton
                    text: "Save"
                    onClicked: {
                        if (form.insertrec()) {
                            form.setlistview()
                        } else {
                            statustext.text = "Failed to insert row"
                        }
                    }
                }
            }
            function insertrec() {
                var rowid = parseInt(JS.dbInsert(dateInput.text, descInput.text), 10)
                return rowid;
            }

            function setlistview() {
                listView.model.append({"date": dateInput.text, "trip_desc": descInput.text})
            }
            Label {
                id: statustext
                color: "red"
                font.bold: true
            }
        }
        Component {
            id: highlightBar
            Rectangle {
                width: listView.currentItem.width
                height: listView.currentItem.height
                color: "lightgreen"
            }
        }
        ListView {
            id: listView
            anchors.top: form.bottom
            anchors.bottom: parent.bottom
            anchors.margins: 10
            model: ListModel {
                id: listModel
                Component.onCompleted: JS.dbReadAll()
            }
            delegate: Label {
                height: 50
                text: date + " " + trip_desc
                Component.onCompleted: console.log(date + " " + trip_desc)
            }

            header: Component {
                Label {
                    text: "Saved activities"
                }
            }
        }
    }
    Component.onCompleted: {
        JS.dbInit()
    }

}
