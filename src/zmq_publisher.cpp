//#include "stdafx.h"
#include "../headers/zmq_publisher.h"



ZMQ_Publisher::ZMQ_Publisher(const char* a_pccBindAddress)
	:	m_context(1),
		m_socket(m_context,ZMQ_PUB)
{
	m_socket.bind(a_pccBindAddress);
}



ZMQ_Publisher::~ZMQ_Publisher()
{
}



void ZMQ_Publisher::sendData(const void* a_pData, size_t a_unSize)
{
	m_socket.send(a_pData,a_unSize,0);
}
