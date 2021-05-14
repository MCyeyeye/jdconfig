#!/bin/bash


cookieArr=(
"a"
"b"
"c"
)

cookieStr=""
for cookie in "${cookieArr[@]}" ; do
    cookieStr="${cookieStr}&${cookie}"
done

export JD_COOKIE="\"${cookieStr:1}\""
