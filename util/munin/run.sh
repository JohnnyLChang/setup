#!/bin/bash

docker run -d --name munin \
  -p 8090:8080 \
  -v /volume2/docker/munin/data/log:/var/log/munin \
  -v /volume2/docker/munin/data/lib:/var/lib/munin \
  -v /volume2/docker/munin/data/run:/var/run/munin \
  -v /volume2/docker/munin/data/cache:/var/cache/munin \
  -v /volume2/docker/munin/data/resolv.conf:/etc/resolv.conf \
  -e MUNIN_USERS='http-user johnny' \
  -e MUNIN_PASSWORDS='secret-password Ynnhoj' \
  -e NODES="t460s:t460.jlc.com pi:pi.jlc.com pizero:pizero.jlc.com host:127.0.0.1 t430:t430.jlc.com ds216:z.jlc.com" \
  -e SNMP_CLIENTS="y.jlc.com:y.jlc.com:public z.jlc.com:z.jlc.com:public 10.10.0.254:10.10.0.254:public" \
  munin-server
