import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 1.3

Window {
    width: 640
    height: 480
    visible: true
    id: root

    Column
    {
        id: cols
        anchors.fill: parent
        anchors.margins: 4
        spacing: 4

        Rectangle
        {
            id: frame1
            width: parent.width
            height: 50
            border.color: "gray"
            border.width: 2

            TextInput
            {
                id: txtInput
                anchors.fill: parent
                font.pixelSize: 25
//                font.bold: true
                font.capitalization: Font.Capitalize
                padding: 5

                onTextChanged:
                {
//                    txtEnc.text = Qt.btoa(txtInput.text)
                    txtEnc.text = txtInput.text
                }
            }
        }
        Rectangle
        {
            width: parent.width
            height: parent.height - (frame1.height + cols.spacing)
            TextArea
            {
                id: txtEnc
                anchors.fill: parent

            }
        }
    }
}

