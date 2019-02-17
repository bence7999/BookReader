import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 1.4
//import QtQuick.Controls.Styles 1.4
//import QtQuick.Dialogs 1.0
//import QtQuick.Extras 1.4
import QtQuick.Layouts 1.0
//import QtQuick.Controls.Material 2.12
//import QtQml.Models 2.12


Window {
    id: root
    objectName: "window"
    visible: true
    width: 480
    height: 800

    color: "#606060"
    title: qsTr("Book Reader")


    ColumnLayout {
        id: search
        spacing: 10
        anchors.top: parent.top
        anchors.topMargin: 20
        anchors.left: parent.left
        anchors.right: parent.right

        Text {
            Layout.alignment: Qt.AlignCenter
            horizontalAlignment: Text.AlignHCenter;
            font.pixelSize: 24;
            text: "This is a search bar at the top";
        }
        TextField {
            id: searchTextFiled
            Layout.alignment: Qt.AlignCenter
            Layout.preferredWidth: 300
            placeholderText: qsTr("Enter book title")
        }
    }

    Item {
        id: bookList
        Layout.alignment: Qt.AlignCenter
        BookListModel {
            id: bookListModel
            Component.onCompleted: {
                console.log(bookListModel.get(0).title)
            }
        }
    }

    ListView {
        id: bookListView
        anchors.top: anchors.top
        anchors.topMargin: 100
        anchors.fill: parent
        model: bookListModel
        delegate: BookListDelegate { }
        spacing: 4
    }

}
