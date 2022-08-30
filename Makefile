all-in-one: deploy-linux init-brew init-all deploy-all

deploy-all:
	@$(foreach val, $(wildcard ./setup/deploy/deploy_*.sh), bash $(val);)

deploy-linux:
	bash ./setup/deploy/deploy_linux.sh

init-all:
	@$(foreach val, $(wildcard ./setup/init/*.sh), bash $(val);)

init-brew:
	bash ./setup/init/init_homebrew.sh

	