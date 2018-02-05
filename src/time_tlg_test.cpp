
#define     PUBLISHER_INFO      "tcp://mtcapitzcpu3:5566"

#include <sys/time.h>
#include <sys/types.h>
#include <stdlib.h>
#include <signal.h>
#include "../headers/zmq_subscriber_test.h"


struct TTelegram_L
{
    int32_t genEvent;
    int32_t sec;
    int32_t usec;
};
const int TTelegram_L_l = sizeof(TTelegram_L);
union DATA_union_L
{
        unsigned char ch[TTelegram_L_l];
        struct TTelegram_L ttelegram_L;
};
union DATA_union_L  data_unionL;
//========================================================================================

inline void Swap3Ints(void* a_pInts);
void* MainLoop(void*);
typedef void (*TYPE_FUNC_HANDLER2)(int,siginfo_t*,void*);
static void ListenerHandler(int signum, siginfo_t *, void *);

int main()
{

    //int nSigUsr1 = SIGINT;
    //printf("SIGINT = %d\n",nSigUsr1);
    //return 0;

    //sigset_t aSet;
    //sigfillset(&aSet);

    struct sigaction sig_action;
    sigemptyset(&sig_action.sa_mask);
    sig_action.sa_flags		= SA_SIGINFO;
    sig_action.sa_sigaction	= (TYPE_FUNC_HANDLER2)ListenerHandler;

    for(int i(0);i<100;++i)
        sigaction( i,   &sig_action, NULL );
    //sigaction( SIGUSR2,   &sig_action, NULL );

    MainLoop(0);

    return 0;


    /*double a1 = 5.0;
    int b1 = 5;

    bool bIsEqual = (a1 == (double)b1);*/
    ZMQsuscrb  *zmqclass;
    zmqclass = new ZMQsuscrb();
    zmqclass->Connect(PUBLISHER_INFO);
    int nbytes;
    int nIteration(0),nPrevEvent;
    int nErrors(0);

    while(1)
    {
        nbytes = zmqclass->recv(data_unionL.ch, TTelegram_L_l, 0);

        if(nbytes != TTelegram_L_l)
        {
            fprintf(stderr,"wrong size!\n");
            //exit(1);
            continue;
        }

        Swap3Ints(data_unionL.ch);

        if(nIteration)
        {
            if( (int)data_unionL.ttelegram_L.genEvent - nPrevEvent != 1 )
            {
                ++nErrors;
                fprintf(stderr,"!!!!!!!!!!!!!!!!!wrong event increment!  Old = %d, new = %d.   errors = %d\n",
                        nPrevEvent,(int)data_unionL.ttelegram_L.genEvent,nErrors);
            }
        }

        if(nIteration%360000 == 0)
        {
            printf("Iteration = %d, Errors = %d.\t",nIteration,nErrors);
            printf("EventNum = %d, sec = %d, usec = %d\n",
                   (int)data_unionL.ttelegram_L.genEvent,(int)data_unionL.ttelegram_L.sec,(int)data_unionL.ttelegram_L.usec);
        }

        ++nIteration;
        nPrevEvent = (int)data_unionL.ttelegram_L.genEvent;

    }

    return 0;
}

bool g_bPrint = true;

//void* MainLoop(void* a_pBunch)
void* MainLoop(void*)
{

        //BunchOfEvents& aBunch = *((BunchOfEvents*)a_pBunch);

#ifdef WIN32

        int nEvNum = 800000;
        int nSecond(1409141054);
        int nMcSec = 733526;

        for(int i(0);;++nEvNum,++i)
        {
                //aBunch.AddEntry(nEvNum,nSecond,nMcSec);
                nSecond += i/10;
                nMcSec += 100000;
                nMcSec %= 1000000;
        }
#else
    ZMQsuscrb  *zmqclass;
    zmqclass = new ZMQsuscrb();
    zmqclass->Connect(PUBLISHER_INFO);

    int nBytes;
    TTelegram_L aSGTT;
    int nPrevEvent;
    int nIteration(0);
    int nErrors(0);

    while(1)
    {
        nBytes = zmqclass->recv(&aSGTT, TTelegram_L_l, 0);

        if(nBytes != TTelegram_L_l)
        {
            fprintf(stderr,"wrong size!\n");
            //goto EXIT_PART1;
            continue;
        }

        Swap3Ints(&aSGTT);

        if(g_bPrint)
        {
            printf("iteration = %.5d  =>  EvNum = %d, Second = %d, Mcsecond = %d\n",
                   nIteration,aSGTT.genEvent,aSGTT.sec,aSGTT.usec);
        }

        if( (nIteration++) && (aSGTT.genEvent - nPrevEvent != 1) )
        {
            fprintf(stderr,"!!!!!!!!! Error, iterations = %d, errors = %d\n",nIteration,++nErrors);
            g_bPrint = false;
        }
        //aBunch.AddEntry(aSGTT);
        nPrevEvent = aSGTT.genEvent;
    }

    //EXIT_PART1:
    zmqclass->Close();
    delete zmqclass;
#endif

        return 0;
}


inline void Swap3Ints(void* a_pInts)
{
    char* pcInts = (char*)a_pInts;
    char cTemp;

    /////////////////////////////////////////////
    cTemp = pcInts[0];
    pcInts[0] = pcInts[3];
    pcInts[3] = cTemp;

    cTemp = pcInts[1];
    pcInts[1] = pcInts[2];
    pcInts[2] = cTemp;


    /////////////////////////////////////////////
    cTemp = pcInts[4];
    pcInts[4] = pcInts[7];
    pcInts[7] = cTemp;

    cTemp = pcInts[5];
    pcInts[5] = pcInts[6];
    pcInts[6] = cTemp;


    /////////////////////////////////////////////
    cTemp = pcInts[8];
    pcInts[8] = pcInts[11];
    pcInts[11] = cTemp;

    cTemp = pcInts[9];
    pcInts[9] = pcInts[10];
    pcInts[10] = cTemp;
}


static void ListenerHandler(int a_nSigNum, siginfo_t *, void *)
{
    printf("+++Sig Num = %d\n",a_nSigNum);

    if(a_nSigNum==SIGINT){printf("SIGINT\n");exit(0);}

    g_bPrint = g_bPrint ? false : true;
}
