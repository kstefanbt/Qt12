import QtQuick 2.2
import QtQml 2.0
Rectangle {
    id: root
    width: 480
    height: 64
    color: 'white'
    border.color: 'darkBlue'

    property alias text: label.text
    property alias iconSource: icon.source

    Image {
        id: icon
        anchors.left: parent.left
        width: height; height: parent.height
        fillMode: Image.PreserveAspectCrop
        asynchronous: true
    }
    Text {
        id: label
        anchors.left: icon.right
        anchors.right: parent.right
        anchors.margins: 8
        height: parent.height
        verticalAlignment: Text.AlignVCenter
        color: 'black'
        font.pixelSize: 18
        elide: Text.ElideRight
    }
}
