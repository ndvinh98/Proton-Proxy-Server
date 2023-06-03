#!/bin/bash

start_proxy_cmd="pproxy -v"
cmd="/usr/bin/protonwire connect --container"

$cmd &
$start_proxy_cmd