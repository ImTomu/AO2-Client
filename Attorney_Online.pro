QT += core gui widgets multimedia network

TARGET = Attorney_Online
TEMPLATE = app

VERSION = 2.6.1.0

INCLUDEPATH += $$PWD/include
DESTDIR = $$PWD/bin
OBJECTS_DIR = $$PWD/build
MOC_DIR = $$PWD/build

SOURCES += $$files($$PWD/src/*.cpp)
HEADERS += $$files($$PWD/include/*.h)
LIBS += -L$$PWD/lib -lbass -ldiscord-rpc
macx:LIBS += -framework CoreFoundation -framework Foundation -framework CoreServices

CONFIG += c++14

RESOURCES += resources.qrc

win32:RC_ICONS = resource/logo.ico
macx:ICON = resource/logo.icns