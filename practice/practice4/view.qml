import QtQuick 2.9
import QtQuick.Controls 2.4
import QtQml.XmlListModel
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("List model")
    ColumnLayout {
        Text {
            text: btn.down ? qsTr("Нажата") : qsTr("Опущена")
        }
        Button {
            id: btn
            text: "Нажми на меня"
        }
        Text {
            id: textRadio
            text: radioButtonsGroup.checkedButton.text
        }
        ButtonGroup {
            id: radioButtonsGroup
        }
        RadioButton {
            text: "Первая"
            onClicked: textRadio.text 
            ButtonGroup.group: radioButtonsGroup
        }
        RadioButton {
            text: "Вторая"
            ButtonGroup.group: radioButtonsGroup
        }
        RadioButton {
            text: "Третья"
            ButtonGroup.group: radioButtonsGroup
        }
        TextField {
            id: n1
            placeholderText: qsTr("Введите первое число")
        }
        TextField {
            id: n2
            placeholderText: qsTr("Введите второе число")
        }
        Button {
            text: "Подтвердить"
            onClicked: console.log(parseInt(n1.text)+parseInt(n2.text))
        }
    }
}
