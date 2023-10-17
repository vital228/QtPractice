# Resource object code (Python 3)
# Created by: object code
# Created by: The Resource Compiler for Qt version 6.5.2
# WARNING! All changes made in this file will be lost!

from PySide6 import QtCore

qt_resource_data = b"\
\x00\x00\x037\
i\
mport QtQuick 2.\
9\x0aimport QtQuick\
.Window 2.2\x0aimpo\
rt myModule 1.0\x0a\
\x0aWindow {\x0a    vi\
sible: true\x0a    \
width: 640\x0a    h\
eight: 480\x0a    t\
itle: qsTr(\x22Hell\
o World\x22)\x0a    My\
Class {\x0a        \
id: myClass\x0a    \
    text: \x22My Cl\
ass Text\x22\x0a      \
  onTextChanged:\
 console.log(tex\
t)\x0a    }\x0a    Col\
umn {\x0a        an\
chors.fill: pare\
nt\x0a        Text \
{\x0a            an\
chors.horizontal\
Center: parent.h\
orizontalCenter\x0a\
            text\
: myClass.text\x0a \
       }\x0a       \
 Rectangle {\x0a   \
         height:\
 100\x0a           \
 width: 100\x0a    \
        anchors.\
horizontalCenter\
: parent.horizon\
talCenter\x0a      \
      Text { tex\
t: \x22Button\x22 }\x0a  \
          MouseA\
rea {\x0a          \
      anchors.fi\
ll: parent\x0a     \
           onCli\
cked: {\x0a        \
            myCl\
ass.printText()\x0a\
                \
    myClass.text\
 = mouse.toStrin\
g()\x0a            \
    }\x0a          \
  }\x0a        }\x0a  \
  }\x0a}\x0a\
"

qt_resource_name = b"\
\x00\x08\
\x08\x01Z\x5c\
\x00m\
\x00a\x00i\x00n\x00.\x00q\x00m\x00l\
"

qt_resource_struct = b"\
\x00\x00\x00\x00\x00\x02\x00\x00\x00\x01\x00\x00\x00\x01\
\x00\x00\x00\x00\x00\x00\x00\x00\
\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x00\x00\x00\
\x00\x00\x01mbwR\x10\
"

def qInitResources():
    QtCore.qRegisterResourceData(0x03, qt_resource_struct, qt_resource_name, qt_resource_data)

def qCleanupResources():
    QtCore.qUnregisterResourceData(0x03, qt_resource_struct, qt_resource_name, qt_resource_data)

qInitResources()
