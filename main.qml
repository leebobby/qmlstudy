import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.4 //使用buttonstyle
//import "./openNewOne.qml" as firsttest
Window {
    id:root;
    visible: true;
    title:"主界面"
    width:200
    height: 100
    minimumWidth: 200
    minimumHeight: 100
    color: "lightgray"

    Button{
        id :openButton
        style:ButtonStyle{
            background:Rectangle{
                color:"yellow"
                implicitHeight: 30
                implicitWidth: 51
                border.width: control.pressm ? 6 : 2
                border.color: (control.hovered || control.pressed) ? "blue" : "green"
            }
        }
        text:"打开新窗口"
        //下面这三个方法都可以把这个按钮放置在界面的中央
//[1]
//        x : (root.width - width) / 2
//        y : (root.height - height) / 2
//[2]
//        anchors.horizontalCenter: parent.horizontalCenter
//        anchors.verticalCenter: parent.verticalCenter
//[3]
        anchors.centerIn: parent
    }
    Button{
        id: closeButton
        style: ButtonStyle{
            background: Rectangle{
                color:"red"
                implicitHeight: 30
                implicitWidth: 51
                border.width: control.pressm ? 6 : 2
                border.color:(control.hovered || control.pressed) ?　"blue" : "black"
            }
        }
        text: "关闭"
        anchors.left:openButton.left
        anchors.leftMargin: 10
    }
    Connections{
        target:openButton
        onClicked: {
            console.log("the open button is clicked!")
            Qt.quit()
        }
    }
    Connections{
        target:closeButton
        onClicked: {
            console.log("the close button is clicked!")
            Qt.quit()
        }
    }
    Component.onCompleted: {
        console.log("test onCompleted!")
    }


}

