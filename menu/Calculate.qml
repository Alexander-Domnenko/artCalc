import QtQuick 2.9
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
import "components"

Rectangle {
    width: 360
    height: 640
    color: "#242424"
//    property int myMargin: 10

    ColumnLayout {
        anchors.horizontalCenter: parent.horizontalCenter
        width: parent.width - 20
        height: parent.height - 60

        CustomComboBox {
            id: workTypeComboBox
            comboBoxWidth: 115
            comboBoxHeight: 35
            comboBoxColor: "#DEDEDE"
            textColor: "#242424"
            textSize: 12
            borderRadius: 30
            model: ["3D", "2D", "ПРОЕКТ", "МОНТАЖ"]
        }

        CustomTextField {
            id: wastedHours
            placeholder: "Затрачено часов"
            width: parent.width - 20
            Layout.alignment: Qt.AlignHCenter
        }
        CustomTextField {
            id: hourCost
            placeholder: "Ставка на один час"
            width: parent.width - 20
            Layout.alignment: Qt.AlignHCenter
        }
        CustomButton {
            id: addBttn
            buttonColor: "#DEDEDE"
            textColor: "#242424"
            text: "ДОБАВИТЬ ПОЛЕ"
            buttonWidth: parent.width - 20
            Layout.alignment: Qt.AlignHCenter
            textSize: 18
            onClicked: {
                console.log("calculating...");
            }
        }
        CustomButton {
            id: calcBttn
            text: "ВОЙТИ"
            buttonWidth: parent.width - 20
            Layout.alignment: Qt.AlignHCenter
            textSize: 18
            onClicked: {
                console.log("calculating...");
            }
        }
    }
}
