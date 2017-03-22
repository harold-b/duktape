#!/usr/bin/env bash

rmdir -rf tmp/debug
mkdir -p tmp

py -2 tools/configure.py 				\
	--output-directory ./tmp/debug    	\
	--source-directory src-input 		\
	--config-metadata config 			\
    --line-directives                   \
	-DDUK_USE_FASTINT 					\
    -DDUK_USE_ASSERTIONS				\
    -DDUK_USE_DEBUGGER_SUPPORT			\
    -DDUK_USE_INTERRUPT_COUNTER			\
    -DDUK_USE_DEBUGGER_INSPECT			\
    -DDUK_USE_DEBUGGER_DUMPHEAP			\
    -DDUK_USE_DEBUGGER_THROW_NOTIFY     \
    -DDUK_USE_FAST_REFCOUNT_DEFAULT     \
    -UDUK_USE_REFERENCE_COUNTING        \
    -UDUK_USE_VOLUNTARY_GC

    #-DDUK_USE_FATAL_HANDLER(udata,msg)=MUDUK_FATAL_HANDLER( udata,msg )	\

cp -r tmp/debug/duk_config.h tmp/duk_config_debug.h