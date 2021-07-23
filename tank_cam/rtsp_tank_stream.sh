#!/bin/bash

#Stream using rtsp (only kind of works)
#raspivid -op 150 -v -o - -t 0 -w 1640 -h 1232 -fps 30 -b 1000000 | cvlc -vvv stream:///dev/stdin --sout '#rtp{sdp=rtsp://:8554/stream}' :demux=h264

#Stream using http (more reliable... no downsides yet...)
#raspivid -op 150 -v -o - -t 0 -w 1640 -h 1232 -fps 30 | cvlc -vvv stream:///dev/stdin --sout '#standard{access=http, mux=ts, dst=:8160}' :demux=h264
raspivid -op 150 -ex -v -o - -t 0 -w 1920 -h 1080 -fps 30 | cvlc -vvv stream:///dev/stdin --sout '#standard{access=http, mux=ts, dst=:8160}' :demux=h264

#-rot 180
