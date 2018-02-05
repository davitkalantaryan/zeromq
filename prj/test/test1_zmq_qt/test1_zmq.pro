MYZMQ = /afs/ifh.de/group/pitz/doocs/zmq
CONFIG += debug
QT -= core
QT -= gui
INCLUDEPATH += $$MYZMQ/include
LIBS += -L$$MYZMQ/lib \
    -lzmq
SOURCES += ../../../sources/test1_zmq_main.cpp
HEADERS += ../../../headers/zhelpers.h
