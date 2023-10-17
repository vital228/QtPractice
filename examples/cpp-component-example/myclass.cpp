#include "myclass.h"
#include <QDebug>

MyClass::MyClass()
{

}
QString MyClass::getText() {
   return text;
}
void MyClass::setText(QString &newText) {
   text = newText;
   emit textChanged();
}
void MyClass::printText() {
   qDebug() << text;
}
