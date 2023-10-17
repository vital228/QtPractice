import QtQuick 2.9
import QtQuick.Controls 2.4
import QtQml.XmlListModel
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("List model")
    SwipeView {
        id: view
        currentIndex: 0
        anchors.fill: parent
        interactive: false
        Item {
            id: firstPage
            MenuBar {
                id: menuBar
                Menu {
                    title: qsTr("File")
                    Action {
                        text: qsTr("&New...")
                        onTriggered: textMenu.text = "New File"
                    }
                    Action {
                        text: qsTr("&Open...")
                        onTriggered: textMenu.text = "Open File"
                    }
                    Action {
                        text: qsTr("&Save")
                        onTriggered: textMenu.text = "New File"
                    }
                }
                Menu {
                    title: qsTr("Edit")
                    Action {
                        text: qsTr("Cu&t")
                        onTriggered: textMenu.text = "Cut"
                    }
                    Action {
                        text: qsTr("&Copy")
                        onTriggered: textMenu.text = "Copy"
                    }
                    Action {
                        text: qsTr("&Paste")
                        onTriggered: textMenu.text = "Paste"
                    }
                }
            }
            ColumnLayout {
                anchors.top: menuBar.bottom
                Text {
                    id: textMenu
                    text: ""
                }
                Text {
                    text: "С какой страной не граничит Россия?"
                }
                ButtonGroup {
                    id: radioButtonsGroup
                }
                RadioButton {
                    text: qsTr("Польша")
                    ButtonGroup.group: radioButtonsGroup
                    onClicked:{
                        radioButtonsGroup.buttons.forEach((x) => x.checkable = false);
                        view.currentIndex = 2;
                    }
                }
                RadioButton {
                    text: qsTr("Армения")
                    ButtonGroup.group: radioButtonsGroup
                    onClicked:{
                        radioButtonsGroup.buttons.forEach((x) => x.checkable = false);
                        view.currentIndex = 1;
                    }
                }
                RadioButton {
                    text: qsTr("Монголия")
                    ButtonGroup.group: radioButtonsGroup
                    onClicked:{
                        radioButtonsGroup.buttons.forEach((x) => x.checkable = false);
                        view.currentIndex = 2;
                    }
                }
                RadioButton {
                    text: "Украина"
                    ButtonGroup.group: radioButtonsGroup
                    onClicked:{
                        radioButtonsGroup.buttons.forEach((x) => x.checkable = false);
                        view.currentIndex = 2;
                    }
                }
            }
        }
        WinItem{
            text: "Вы выиграли"
            image: "assets/win_image.jpg"
        }
        WinItem{
            text: "Вы проиграли"
            image: "assets/loser_image.jpg"
        }
    }

}
