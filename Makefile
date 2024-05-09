CC = go

all:
	mkdir build/
	export CGO_ENABLED=0
	go install mvdan.cc/garble@latest
	garble -literals -tiny -seed=random build -tags=purego

clean:
	rm -rf build/
