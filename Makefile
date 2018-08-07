default: clean install copy test zip

install: build_path
	pip install -r test_requirements.txt
	pip install -r dev_requirements.txt -t build

build_path:
	mkdir build

copy:
	cp -R src/* build/

zip:
	cd build && zip -r ../lambda.zip .

clean:
	rm -rf build
	rm -rf dist
	rm -f lambda.zip

test:
	cd build && pytest -s -v
