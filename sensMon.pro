
QT += core gui
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TEMPLATE = app
TARGET = SensMon


Debug:DESTDIR = debug
Debug:OBJECTS_DIR = debug/.obj
Debug:MOC_DIR = debug/.moc
Debug:RCC_DIR = debug/.rcc
Debug:UI_DIR = debug/.ui

Release:DESTDIR = release
Release:OBJECTS_DIR = release/.obj
Release:MOC_DIR = release/.moc
Release:RCC_DIR = release/.rcc
Release:UI_DIR = release/.ui


DEFINES += _UNICODE

HEADERS	= \
    src\\comport.h \
    src\\comportcombo.h \
    src\\comportthread.h \
    src\\conwindow.h \
    src\\edge.h \
    src\\graphwindow.h \
    src\\iohandler.h \
    src\\networkview.h \
    src\\node.h \
    src\\nodedb.h \
    src\\sensmonmwnd.h \
    src\\sensorplot.h \
    src\\settingswindow.h

SOURCES	= \
    src\\comport.cpp \
    src\\comportcombo.cpp \
    src\\comportthread.cpp \
    src\\conwindow.cpp \
    src\\edge.cpp \
    src\\graphwindow.cpp \
    src\\iohandler.cpp \
    src\\main.cpp \
    src\\networkview.cpp \
    src\\node.cpp \
    src\\nodedb.cpp \
    src\\sensmonmwnd.cpp \
    src\\sensorplot.cpp \
    src\\settingswindow.cpp \

FORMS = \
    src\\settingswindow.ui \
    src\\console.ui

RESOURCES = resources\\sensMon.qrc

INCLUDEPATH = C:\\Qt\\4.8.6-vs2010\\qwt-5.2.3\\src
win32:LIBS = C:\\Qt\\4.8.6-vs2010\\qwt-5.2.3\\lib\\qwt5.lib
win32:LIBS += -lAdvapi32
win32:LIBS += -lShell32

DEFINES += QWT_DLL
