MYZMQ = /afs/ifh.de/group/pitz/doocs/zmq

# TEMPLATE = lib
CONFIG += debug

# DEFINES += LINUX
DEFINES += ___QT___
INCLUDEPATH += $$MYZMQ/include
LIBS += -L$$MYZMQ/lib \
    -lzmq
QT -= core
QT -= gui
SOURCES += ../../../sources/time_tlg_test.cpp \
    ../../../sources/zmq_subscriber_test.cpp
HEADERS += ../../../headers/zmq_subscriber_test.h
