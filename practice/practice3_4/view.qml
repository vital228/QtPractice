import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQml.XmlListModel

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("List model")
    id: container

    ListModel {
         id: subjectsModel
         ListElement { name: "Неклассические логики"; master:"Кузьмин Е.В."; day: "Понедельник" }
         ListElement { name: "Программная инженерия"; master:"Федулов Д.Д."; day: "Среда" }
         ListElement { name: "Разработка программных приложений для ОС Аврора"; master:"Лагутина К.В."; day: "Среда" }
         ListElement { name: "Разработка программных приложений для ОС Аврора"; master:"Лагутина К.В."; day: "Среда" }
         ListElement { name: "Интеллектуальные системы"; master:"Коновалов Е.В."; day: "Среда" }
         ListElement { name: "Экономика"; master:"Сухопарова А.В."; day: "Четверг" }
         ListElement { name: "Прикладная статистика"; master:" Спиридонова Е.М."; day: "Четверг" }
         ListElement { name: "Сети Петри"; master:"Белов Ю.А."; day: "Пятница" }
         ListElement { name: "Дополнительные главы математической статистики"; master:"Богомолов Ю.В."; day: "Пятница" }
         ListElement { name: "Основы права"; master:"Кулев А.Г."; day: "Суббота" }
     }

    Component {
        id: sectionHeading
        Rectangle {
            width: container.width
            height: childrenRect.height
            color: "lightsteelblue"

            required property string section

            Text {
                text: parent.section
                font.bold: true
                font.pixelSize: 20
            }
        }
    }

    ListView {
        id: view
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        width: parent.width
        model: subjectsModel
        delegate: Text {
            required property string name
            required property string master
            text: name + " <b>Преподаватель:</b> " + master 
            font.pixelSize: 18
        }

        section.property: "day"
        section.criteria: ViewSection.FullString
        section.delegate: sectionHeading
    }
    
}
