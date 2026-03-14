import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtQuick.Window 2.15

Window {
    color: "#2b2d31"
    height: 800
    title: "ChatRoomUI"
    visible: true
    width: 1280

    RowLayout {
        anchors.fill: parent
        spacing: 0

        ColumnLayout {
            Layout.fillHeight: true
            Layout.maximumWidth: 300
            Layout.minimumWidth: 300
            Layout.preferredWidth: 300
            spacing: 0

            Rectangle {
                Layout.fillWidth: true
                Layout.maximumHeight: 80
                Layout.minimumHeight: 80
                Layout.preferredHeight: 80
                color: "#2b2d31"

                ColumnLayout {
                    anchors.fill: parent
                    anchors.margins: 15
                    spacing: 10

                    Label {
                        Layout.alignment: Qt.AlignHCenter
                        color: "white"
                        font.bold: true
                        font.pixelSize: 20
                        horizontalAlignment: Text.AlignHCenter
                        text: "ChatRoomUI"
                    }
                    TextField {
                        Layout.fillWidth: true
                        Layout.maximumHeight: 30
                        Layout.minimumHeight: 30
                        Layout.preferredHeight: 30
                        color: "white"
                        placeholderText: "Find channel..."
                        placeholderTextColor: "#72767d"

                        background: Rectangle {
                            color: "#000000"
                            radius: 4
                        }
                    }
                }
            }
            Rectangle {
                Layout.fillHeight: true
                Layout.fillWidth: true
                clip: true
                color: "#2f3136"
                radius: 8

                Label {
                    anchors.centerIn: parent
                    color: "#72767d"
                    text: "Chat List"
                }
            }
        }
        Rectangle {
            Layout.fillHeight: true
            Layout.preferredWidth: 1
            color: "#1e1f22"
        }
        ColumnLayout {
            Layout.fillHeight: true
            Layout.fillWidth: true
            spacing: 0

            Rectangle {
                Layout.fillWidth: true
                Layout.preferredHeight: 50
                color: "#313338"

                RowLayout {
                    anchors.fill: parent
                    anchors.leftMargin: 15
                    anchors.rightMargin: 15

                    Label {
                        color: "white"
                        font.bold: true
                        font.pixelSize: 16
                        text: "# general"
                    }
                    Item {
                        Layout.fillWidth: true
                    }
                    Button {
                        text: "Settings"

                        onClicked: console.log("Settings")
                    }
                    Button {
                        text: "Profile"

                        onClicked: console.log("Profile")
                    }
                }
            }
            Rectangle {
                Layout.fillHeight: true
                Layout.fillWidth: true
                color: "#36393f"

                Label {
                    anchors.centerIn: parent
                    color: "#72767d"
                    text: "1. Messages"
                }
            }
            Rectangle {
                Layout.fillWidth: true
                Layout.maximumHeight: 80
                Layout.minimumHeight: 80
                Layout.preferredHeight: 80
                color: "#313338"

                RowLayout {
                    anchors.fill: parent
                    spacing: 10

                    TextField {
                        id: messageInput

                        Layout.fillWidth: true
                        color: "white"
                        placeholderText: "Message #general"
                        placeholderTextColor: "#72767d"

                        background: Rectangle {
                            color: "#202225"
                            radius: 8
                        }

                        Keys.onPressed: {
                            if (event.key === Qt.Key_Return) {
                                console.log("Sent:", messageInput.text);
                                messageInput.text = "";
                            }
                        }
                    }
                    Button {
                        text: "Send"

                        onClicked: {
                            console.log("Sent via button:", messageInput.text);
                            messageInput.text = "";
                        }
                    }
                }
            }
        }
    }
}
