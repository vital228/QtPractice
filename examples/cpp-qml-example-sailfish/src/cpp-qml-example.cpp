#ifdef QT_QML_DEBUG
#include <QtQuick>
#endif

#include <sailfishapp.h>
#include "myclass.h"

int main(int argc, char *argv[])
{
    qmlRegisterType<MyClass>("myModule", 1, 0, "MyClass");
    return SailfishApp::main(argc, argv);
}
