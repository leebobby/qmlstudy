import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.4 //使用buttonstyle
import "./openNewOne.qml" as firsttest
Window {
    id:root;
    visible: true;
    width:600
    height: 480
    minimumWidth: 200;
    minimumHeight: 100;
    color: "lightgray"

    Button{
        style:ButtonStyle{
            background:Rectangle{
                color:"yellow"
                implicitHeight: 60
                implicitWidth: 80
                //x: (root.width-implicitWidth) / 2
                //y: (root.height-implicitHeight) / 2
                border.width: control.press?4:2
                border.color: (control.hovered||control.pressed)?"blue":"green"
            }
        }
        text:"open new"
        anchors.centerIn:root


        onClicked: {
            console.log("the button is clicked!")
            userAccount_main.show()
        }
    }

}
