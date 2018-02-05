#ifndef  __windows_zmq_temporary_h__
#define  __windows_zmq_temporary_h__

#ifdef WIN32

#define ZMQ_PUB	1

namespace zmq
{
	class context_t
	{
	public:
		context_t(int nI):m_nContext(nI){}
	
	private:
		int m_nContext;
	};

	class socket_t
	{
	public:
		socket_t(const context_t& context, int nMode){}
		
		void bind(const char* ){}

		void send(const void* pData,size_t size,int flag){}
	};
}


#else
#endif


#endif  /* #ifndef  __windows_zmq_temporary_h__ */
