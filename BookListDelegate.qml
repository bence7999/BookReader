import QtQuick 2.12

Rectangle {
    id: bookListDelegateItem
    width: parent.width; height: 70
    color: "gray"
    border.color: "black"
    border.width: 5
    radius: 10

    Image {
        id: bookListImageItem
        source: imagePath
        width: 50; height: 50
        anchors.left: parent.left
        anchors.leftMargin: 10
        anchors.verticalCenter: parent.verticalCenter
    }

    Text {
        id: bookListTextItem
        text: title
        color: "black"
        font.pixelSize: 25
        anchors.left: bookListImageItem.right
        anchors.verticalCenter: parent.verticalCenter
        anchors.leftMargin: 20
    }
}
