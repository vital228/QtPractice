import QtQuick
import QtQuick.Window
import QtQuick.LocalStorage
import QtQuick.Controls
import "Database.js" as JS

Window {
    id: window
    visible: true
    width: Screen.width / 2
    height: Screen.height / 1.8
    title: qsTr("Заметки")

    property int sum;
    /*NoteDialog {
        id: noteDialog
    }*/
    WarningDialog {id: dialog; title: "Ошибка" }
    Column {
        anchors.fill: parent
        Text{
            id: sumInfo
            text: "Сумма покупки: " + sum
        }
        ListView {
            id: listView
            spacing: 2
            width: parent.width
            height: parent.height - button.height - row.height - sumInfo.height
            model: ListModel {
                id: productModel
            }
            delegate: Rectangle {
                color: "grey"
                Text {
                    text: name + ' Цена:' + cost.toString()
                    anchors.centerIn: parent
                }
                width: listView.width
                height: listView.height / 10
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        JS.dbDelete(parseInt(id));
                        sum = JS.dbSumCosts();
                        productModel.remove(model.index, 1);
                    }
                }
            }
        }
        Row {
            id: row
            height: parent.height / 20
            width: parent.width
            TextField {
                id: nameField
                width: parent.width / 2
                placeholderText: qsTr("Введите название")
            }
            TextField {
                id: costField
                width: parent.width / 2
                placeholderText: qsTr("Введите цену")
            }
        }
        Button {
            id: button
            text: qsTr("Добавить")
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                var intCost = parseInt(costField.text);
                if (isNaN(intCost)) {
                    dialog.open();
                    return;
                }
                var rowid = JS.dbInsert(nameField.text, intCost);
                sum = JS.dbSumCosts();
                productModel.append({
                        "id": rowid,
                        "name": nameField.text,
                        "cost": intCost
                    });
            }
        }
        Component.onCompleted: {
            JS.dbInit();
            JS.dbReadAll();
            sum = JS.dbSumCosts();
        }
    }
}
