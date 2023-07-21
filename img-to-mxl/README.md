Tools for converting PDF/JPG images of sheet music into MusicXML.  Uses a dockerized version of [Audiveris](https://github.com/Audiveris/audiveris).

### Requirements

[Docker](https://docs.docker.com/engine/install/)

### Example Usage

```
docker build -t audiveris .
script/convert.sh examples/HeartOfMyHeart.pdf
open output/HeartofMyHeart.mxl
```
