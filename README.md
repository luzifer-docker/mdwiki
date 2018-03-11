# luzifer-docker / mdwiki

Run MDWiki in a Docker container

## Usage

```bash
## Build container (optional)
$ docker build -t luzifer/mdwiki .

## Create some files in the data path
$ tree .
.
├── config.json
├── index.md
└── navigation.md

0 directories, 3 files

## Execute container
$ docker run --rm -ti -v $(pwd):/data luzifer/mdwiki
```
