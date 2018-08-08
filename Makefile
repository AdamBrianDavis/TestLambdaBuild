default: clean install copy test

install: build_path
	pip install -r test_requirements.txt
	pip install -r dev_requirements.txt -t build

build_path: clean
	mkdir dist
	mkdir build

copy: install
	cp -R src/* build/
	cp serverless.yml build/

zip:
	cd build && zip -r ../dist/lambda.zip .

clean:
	rm -rf build
	rm -rf dist

test: copy
	cd build && pytest -s -v

deploy: test
	npm install -g serverless
	cd build; sls deploy -v
