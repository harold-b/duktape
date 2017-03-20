#!/usr/bin/env bash

rmdir -rf tmp/debug_test
mkdir -p tmp

py -2 tools/configure.py 				\
	--output-directory ./tmp/debug_test \
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
    -DDUK_USE_DDPRINT

    #-DDUK_USE_FATAL_HANDLER(udata,msg)=MUDUK_FATAL_HANDLER( udata,msg )	\

cp -r tmp/debug_test/duk_config.h tmp/duk_config_debug_test.h