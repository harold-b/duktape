#!/usr/bin/env bash

py -2 tools/configure.py 				\
	--output-directory ./tmp/configs 	\
	--source-directory src-input 		\
	--config-metadata config 			\
    --dll								\
	-DDUK_USE_FASTINT 					\
    -DDUK_USE_ASSERTIONS				\
    -DDUK_USE_DEBUGGER_SUPPORT			\
    -DDUK_USE_INTERRUPT_COUNTER			\
    -DDUK_USE_DEBUGGER_INSPECT			\
    -DDUK_USE_DEBUGGER_DUMPHEAP			\
    -DDUK_USE_DEBUGGER_THROW_NOTIFY

    #-DDUK_USE_FATAL_HANDLER(udata,msg)=MUDUK_FATAL_HANDLER( udata,msg )	\