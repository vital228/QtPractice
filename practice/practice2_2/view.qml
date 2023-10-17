import QtQuick
import QtQuick.Window

Window {
    width: 900
    height: 600
    visible: true
    title: qsTr("Hello World")
    Rectangle {
         id: rect
         color: "yellow"
         width: 150; height: 150
         x: 150; y: 150
         radius: 180

         MouseArea {
            anchors.fill: parent
            onClicked: animationRect.running = true
         }

         SequentialAnimation {
            id: animationRect
            running: false
            NumberAnimation { target: rect; property: "x";
                                to: 300; duration: 1000 }
            NumberAnimation { target: rect; property: "y";
                                to: 300; duration: 1000 }
            NumberAnimation { target: rect; property: "x";
                                to: 150; duration: 1000 }
            NumberAnimation { target: rect; property: "y";
                                to: 150; duration: 1000 }
         }
    }
    Rectangle {
         id: rectA
         color: "yellow"
         width: 150; height: 150
         x: 650; y: 100

         radius: 180

         MouseArea {
            anchors.fill: parent
            onClicked: animationRectA.running = true
         }
         SequentialAnimation {
            id: animationRectA
            running: false
            ParallelAnimation {
                NumberAnimation { target: rectA; property: "x"; easing.type: Easing.OutCirc;
                                to: 800; duration: 2000 }
                NumberAnimation { target: rectA; property: "y";
                                to: 250; duration: 2000 }
            }
            ParallelAnimation {
                NumberAnimation { target: rectA; property: "x"; easing.type: Easing.InCirc;
                                to: 650; duration: 2000 }
                NumberAnimation { target: rectA; property: "y";
                                to: 400; duration: 2000 }
            }
            ParallelAnimation {
                NumberAnimation { target: rectA; property: "x"; easing.type: Easing.OutCirc;
                                to: 500; duration: 2000 }
                NumberAnimation { target: rectA; property: "y";
                                to: 250; duration: 2000 }
            }
            ParallelAnimation {
                NumberAnimation { target: rectA; property: "x"; easing.type: Easing.InCirc;
                                to: 650; duration: 2000 }
                NumberAnimation { target: rectA; property: "y";
                                to: 100; duration: 2000 }
            }
        }

    }


}
