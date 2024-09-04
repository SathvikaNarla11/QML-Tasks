import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 1.3

Window {
    id: viewport
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    //    Rectangle
    //    {
    //        id: rectCenter
    //        width: 50
    //        height: 50
    //        color: "Red"
    //        anchors.centerIn: parent
    //    }
    Image
    {
        id: imgCenter
        source: "qrc:/Images/QtLogo.png"
        anchors.centerIn: parent
    }

    Column
    {
        Row
        {
            Button
            {
                id: btn1
                text: "Reset"
                onClicked:
                {
                    imgCenter.fillMode = Image.Stretch
                    imgCenter.width = imgCenter.sourceSize.width
                    imgCenter.height = imgCenter.sourceSize.height
                    imgCenter.anchors.imgCenter = viewport
                    imgCenter.clip = false
                }
            }
            Button
            {
                id: btn2
                text: "Stretch"
                onClicked:
                {
                    imgCenter.fillMode = Image.Stretch
                    imgCenter.height = 20
                    imgCenter.width = 200
                }
            }
            Button
            {
                id: btn3
                text: "PreserveAspectFit"
                onClicked:
                {
                    imgCenter.fillMode = Image.PreserveAspectFit
                    imgCenter.height = 70
                    imgCenter.width = 70

                }
            }

            Button
            {
                id: btn4
                text: "PreserveAspectCrop"
                onClicked:
                {
                    imgCenter.fillMode = Image.PreserveAspectCrop
                    imgCenter.height = 100
                    imgCenter.width = 20
                    imgCenter.clip = true
                }
            }
            Button
            {
                id: btn5
                text: "Tile"
                onClicked:
                {
                    imgCenter.fillMode = Image.Tile
//                    imgCenter.width = 300
//                    imgCenter.height = 300
                    imgCenter.width = viewport.width
                    imgCenter.height = viewport.height
                    imgCenter.horizontalAlignment = Image.AlignLeft
                    imgCenter.verticalAlignment  = Image.AlignTop
                }
            }
            Button
            {
                id: btn6
                text: "TileHorizontal"
                onClicked:
                {
                    imgCenter.fillMode = Image.TileHorizontally
                    imgCenter.height = 300
                    imgCenter.width = 300
                    imgCenter.horizontalAlignment = Image.AlignLeft

                }
            }
            Button
            {
                id: btn7
                text: "TileVertical"
                onClicked:
                {
                    imgCenter.fillMode = Image.TileVertically
                    imgCenter.height = 2000
                    imgCenter.width = imgCenter.sourceSize.width
//                    imgCenter.verticalAlignment = Image.AlignTop

                }
            }
        }

        Row
        {
            Image
            {
                id: img2
                source: "qrc:/Images/lineConnects.png"
                width: 40
                height: 40
            }

            Image
            {
                id: img1
                source: "qrc:/Images/icons8-save-as-48.png"
            }

            Image
            {
                id: img3
                source: "qrc:/Images/shapes.png"
                width: 40
                height: 40
            }
        }

        Row
        {
            Image
            {
                id: img6
                source: "qrc:/Images/lineConnects.png"
                width: 40
                height: 40
            }

            Image
            {
                id: img4
                source: "qrc:/Images/icons8-save-as-48.png"
            }

            Image
            {
                id: img5
                source: "qrc:/Images/shapes.png"
                width: 40
                height: 40
            }
        }
    }
}
