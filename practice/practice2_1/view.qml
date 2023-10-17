import QtQuick
import QtQuick.Window
import QtQuick.Layouts 1.3

Window {
    width: 1280
    height: 480
    visible: true
    title: qsTr("Hello World")
    GridLayout {
        width: parent.width
        columns: 3
        Text{
            Layout.row: 0
            color: "black"
            text: "Расписание"
            anchors {
                top: parent.top
                horizontalCenter: parent.horizontalCenter
            }
            font.pointSize: 30
        }
        Text{
            Layout.row: 1
            color: "red"
            text: "Cреда"
            anchors {
                horizontalCenter: parent.horizontalCenter
            }
            font.pointSize: 30
        }

        Text{
            Layout.row: 2
            Layout.column: 0
            width: 20
            color: "red"
            text: "1"
            font.pointSize: 20
        }
        Text{
            Layout.row: 2
            Layout.column: 2
            color: "black"
            text: "Программная инженерия"
            font.pointSize: 20
            wrapMode: Text.Wrap
        }
        Text{
            Layout.row: 3
            Layout.column: 0
            width: 20
            color: "red"
            text: "2"
            font.pointSize: 20
        }
        Text{
            Layout.row: 3
            Layout.column: 1
            Layout.columnSpan: 2
            color: "black"
            text: "Разработка программных приложений для ОС Аврора"
            anchors {
                horizontalCenter: parent.horizontalCenter
            }
            font.pointSize: 20
        }
        Text{
            Layout.row: 4
            Layout.column: 0
            width: 20
            color: "red"
            text: "3"
            font.pointSize: 20
        }
        Text{
            Layout.row: 4
            Layout.column: 1
            Layout.columnSpan: 2
            color: "black"
            text: "Разработка программных приложений для ОС Аврора"
            anchors {
                horizontalCenter: parent.horizontalCenter
            }
            font.pointSize: 20
        }
        Text{
            Layout.row: 5
            Layout.column: 0
            width: 20
            color: "red"
            text: "4"
            font.pointSize: 20
        }
        Text{
            Layout.row: 5
            Layout.column: 1
            Layout.columnSpan: 2
            color: "black"
            text: "Интелектуальные системы"
            anchors {
                horizontalCenter: parent.horizontalCenter
            }
            font.pointSize: 20
        }
        Text{
            Layout.row: 6
            color: "red"
            text: "Четверг"
            anchors {
                horizontalCenter: parent.horizontalCenter
            }
            font.pointSize: 30
        }
        Text{
            Layout.row: 7
            Layout.column: 0
            width: 20
            color: "red"
            text: "2"
            font.pointSize: 20
        }
        Text{
            Layout.row: 7
            Layout.column: 1
            Layout.columnSpan: 2
            color: "black"
            text: "Экономика"
            anchors {
                horizontalCenter: parent.horizontalCenter
            }
            font.pointSize: 20
        }
        Text{
            Layout.row: 8
            Layout.column: 0
            color: "red"
            text: "3"
            font.pointSize: 20
        }
        Text{
            Layout.row: 8
            Layout.column: 1
            Layout.columnSpan: 2
            color: "black"
            text: "Прикладная статистика"
            anchors {
                horizontalCenter: parent.horizontalCenter
            }
            font.pointSize: 20
        }



    }

}
