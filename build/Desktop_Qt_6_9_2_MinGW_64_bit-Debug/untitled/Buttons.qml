import QtQuick

Item {
    property alias  buttonSource: buttonID.source
    //buttonID.source: buttonType
    width: buttonID.width
    height: buttonID.width
    Image {
        id: buttonID
        //source: buttonType
        anchors.horizontalCenter: parent.horizontalCenter
        onSourceChanged: {console.log("tahir kard "+buttonID.source)}
    }
}
