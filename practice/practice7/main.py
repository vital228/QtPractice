import sys
from pathlib import Path

from PySide6.QtCore import QObject, Slot, Signal, Property
from PySide6.QtGui import QGuiApplication
from PySide6.QtQml import QQmlApplicationEngine, QmlElement
from liststrings import ListStrings

QML_IMPORT_NAME = "counterModule"
QML_IMPORT_MAJOR_VERSION = 1


@QmlElement
class Counter(QObject):
    valueChanged = Signal()

    def __init__(self):
        QObject.__init__(self)
        self.my_value = 0
        self.valueChanged.emit()

    @Slot()
    def increment(self):
        self.my_value += 1
        self.valueChanged.emit()

    def getValue(self):
        return self.my_value
    
    def setValue(self, new_value):
        self.my_value = new_value
        self.valueChanged.emit()
    
    @Slot()
    def reset(self):
        self.my_value = 0
        self.valueChanged.emit()

    value = Property(int, fget=getValue, fset=setValue, freset=reset, notify=valueChanged)




if __name__ == '__main__':
    app = QGuiApplication(sys.argv)
    engine = QQmlApplicationEngine()

    qml_file = Path(__file__).parent / 'view.qml'
    engine.load(qml_file)

    if not engine.rootObjects():
        sys.exit(-1)

    sys.exit(app.exec())
