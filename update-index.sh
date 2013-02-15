#!/bin/bash

cd `dirname $0`
BASE=`pwd`

(
	cat head.txt ; 
	(find com -type f | sed 's#.*#<a href="./\0">./\0</a><br/>#' ) ; 
	cat tail.txt
) > index.html
