from PySide6.QtCore import QObject, Slot, Signal, Property
from PySide6.QtQml import QmlElement


QML_IMPORT_NAME = "stringModule"
QML_IMPORT_MAJOR_VERSION = 1

@QmlElement
class ListStrings(QObject):
    listChanged = Signal()

    def __init__(self):
        QObject.__init__(self)
        self.my_list = []
        self.listChanged.emit()

    @Slot(str)
    def addString(self, s):
        self.my_list.append(s.lower())
        self.listChanged.emit()

    @Slot()
    def deleteString(self):
        self.my_list.pop()
        self.listChanged.emit()

    def getValue(self):
        sum = ""
        for elem in self.my_list:
            sum+=elem + ", "
        return sum[:-2].capitalize()
    
    list = Property(str, fget=getValue, notify=listChanged)