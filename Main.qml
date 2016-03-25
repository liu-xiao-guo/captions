import QtQuick 2.4
import Ubuntu.Components 1.2
import QtQuick.Layouts 1.1

/*!
    \brief MainView with a Label and Button elements.
*/

MainView {
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"

    // Note! applicationName needs to match the "name" field of the click manifest
    applicationName: "captions.liu-xiao-guo"

    /*
     This property enables the application to change orientation
     when the device is rotated. The default is false.
    */
    //automaticOrientation: true

    // Removes the old toolbar and enables new features of the new header.
//    useDeprecatedToolbar: false

    width: units.gu(60)
    height: units.gu(85)

    Page {
        title: i18n.tr("captions")

        ListItem {
            RowLayout {
                anchors.fill: parent
                spacing: units.gu(5)

                Captions {
                    title.text: "Caption1"
                    subtitle.text: "Subtitle text 1111111111111111111"
                    // attached properties of an Item type property
                    // can be changed only with assignment
                    Component.onCompleted: subtitle.Layout.alignment = Qt.AlignRight
                }
                Captions {
                    captionStyle: Ubuntu.SummaryCaptionStyle
                    title.text: "Caption2"
                    subtitle.text: "Text"
                }

                Captions {
                    title.text: "Caption3"
                    subtitle.text: "Subtitle"
                    Label {
                        text: "third line"
                        fontSize: "large"
                    }
                }
            }

        }
    }
}

