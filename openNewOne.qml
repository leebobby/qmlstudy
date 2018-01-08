import QtQuick 2.4
import QtQuick.Window 2.0

Window {
    id:userAccount_main
    visible: true
    color:"black"
    Column{
        spacing: 10
        Rectangle{
            id:blueRect
            width:userAccount_main.width
            height:360/3.3
            KeyNavigation.up:yellowRect
            KeyNavigation.down: redRect
            color:{
                if(activeFocus){
                    "blue"
                }else{
                    "grey"
                }
            }
        }
        Rectangle{
            id:redRect
            width:userAccount_main.width
            height:360/3.3
            KeyNavigation.up:blueRect
            KeyNavigation.down: yellowRect
            color:{
                if(activeFocus){
                    "red"
                }else{
                    "grey"
                }
            }
        }
        Rectangle{
            id:yellowRect
            width:userAccount_main.width
            height:360/3.3
            KeyNavigation.up:redRect
            KeyNavigation.down: yellowRect
            color:{
                if(activeFocus){
                    "yellow"
                }else{
                    "grey"
                }
            }
        }
    }
}
