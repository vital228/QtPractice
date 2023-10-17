import QtQuick
import QtQuick.Window

Window {
    width: 900
    height: 600
    visible: true
    title: qsTr("Hello World")
    Rectangle {
         id: redRect
         color: "black"
         width: 300; height: 300
         anchors.centerIn: parent
         state: "Square"

         MouseArea {
            anchors.fill: parent
            onClicked: parent.state = (parent.state == "Square"? "Rect" : "Square")
         }
         transform: [
             Scale { xScale: 1; yScale: 1 },
             Rotation {
                id: rotation
                angle: 0
                origin.x: 150; origin.y: 150
             }
         ]

         states: [
                State {
                    name: "Square"
                    PropertyChanges { target: rotation; angle: 0 }
                    PropertyChanges { target: redRect; width: 300 }
                },
                State {
                    name: "Rect"
                    PropertyChanges { target: rotation; angle:45 }
                    PropertyChanges { target: redRect; width: 150 }
                }
            ]
        transitions: [
                Transition {
                    from: "Square"; to: "Rect"
                    //            from: "*"; to: "*"
                    RotationAnimation { target: rotation; properties: "angle"; duration: 2000 }
                    PropertyAnimation { target: redRect; properties: "width"; duration: 2000 }
                }
            ]


    }


}
