FROM alpine:3.7

RUN apk --no-progress update && \
	apk --no-cache add --virtual=build-dependencies git make gcc g++ && \
	apk --no-cache add bash && \
	git clone https://github.com/PoC-Consortium/cg_obup /usr/src/cg_obup && \
	cd /usr/src/cg_obup && \
	git reset --hard 177015beb923a4e6afb47a816a5490e326e5af84 && \
	make && \
	apk del --purge build-dependencies

WORKDIR /plots

ENTRYPOINT ["/usr/src/cg_obup/plot64"]
