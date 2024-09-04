import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 1.3
import QtQuick.Dialogs 1.3
Window
{
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    ColorDialog
    {
        id: colorDialog
        modality: Qt.WindowModal
        title: "Choose a color"
        color: "green"
        onAccepted:
        {
            console.log("Accepted color : " +color)
        }
        onRejected:
        {
            console.log("Rejected")
        }
    }

    FontDialog
    {
        id: fontDialog
        modality: Qt.WindowModal
        title: "Choose Font"
        onAccepted:
        {
            console.log("Accepted font : " +font)
        }
        onRejected:
        {
            console.log("Rejected")
        }
    }
    Row
    {
        Button
        {
            id : btn1
            text: "ColorDialog"
            onClicked:
            {
                colorDialog.open()
            }
        }
        Button
        {
            id : btn2
            text: "FontDialog"
            onClicked:
            {
                fontDialog.open()
            }
        }
        TextField
        {
            id: textField
            text: "Enter the text here"
            width: 300
        }
    }
    Text
    {
        id: txt
        text: textField.text
        anchors.centerIn: parent
        color: colorDialog.color
        font: fontDialog.font
    }
}
