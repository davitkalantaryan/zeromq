#include "../headers/zmq_subscriber_test.h"
#include <stdlib.h>


//////////////////////////////////////////////////////////////////////////////////////////////////////
ZMQsuscrb::MutexDv::MutexDv()
{
#ifdef WIN32
        m_MutexLock = CreateMutex( NULL, FALSE, NULL );
#else

        pthread_mutexattr_t attr;
        pthread_mutexattr_init( &attr );
        pthread_mutexattr_settype( &attr, PTHREAD_MUTEX_ERRORCHECK );

        pthread_mutex_init( &m_MutexLock, &attr );

        pthread_mutexattr_destroy( &attr );
#endif
}



ZMQsuscrb::MutexDv::~MutexDv()
{

#ifdef WIN32
        CloseHandle( m_MutexLock );
#else
        pthread_mutex_destroy( &m_MutexLock );
#endif

}


/*
 * EDEADLK	-	The current thread already owns the mutex.
 *
 */
int ZMQsuscrb::MutexDv::Lock()
{
#ifdef WIN32
        return WaitForSingleObject( m_MutexLock, INFINITE ) == WAIT_OBJECT_0 ? 0 : EDEADLK ;
#else
        return pthread_mutex_lock( &m_MutexLock );
#endif
}



/*
 * EINVAL	-	Mutex is not an initialized mutex.
 * EFAULT	-	Mutex is an invalid pointer.
 * EPERM	-	The calling thread does not own the mutex.
 *
 */
int ZMQsuscrb::MutexDv::UnLock()
{
#ifdef WIN32
        return ReleaseMutex( m_MutexLock ) ? 0 : EPERM;
#else
        return pthread_mutex_unlock( &m_MutexLock );
#endif
}
////////////////////////////////////////////////////////////////////////////////



///////////////////////////////////////////////////////////////////////////////
void* ZMQsuscrb::m_pContextZMQ = NULL;
ZMQsuscrb::MutexDv ZMQsuscrb::m_MutexContext;

void AtExitZMQ(void)
{
    printf("\n\n\nAtExitZMQ\n\n");
    if(ZMQsuscrb::m_pContextZMQ)
    {
        zmq_term(ZMQsuscrb::m_pContextZMQ);
        zmq_ctx_destroy(ZMQsuscrb::m_pContextZMQ);
    }
}



ZMQsuscrb::ZMQsuscrb()
        :   m_pSocketZMQ(NULL)
{
    m_MutexContext.Lock();
    if(!m_pContextZMQ)
    {
        m_pContextZMQ = zmq_ctx_new ();

        if(m_pContextZMQ)
        {
            //atexit(&AtExitZMQ);
        }
    }
    m_MutexContext.UnLock();

    if(!m_pContextZMQ)throw "No contest!";

    m_pSocketZMQ = zmq_socket (m_pContextZMQ, ZMQ_SUB);

    if(!m_pSocketZMQ)throw "No socket";

    //subscriber->setsockopt(ZMQ_SUBSCRIBE, "", 0);
    zmq_setsockopt (m_pSocketZMQ, ZMQ_SUBSCRIBE, NULL, 0);
}



ZMQsuscrb::~ZMQsuscrb()
{
    ZMQsuscrb::Close();
    //zmq_ctx_term()
}



int ZMQsuscrb::Connect(const char* a_cpcPublisher)
{
    return zmq_connect (m_pSocketZMQ, a_cpcPublisher);
}



void ZMQsuscrb::Close()
{
    if(m_pSocketZMQ)zmq_close(m_pSocketZMQ);
}

