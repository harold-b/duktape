#!/usr/bin/env bash

rmdir -rf tmp/debug
mkdir -p tmp

py -2 tools/configure.py 				\
	--output-directory ./tmp/debug    	\
	--source-directory src-input 		\
    --config-metadata config            \
    --line-directives                   \
    --dll                               \
    -DDUK_USE_FASTINT                   \
    -DDUK_USE_ASSERTIONS                \
    -DDUK_USE_DEBUGGER_SUPPORT          \
    -DDUK_USE_INTERRUPT_COUNTER         \
    -DDUK_USE_DEBUGGER_INSPECT          \
    -DDUK_USE_DEBUGGER_DUMPHEAP         \
    -DDUK_USE_DEBUGGER_THROW_NOTIFY     \
    -DDUK_USE_JSON_STRINGIFY_FASTPATH   \
    -DDUK_USE_JSON_QUOTESTRING_FASTPATH \
    -DDUK_USE_JSON_DECSTRING_FASTPATH   \
    -DDUK_USE_JSON_DECNUMBER_FASTPATH   \
    -DDUK_USE_JSON_EATWHITE_FASTPATH    \
    -DDUK_USE_IDCHAR_FASTPATH

    #-DDUK_USE_FATAL_HANDLER(udata,msg)=MUDUK_FATAL_HANDLER( udata,msg )	\

cp -r tmp/debug/duk_config.h tmp/duk_config_debug.h