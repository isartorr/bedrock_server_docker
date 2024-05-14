.PHONY: build, run, clean, check_clean

build:
	docker build -t bedrock-server .

run:
	docker run -it -p 19132:19132/udp -p 19133:19133/udp -v bedrock-data:/bedrock --name bedrock-server bedrock-server

clean:
	-docker container rm bedrock-server
	sleep 1
	-docker rmi bedrock-server

