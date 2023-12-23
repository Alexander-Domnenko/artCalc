import QtQuick 2.9
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

ApplicationWindow {
    id: window
    visible: true
    width: 360
    height: 640
    title: qsTr("Tired")
    property color colorDrawer:"#DEDEDE"
    property color textColorDrawer:"#242424"
    property int myMargin:10

    header: ToolBar {
        contentHeight: toolButton.implicitHeight
        ToolButton {
            id: toolButton
            text:"\u2630"
            font.pixelSize: Qt.application.font.pixelSize * 1.6
            onClicked: {
                drawer.open()
            }
        }
    }


    Drawer {
        id: drawer
        width: parent.width * 0.65
        height: parent.height


        Rectangle {
            id: govno
            color: colorDrawer
            anchors.fill: parent


        }


        ColumnLayout {
            anchors.fill: parent

            RowLayout{
                Layout.topMargin: 20
                Layout.bottomMargin: 10
                Layout.alignment: Qt.AlignHCenter


                Text{
                    text:"ArtCalc - MENU"
                }
            }

            RowLayout {
                ProfileComp {
                    Layout.leftMargin: 15
                    Layout.bottomMargin: 20
                }
            }


            RowLayout{
                Button {
                    id: btn1
                    Layout.fillWidth: true
                    onClicked: {
                        stackView.push("Calculate.qml")
                        drawer.close()
                    }

                    Rectangle{
                        anchors.fill:parent
                        color:colorDrawer
                    }

                    RowLayout{
                        anchors.fill:parent
                        RowComponent {
                            Layout.leftMargin: 25
                            imageSource: "image/Calculator.png"
                            buttonText: "Рассчитать"
                        }
                    }
                }
            }


            RowLayout{
                Button {
                    id: btn2
                    width: govno.width

                    onClicked: {
                        stackView.push("Projects list.qml")
                        drawer.close()
                    }
                    Rectangle{
                        anchors.fill:parent
                        color:colorDrawer
                    }
                    RowLayout{
                        anchors.fill:parent
                        RowComponent {
                            Layout.leftMargin: 25
                            imageSource: "image/Bullet List.png"
                            buttonText: "Список проектов"
                        }
                    }
                }
            }
            RowLayout{
                Button {
                    id: btn3
                    Layout.fillWidth: true
                    onClicked: {
                        stackView.push("Statistics.qml")
                        drawer.close()
                    }
                    Rectangle{
                        anchors.fill:parent
                        color:colorDrawer
                    }
                    RowLayout{
                        anchors.fill:parent
                        RowComponent {
                            Layout.leftMargin: 25
                            imageSource: "image/Graph.png"
                            buttonText: "Статистика"
                        }
                    }
                }
            }
            RowLayout{
                Button {
                    id: btn4
                    Layout.fillWidth: true
                    onClicked: {
                        stackView.push("My_clients.qml")
                        drawer.close()
                    }
                    Rectangle{
                        anchors.fill:parent
                        color:colorDrawer
                    }
                    RowLayout{
                        anchors.fill:parent
                        RowComponent {
                            Layout.leftMargin: 25
                            imageSource: "image/Group.png"
                            buttonText: "Мои клиенты"
                        }
                    }
                }
            }

            RowLayout{
                Button {
                    id: btn5
                    Layout.fillWidth: true
                    onClicked: {
                        stackView.push("Cig_calendar.qml")
                        drawer.close()
                    }
                    Rectangle{
                        anchors.fill:parent
                        color:colorDrawer
                    }
                    RowLayout{
                        anchors.fill:parent
                        RowComponent {
                            Layout.leftMargin: 25
                            imageSource: "image/Tear-Off Calendar.png"
                            buttonText: "Календарь"
                        }
                    }
                }
            }
            RowLayout{
                Button {
                    id: btn6
                    Layout.fillWidth: true
                    onClicked: {
                        stackView.push("Settings.qml")
                        drawer.close()
                    }
                    Rectangle{
                        anchors.fill:parent
                        color:colorDrawer
                    }
                    RowLayout{
                        anchors.fill:parent
                        RowComponent {
                            Layout.leftMargin: 25
                            imageSource: "image/Automatic.png"
                            buttonText: "Настройки "
                        }
                    }
                }
            }
            RowLayout{
                Button {

                    id: btn7
                    Layout.fillWidth: true
                    onClicked: {
                        stackView.push("About_ArtCalc.qml")
                        drawer.close()
                    }
                    Rectangle{
                        anchors.fill:parent
                        color:colorDrawer
                    }
                    RowLayout{
                        anchors.fill:parent
                        RowComponent {
                            Layout.leftMargin: 25
                            imageSource: "image/Info.png"
                            buttonText: "О приложении"
                        }
                    }
                }
            }
            RowLayout{
                Rectangle{
                    height:drawer.height / 1.7
                }

            }

        }

    }


    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: "Calculate.qml"
    }

}

