import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 1.4

Window {
    id: root
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    MouseArea
    {
        anchors.fill: parent
        onClicked:
        {
            console.log("window positions : ")
            classA.moveCursor( Qt.point(mouse.x, mouse.y))
        }
    }

    Button
    {
        text: "click here"
        anchors.centerIn: parent
        onClicked: classA.showFun()
    }

    Rectangle
    {
        id: rect
        width: 250
        height: 250
        color: "limegreen"
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.margins: 10
        property variant mappedcursor


        MouseArea
        {
            id: rectMousePoint
            anchors.fill: rect

            onClicked:
            {
                console.log("Rectangle positions : ")
                classA.moveCursor( Qt.point(mouse.x, mouse.y))

                var windowCoords = rect.mapToItem(root.contentItem, mouse.x, mouse.y);
                console.log("Window coordinates from rectangle click: x = " + windowCoords.x + ", y = " + windowCoords.y);
                classA.moveCursor(windowCoords);

                console.log("-----------------------------------------------------------------------" );
            }
            onPressedChanged:
            {
                if(pressed)
                {
                    classA.setCursorShape(Qt.BusyCursor)
                }
            }
            onReleased:
            {
                if(released)
                {
                    classA.setCursorShape(Qt.CrossCursor)
                }
            }
        }
    }
}


