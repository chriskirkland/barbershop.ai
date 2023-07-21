#!/usr/bin/env bash
docker run --rm \
  -v $(pwd)/:/data \
  audiveris /audiveris/Audiveris-5.3.1/bin/Audiveris -batch -output /data/output -export \
    $@
