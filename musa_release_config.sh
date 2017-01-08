#!/usr/bin/env bash

py -2 tools/configure.py 				\
	--output-directory ./tmp/release 	\
	--source-directory src-input 		\
	--config-metadata config 			\
    --dll								\
	-DDUK_USE_FASTINT


    #-DDUK_USE_FATAL_HANDLER(udata,msg)=MUDUK_FATAL_HANDLER( udata,msg )	\