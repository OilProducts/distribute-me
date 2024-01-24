
get-deps:
	poetry export -f requirements.txt --output requirements.txt

	# Forces source distributions, could be removed if there are issues compiling
	pip3 download -r requirements.txt --dest deps --no-binary :all:

build: get-deps
	poetry build -f wheel
	cp -r deps/ dist/
	cd ./dist && tar -czvf ../dist.tar.gz .

clean:
	rm -rf dist deps
	rm -rf dist.tar.gz