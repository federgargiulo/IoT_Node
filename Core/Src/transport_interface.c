//File modificato da me da un file esistente

#include "transport_interface.h"
#include <stdio.h>
#include "Cbmc.h"


int32_t TransportInterfaceSend( NetworkContext_t * pNetworkContext,
                                    void * pBuffer,
                                    size_t bytesToSend )
{
    /* The number of tries to send the message before this invocation */
    static int32_t tries = 0;
    /* The number of bytes considered sent after this invocation */
    int32_t ret;

//    __CPROVER_assert( pBuffer != NULL,
//                      "TransportInterfaceSendStub pBuffer is NULL" );
    if(pBuffer!=NULL){
        	printf("pBuffer is NULL");
        	return 0;
        }
    /****************************************************************
    * The send method sends some portion of the message and returns the
    * total number of bytes in the prefix sent so far.  The send method
    * is used in a loop of the form
    *
    *   while ( send( conn, msg, len )  < len ) { ... }
    *
    * We need to bound the number of loop iterations, so we need to
    * bound the number of times it takes for send to finish sending the
    * message.  We use a static variable 'tries' to count the number of
    * times send has tried to send the message, and we force send to
    * finish the message after MAX_TRIES tries.
    ****************************************************************/

    if( bytesToSend <= INT32_MAX )
    {
    	// __CPROVER_assume( ret <= ( int32_t ) bytesToSend );
    	if(ret <= ( int32_t ) bytesToSend  )
    		ret=bytesToSend;
    }

    tries++;

    if( tries >= MAX_NETWORK_SEND_TRIES )
    {
        tries = 0;

        /* In order to stop the looping on send we must return an error or
         * bytesToSend. We return an error instead of bytesToSend because
         * bytesToSend may be a value larger than INT32_MAX. */
        ret = -1;
    }

    return ret;
}

int32_t TransportInterfaceReceive( NetworkContext_t * pNetworkContext,
                                       void * pBuffer,
                                       size_t bytesToRecv )
{
    /* The number of bytes considered received after this invocation */
    int32_t ret=0;

//    __CPROVER_assert( pBuffer != NULL,
//                      "TransportInterfaceReceiveStub pBuffer is NULL" );
    if(pBuffer!=NULL){
    	printf("pBuffer is NULL");
    	return 0;
    }

//    if( bytesToRecv <= INT32_MAX )
//    {
//        __CPROVER_assume( ret <= ( int32_t ) bytesToRecv );
//    }
    if( bytesToRecv <= INT32_MAX )
       {
       	if(ret <= ( int32_t ) bytesToRecv  )
       		ret=bytesToRecv;
       }
    return ret;
}
