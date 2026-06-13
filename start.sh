cd mc-server
docker run -d --net=host -e SECRET_KEY=60704c038c35d60d6642ffa2daabe4dcc0fe2e73390fc643fa92900c0131a13b --name playit-agent ghcr.io/playit-cloud/playit-agent:0.17
./run.sh

echo according-unlatch.gl.joinmc.link