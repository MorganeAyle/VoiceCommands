#-------------------------------------------------
#
# Project created by QtCreator 2018-04-03T11:51:05
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = VoiceCommands
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

CONFIG += console

SOURCES += \
        main.cpp \
        mainwindow.cpp \
    speech.cpp \
    commands.cpp \
    tetriswindow.cpp \
    action.cpp

HEADERS += \
        mainwindow.h \
    speech.h \
    commands.h \
    tetriswindow.h \
    action.h \
    thread2.h

FORMS += \
        mainwindow.ui \
    tetriswindow.ui

unix:!macx: LIBS += -L/usr/local/lib/ -lpocketsphinx
unix:!macx: LIBS += -L/usr/local/lib/ -lsphinxbase
unix:!macx: LIBS += -L/usr/local/lib/ -lsphinxad

INCLUDEPATH += $$PWD/../cmusphinx/pocketsphinx/include
DEPENDPATH += $$PWD/../cmusphinx/pocketsphinx/include

INCLUDEPATH += $$PWD/../cmusphinx/sphinxbase/include
DEPENDPATH += $$PWD/../cmusphinx/sphinxbase/include

unix:!macx: PRE_TARGETDEPS += /usr/local/lib/libpocketsphinx.a
unix:!macx: PRE_TARGETDEPS += /usr/local/lib/libsphinxad.a
unix:!macx: PRE_TARGETDEPS += /usr/local/lib/pkgconfig
