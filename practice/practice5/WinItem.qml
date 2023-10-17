import QtQuick 2.9
import QtQuick.Controls 2.4

Item{
        id: winView
        property alias image: image.source
        property alias text: text.text
        Text{ 
                id: text
                text: "Вы выиграли"
        }
        Image{
                id: image
                anchors.fill: parent
        }
    
}