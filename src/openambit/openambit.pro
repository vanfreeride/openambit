#-------------------------------------------------
#
# Project created by QtCreator 2013-11-24T20:10:24
#
#-------------------------------------------------

QT       += core gui network

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

VERSION = HEAD

TARGET = openambit
TEMPLATE = app

include(movescount/include.pri)

SOURCES += main.cpp\
        mainwindow.cpp \
    devicemanager.cpp \
    settingsdialog.cpp \
    settings.cpp \
    logstore.cpp \
    logentry.cpp \
    udevlistener.cpp \
    confirmbetadialog.cpp \
    single_application.cpp

HEADERS  += mainwindow.h \
    devicemanager.h \
    settingsdialog.h \
    settings.h \
    logstore.h \
    logentry.h \
    udevlistener.h \
    confirmbetadialog.h \
    single_application.h

FORMS    += mainwindow.ui \
    settingsdialog.ui \
    confirmbetadialog.ui

INCLUDEPATH += ../libambit
QMAKE_LIBDIR += ../libambit-build

LIBS += -lambit -lqjson -ludev -lz

OTHER_FILES +=

RESOURCES += \
    resources.qrc

DEFINES += APP_VERSION=\\\"$$VERSION\\\"
