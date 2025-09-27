import QtQuick
import QtQuick.Effects


Window {
    id:rootId
    Component.onCompleted: {console.log("Started")}
    Component.onDestruction: {console.log("Quit")}
    //visibility: Window.FullScreen
    width: 1582
    height: 844
    visible: true
    title: qsTr("QML first try")

    property real aspectRatio: 1582/844

    onWidthChanged: {
        if (height !== Math.round(width / aspectRatio)) {
            height = Math.round(width / aspectRatio)
        }
    }

    onHeightChanged: {
        if (width !== Math.round(height * aspectRatio)) {
            width = Math.round(height * aspectRatio)
        }
    }

    property string texttoshow: "false"
    property int rowspace: 10
    property var fonts: Qt.fontFamilies()
    property string esm: "javad"
    onEsmChanged: {
        console.log("tahir kard ", esm)
    }
    Image {
        id: bgImg
        source: "src/images/bgImg.jpg"
        x: 0
        y: 0
        width: rootId.width
        height: rootId.height
        anchors.fill: parent
    }
    Row{
        id:rowid
        anchors.centerIn: parent
        spacing: rootId.width*0.10

        Column{
            spacing: 5
            //anchors.centerIn: parent
            Rectangle {
                id: leftPanel
                //source: "file:///C:/Users/javad/Desktop/src/inside rec.png"
                width: rootId.width*0.65
                height: rootId.height*0.75
                border.color: "#313131"
                border.width: 1
                radius : Math.min(rootId.width, rootId.height) * 0.03
                color: Qt.rgba(0, 0, 0, 0.3)
                Column{
                    anchors.centerIn: parent
                    spacing: 5
                    id: leftPanelinside
                    Text {
                        id: titleBg
                        text: qsTr("Body style")
                        font.family: "Inter"
                        font.weight: Font.Black
                        font.pixelSize: Math.min(rootId.width, rootId.height) * 0.06
                        color: "white"
                    }
                    Column{
                        spacing: 5
                        Text {
                            id: titlesm1
                            text: qsTr("Gender")
                            font.family: "Inter"
                            font.weight: Font.Light
                            font.pixelSize: titleBg.font.pixelSize*0.5
                            color: "white"
                        }
                        Rectangle {
                            id: insiderec1
                            //source: "file:///C:/Users/javad/Desktop/src/inside rec.png"
                            width: leftPanel.width*0.85
                            height: leftPanel.height*0.75/3
                            border.color: "#313131"
                            border.width: 1
                            radius : Math.min(rootId.width, rootId.height) * 0.03
                            color: Qt.rgba(0, 0, 0, 0.1)


                            TextEdit {
                                id: inputField
                                x : 10
                                y : 10
                                width: parent.width - 20
                                height: parent.height- 20

                                anchors.top:  parent
                                font.pixelSize: titleBg.font.pixelSize*0.5
                                color: "white"
                                text:"salam"
                                //placeholderText: "Enter text..."
                                focus: true

                                // Handle when text changes
                                onTextChanged: {
                                    console.log("Text is now:", text)
                                }
                            }

                        }
                    }
                    Column{
                        spacing: 5
                        Text {
                            id: titlesm2
                            text: qsTr("Body type")
                            font.family: "Inter"
                            font.weight: Font.Light
                            font.pixelSize: titleBg.font.pixelSize*0.5
                            color: "white"
                        }
                        Rectangle {
                            id: insiderec2
                            //source: "file:///C:/Users/javad/Desktop/src/inside rec.png"
                            width: leftPanel.width*0.85
                            height: leftPanel.height*0.75/3
                            border.color: "#313131"
                            border.width: 1
                            radius : Math.min(rootId.width, rootId.height) * 0.03
                            color: Qt.rgba(0, 0, 0, 0.1)
                            Row{
                                spacing: insiderec2.width*0.10
                                anchors.centerIn: parent
                                Poly_button{id:button1
                                    buttontext:"Element 1"
                                }
                                Poly_button{id:button2
                                    buttontext:"Element 2"
                                }
                                Poly_button{id:button3
                                    buttontext:"Element 3"
                                    onButtonclick:
                                    {console.log("Element 3 Clicked")}
                                }

                            }
                        }
                    }
                }
            }


            /*Column{
                spacing: 1//insiderec2.width*0.10
                Row
                {
                    spacing: 1//insiderec2.width*0.10
                    Buttons{buttonSource: "src/buttons/button-sm-default.png"}
                    Buttons{buttonSource: "src/buttons/button-lg-default.png"}
                    Buttons{buttonSource: "src/buttons/button-icon-default.png"}
                }
                Buttons{buttonSource: "src/buttons/button-icon-default.png"}
            }*/
        }

        Image {
            id: rightpanle
            source: "src/images/right panel.png"
            width: rootId.width*0.20
            height: rootId.height*0.80
        }
    }
}
