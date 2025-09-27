import QtQuick
//import QtQuick.Controls

Item {
    id: compID
    width: buttonsimg3.width
    height: buttonsimg3.width
    property alias  buttontext: buttontextId3.text
    signal buttonclick
    Column{
        id: columnbutton3

        Image {
            id: buttonsimg3
            source: "file:///C:/Users/javad/Desktop/src/Polygon-not selected.svg"
            width: rootId.width*0.05
            height: rootId.width*0.05
            anchors.horizontalCenter: parent.horizontalCenter
            Behavior on opacity { NumberAnimation { duration: 800; easing.type: Easing.InOutQuad } }


            Image {
                id: icon3
                source: "file:///C:/Users/javad/Desktop/src/apps.svg"
                anchors.centerIn: parent
                width: rootId.width*0.05*0.4
                height: rootId.width*0.05*0.4
            }

            MouseArea {
                anchors.fill: parent
                hoverEnabled: true
                onClicked: {
                    compID.buttonclick()
                    if (parent.source == "file:///C:/Users/javad/Desktop/src/Polygon-selected.svg")
                    {
                        parent.source= "file:///C:/Users/javad/Desktop/src/Polygon-not selected.svg"
                    }
                    else
                    {
                        parent.source = "file:///C:/Users/javad/Desktop/src/Polygon-selected.svg"
                    }

                }
                onEntered: {
                    //compID.buttonclick()
                    //cursorShape: Qt.PointingHandCursor
                    //Qt:PointingHandCursor
                    if (parent.source == "file:///C:/Users/javad/Desktop/src/Polygon-selected.svg")
                    {
                        //parent.source= "file:///C:/Users/javad/Desktop/src/Polygon-not selected.svg"
                    }
                    else
                    {
                        parent.source = "file:///C:/Users/javad/Desktop/src/Polygon-hover.svg"
                    }
                }
                onExited: {
                    //compID.buttonclick()
                    if (parent.source == "file:///C:/Users/javad/Desktop/src/Polygon-selected.svg")
                    {
                        //parent.source= "file:///C:/Users/javad/Desktop/src/Polygon-not selected.svg"
                    }
                    else
                    {
                        parent.source = "file:///C:/Users/javad/Desktop/src/Polygon-not selected.svg"
                    }
                }

            }
        }
        Text {
            id: buttontextId3
            //anchors.centerIn:   columnbutton3
            anchors.horizontalCenter: parent.horizontalCenter
            text: qsTr("text3")
            font.family: "Inter"
            font.weight: Font.Light
            color: "white"
            font.pixelSize: Math.min(rootId.width, rootId.height) * 0.02
        }
    }
}
