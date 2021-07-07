

dev:
	yarn lerna run dev --stream --parallel

build-demo:
	yarn lerna run build --scope @celo-tools/use-contractkit --stream
	yarn lerna run build --scope example --stream

publish:
	cd packages/use-contractkit && yarn build && npm version patch && npm publish --public

.PHONY: dev build-demo publish