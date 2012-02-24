TEMPLATE = lib
CONFIG += plugin

TARGET = $$qtLibraryTarget(declarative_explorer)
TARGETPATH = Explorer

QT += declarative sensors

SOURCES = main.cpp explorer.cpp sensoritem.cpp propertyinfo.cpp
HEADERS = explorer.h sensoritem.h propertyinfo.h

!isEmpty(EXAMPLES_PREFIX):DESTPATH=$$EXAMPLES_PREFIX/com.nokia.mt.sensor_explorer/imports/Explorer
else:DESTPATH=$$[QT_INSTALL_IMPORTS]/Explorer

target.path=$$DESTPATH
INSTALLS += target

qmldir.files=$$PWD/qmldir
qmldir.path=$$DESTPATH
INSTALLS += qmldir