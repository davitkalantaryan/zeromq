#ifndef __zmq_publisher_h__
#define __zmq_publisher_h__

#ifdef WIN32
#include "windows_zmq_temporary.h"
#else
#include "zmq.hpp"
#endif


class ZMQ_Publisher
{
public:
	ZMQ_Publisher(const char* bindAddress);

	~ZMQ_Publisher();

	void sendData(const void* pData, size_t size);

private:
	zmq::context_t	m_context;
	zmq::socket_t	m_socket;

};


#endif  /* #ifndef __zmq_publisher_h__ */
