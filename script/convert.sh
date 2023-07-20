#!/usr/bin/env bash
docker run --rm \
  -v $(pwd)/:/data \
  audiveris /audiveris/Audiveris-5.3.1/bin/Audiveris -batch -output /data/output -export \
    $@

    #-option org.audiveris.omr.sheet.BookManager.useCompression=false \
    #-option org.audiveris.omr.sheet.BookManager.useOpus=true \
