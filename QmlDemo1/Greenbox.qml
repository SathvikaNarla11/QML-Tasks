import QtQuick 2.0

Rectangle
{
    id: greenBox
    width: 50
    height: 50
    color: "limegreen"

    MouseArea
    {
        anchors.fill: greenBox
        onClicked:
        {
            rectCenter.width = rectCenter.width * 2
            rectCenter.height = rectCenter.height * 2
        }
    }
}
