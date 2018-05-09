# docker-burst-plotter

This is the dockerized form of the PoC Consortum's optimized burstcoin miner.

https://github.com/PoC-Consortium/cg_obup

This is an optimized plotter, so no need for separate optimization runs.

## Usage
$ `docker run --volume /home/myuser/burstcoin/plots:/plots vangorra/docker-burst-plotter -k KEY [-x <core>] [-d <dir>] [-s <startnonce>] [-n <nonces>] [-m <staggersize>] [-t <threads>] [-a]`
  
More details on the options can be found on the creators website.
