#include "cursor.h"
#include <QDebug>
#include <QGuiApplication>

Cursor::Cursor(QObject *parent) : QObject(parent)
{

}

void Cursor::showFun()
{
    qDebug()<<"Called showFunction";

}

void Cursor::moveCursor(QPointF p)
{    
    qDebug()<<"moveCursor";
    qDebug()<<p.x()<<" : "<<p.y();
//    int x = p.x();
//    int y = p.y();
//    cursor.setPos(x,y);
//    qDebug()<<x<<" : "<<y;

}

void Cursor::setCursorShape(Qt::CursorShape shape)
{
    switch(shape)
    {
    case Qt::CursorShape::BusyCursor:
    {
        QGuiApplication::setOverrideCursor(QCursor(shape));
        qDebug()<<"BusyCursor";
        break;
    }
    case Qt::CursorShape::CrossCursor:
    {
        QGuiApplication::setOverrideCursor(QCursor(shape));

        qDebug()<<"CrossCursor";
        break;
    }
    default: QGuiApplication::restoreOverrideCursor();
    }
}
