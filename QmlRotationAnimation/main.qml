import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    id: root

    property bool running: false

    Rectangle
    {
        id: body
        width: 500
        height: 500
        anchors.centerIn: parent
        color: "gray"

        Image
        {
            id: img
            source: "qrc:/Images/QmlBg.jfif"
            anchors.centerIn: body

            fillMode: img.PreserveAspectFit
            width: 300
            height: 300

            RotationAnimation on rotation
            {
                from: 0
                to: 360
                duration: 3000
                loops: Animation.Infinite
                running: root.running
            }

//            MouseArea
//            {
//                anchors.fill: img
//                onClicked: root.running = true
//            }
        }



        MouseArea
        {
            anchors.fill: body
            onClicked: root.running = true
        }

    }
}
