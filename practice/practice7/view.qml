import QtQuick
import QtQuick.Window
import QtQuick.Controls 2.4
import counterModule
import stringModule


Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    Counter {
        id: myClass
        value: 10
    }
    ListStrings{
        id: strings
    }
    Column {
        anchors.fill: parent
        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            text: myClass.value
        }
        Button {
            text: "Увеличить"
            onClicked: myClass.increment()
        }
        Button {
            text: "Сбросить"
            onClicked: myClass.reset()
        }
        
        Text{
            text: strings.list
        }
        Row{
            TextField {
                id: textField
                width: parent.width / 2
                placeholderText: qsTr("Введите текст")
            }
            Button{
                text: "Добавить строку" 
                onClicked: strings.addString(textField.text)
            }
        }
        Button{
                text: "Удалить строку" 
                onClicked: strings.deleteString()
            }

    }
}
