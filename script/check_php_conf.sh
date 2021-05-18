#!/bin/bash

cat /etc/php/7.4/fpm/php.ini | grep -i 'memory_limit =' \
&& cat /etc/php/7.4/fpm/php.ini | grep -i 'max_execution_time =' \
&& cat /etc/php/7.4/fpm/php.ini | grep -i 'zlib.output_compression ='

