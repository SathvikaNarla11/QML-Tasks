import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 1.4


Window {
    id: p
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    Slider
    {
        width: parent.width
        anchors.top: parent
        anchors.margins: 10
        value: 0
        minimumValue: 0
        maximumValue: 360
        onValueChanged:
        {
            rectCenter.rotation = value
        }
    }

    MouseArea
    {
        anchors.fill: rectCenter
        onClicked:
        {
            rectCenter.width = rectCenter.width/2
            rectCenter.height = rectCenter.height/2
        }
    }
    Rectangle
    {
        id: rectCenter
        width: 200
        height: 200
        color: "green"
        border.color: "black"
        border.width: 3
        anchors.centerIn: parent

        Greenbox
        {
            anchors.right: rectCenter.left
            anchors.bottom: rectCenter.top
            //        MouseArea
            //        {
            //            anchors.fill: parent
            //            onClicked:
            //            {
            //                rectCenter.width = rectCenter.width * 2
            //                rectCenter.height = rectCenter.height * 2
            //            }
            //        }
        }
        Greenbox
        {
            anchors.right: rectCenter.left
            anchors.verticalCenter: rectCenter.verticalCenter
        }

        Greenbox
        {
            anchors.top: rectCenter.bottom
            anchors.right: rectCenter.left
        }

        Greenbox
        {
            anchors.top: rectCenter.bottom
            anchors.horizontalCenter: rectCenter.horizontalCenter
        }

        Greenbox
        {
            anchors.left: rectCenter.right
            anchors.verticalCenter: rectCenter.verticalCenter
        }

        Greenbox
        {
            anchors.left: rectCenter.right
            anchors.bottom: rectCenter.top
        }

        Greenbox
        {
            anchors.bottom: rectCenter.top
            anchors.horizontalCenter: rectCenter.horizontalCenter
        }

    }
    Greenbox
    {
        anchors.left: rectCenter.right
        anchors.top: rectCenter.bottom
    }

}










//    Rectangle
//    {
//        width: 50
//        height: 50
//        color: "#0657bc"
//        border.color: "black"
//        border.width: 3
//        x: 10
//        y: 10
//    }

//    Rectangle
//    {
//        width: 50
//        height: 50
//        border.color: "black"
//        radius: 50
//        anchors.fill: parent
//    }
