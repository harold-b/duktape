#!/usr/bin/env bash

rmdir -rf tmp/release
mkdir -p tmp

py -2 tools/configure.py 				\
	--output-directory ./tmp/release 	\
	--source-directory src-input 		\
	--config-metadata config 			\
    --line-directives                   \
    -DDUK_USE_FASTINT                   \
    -DDUK_USE_EXEC_FUN_LOCAL            \
    -DDUK_USE_VALSTACK_UNSAFE			\
    -DDUK_USE_JSON_STRINGIFY_FASTPATH   \
    -DDUK_USE_JSON_QUOTESTRING_FASTPATH \
    -DDUK_USE_JSON_DECSTRING_FASTPATH   \
    -DDUK_USE_JSON_DECNUMBER_FASTPATH   \
    -DDUK_USE_JSON_EATWHITE_FASTPATH    \
    -DDUK_USE_IDCHAR_FASTPATH           \
    -DDUK_USE_FAST_REFCOUNT_DEFAULT     \
    #-UDUK_USE_VOLUNTARY_GC              \
    #-UDUK_USE_REFERENCE_COUNTING

    #--dll								\


    #-DDUK_USE_FATAL_HANDLER(udata,msg)=MUDUK_FATAL_HANDLER( udata,msg )	\

cp -r tmp/release/duk_config.h tmp/duk_config_release.h 