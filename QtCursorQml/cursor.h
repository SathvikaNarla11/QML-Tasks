#ifndef CURSOR_H
#define CURSOR_H

#include <QObject>
#include <QCursor>

class Cursor : public QObject
{
    Q_OBJECT
public:
    explicit Cursor(QObject *parent = nullptr);

signals:

public slots:
    void showFun();
    void moveCursor(QPointF p);
    void setCursorShape(Qt::CursorShape shape);

private:
    QCursor cursor;

};

#endif // CURSOR_H
