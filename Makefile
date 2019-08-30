ELIXIR_IMAGE := reg.quan.io/dan/elixir

build:
	@docker build -t ${ELIXIR_IMAGE}:latest -t ${ELIXIR_IMAGE}:1.9 -t ${ELIXIR_IMAGE}:${GITHUB_SHA} -f elixir/Dockerfile .

push:
	@docker push ${ELIXIR_IMAGE}:latest
	@docker push ${ELIXIR_IMAGE}:1.9 
	@docker push ${ELIXIR_IMAGE}:${GITHUB_SHA} -f elixir/Dockerfile .
